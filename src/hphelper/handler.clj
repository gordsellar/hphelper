(ns hphelper.handler
  (:require [compojure.core :refer :all]
            [compojure.route :as route]
            [ring.middleware.defaults :refer [wrap-defaults api-defaults]]
            [taoensso.timbre :as log]
            [clojure.data.json :as json]

            ;; Character handling
            [hphelper.chargen.generator :as cgen]
            [hphelper.chargen.charform :as cform]
            [hphelper.chargen.print :as cprint]
            [hphelper.chargen.select :as csel]

            ;; Scenario handling
            [hphelper.scengen.scenform :as sform]
            [hphelper.scengen.generator :as sgen]
            [hphelper.scengen.print :as sprint]
            [hphelper.scengen.select :as ssel]
            [hphelper.shared.saveload :as sl]
            [hiccup.core :refer :all]

            ;; Sector Generator
            [hphelper.sectorgen.generator :as secgen]

            ;; Live paranoia
            [hphelper.live.view :as lview]
            [hphelper.live.api :as lapi]

            ;; For hiding items from players
            [hphelper.shared.encrypt :as c]

            ;; Since this will slowly be changing to an api, json is coming
            [clojure.data.json :as json]

            ;; Allowing cross-site requests
            [ring.middleware.cors :refer [wrap-cors]]

            ;; For turning on and off asserts
            [clojure.spec :as s]
            )
  (:gen-class))

(log/set-level! :trace)

(defn- parse-long
  "Parses a long, returns 0 if fails"
  [^String i]
  (try (Long/parseLong i)
       (catch NumberFormatException e
         (log/error "parse-long: could not parse:" i "Returning 0 instead.")
         0)
       )
  )

(defroutes
  app-routes
  ;; CHARACTERS
  ;; Show page to select from list or create new character
  (GET "/char/" {params :params baseURL :context}
    (if (:char_id params)
      (cprint/html-print-sheet-one-page (sl/load-char-from-db (:char_id params)))
      (csel/print-select-page baseURL)))
  ;; Select options to create a new character
  (GET "/char/gen/" {baseURL :context}
    (cform/html-select-page))
  ;; Create a new character from the options above and save it
  (POST "/char/gen/"
        {params :params}
    (html [:div
           (-> params
               (cform/convert-to-char)
               (cgen/create-character)
               (sl/save-char-to-db)
               (sl/load-char-from-db)
               (cprint/html-print-sheet-one-page))
           ]))
  ;; Display a character
  (GET "/char/print/" {params :params}
    (cprint/html-print-sheet-one-page (sl/load-char-from-db (:char_id params))))

  ;; SCENARIOS
  ;; Show page to create a new scenario, or select a partially completed or fully completed scenario
  ;; If contains a :scen_id, loads completed scenario and allows options for printing parts or all
  (GET "/scen/" {params :params baseURL :context}
    (if (params :scen_id)
      (ssel/print-crisis-page (params :scen_id) baseURL)
      (ssel/print-select-page baseURL)))
  ;; Show page to create a new scenario
  (GET "/scen/gen/" {baseURL :context} (sform/html-select-page baseURL))
  ;; Create a brand new scenario without programmers picked
  (POST "/scen/gen/"
        {params :params baseURL :context}
    (-> params
        (sform/from-select-to-scenmap)
        (sgen/create-scenario)
        (sl/save-scen-to-db)
        ((partial sform/html-scen-to-full-page baseURL))))
  ;; Get scenario without programmers in order to pick programmers
  (GET "/scen/full/" {params :params baseURL :context}
    (sform/html-scen-to-full-page baseURL (:scen_id params)))
  ;; Add programmers to scenario and create a new record
  (POST "/scen/full/" {params :params baseURL :context}
    (-> params
        (sform/from-scenmap-to-full)
        (sl/save-fullscen-to-db)
        (ssel/print-crisis-page baseURL)))
  ;; Prints an entire scenario with options, including sheets for each character if desired
  (GET "/scen/print/" {params :params}
    (sprint/html-print-optional (sl/load-fullscen-from-db (params :scen_id)) (keys params)))
  ;; Prints a single session sheet for a character for a specific character
  (GET "/scen/print/char/" {params :params}
    (log/trace "Char sheet params:" params)
    (let [scen (sl/load-fullscen-from-db (Integer/parseInt (:scen_id params)))]
      (println (:hps scen))
      (sprint/html-print-player-sheet scen ((:hps scen) (Integer/parseInt (:p_id params))))))

  ;; Hacky way to print a player's entire player sheet
  (GET "/player/:scen_id/:p_id/" {{scen_id :scen_id p_id :p_id} :params baseURL :context}
      (let [scen (sl/load-fullscen-from-db (c/int-show (Integer/parseInt scen_id)))]
         (sprint/html-print-player-sheet scen ((:hps scen) (c/int-show (Integer/parseInt p_id))))))
  ;; Prints the minion sheet from a single scenario
  (GET "/minions/:scen_id/" {{scen_id :scen_id} :params baseURL :context}
       (sprint/html-print-optional (sl/load-fullscen-from-db (c/int-show (Integer/parseInt scen_id))) '(:minions)))

  ;; SECTORGEN
  ;; Prints 7 randomly generated sectors
  (GET "/sectorgen/" []
       (secgen/html-print-neighbours 7))

  ;; LIVE
  (GET "/live/new/:scen_id/" {{scen_id :scen_id} :params baseURL :context}
       (lview/new-game baseURL scen_id))
  (GET "/live/view/:uuid/" {{uid :uuid} :params baseURL :context}
       (lview/view-game baseURL uid))
  (GET "/live/view/:uuid/:confirm/" {{uid :uuid confirm :confirm} :params baseURL :context}
       (lview/edit-game baseURL uid confirm))
  (GET "/live/view/:uuid/:confirm/:index/:amount/"
       {{uid :uuid confirm :confirm index :index amount :amount} :params baseURL :context}
       (lview/edit-game baseURL uid confirm index amount))
  (GET "/live/playerview/:guid/:uuid/"
       {{guid :guid uuid :uuid} :params baseURL :context}
       (lview/view-game-player baseURL guid uuid))

  ;; API
  ;; Public endpoints
  (GET "/api/public/:gameUuid/updates/:lastUpdated/"
       {{gameUuid :gameUuid userUuid :userUuid lastUpdated :lastUpdated} :params}
       (json/write-str (lapi/get-updated-public gameUuid (parse-long lastUpdated))))
  (GET "/api/public/:gameUuid/indicies/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (json/write-str (lapi/get-indicies gameUuid)))
  (GET "/api/public/:gameUuid/news/" {{gameUuid :gameUuid userUuid :userUuid} :params} (json/write-str (lapi/get-news gameUuid)))
  (GET "/api/public/:gameUuid/cbay/" {{gameUuid :gameUuid userUuid :userUuid} :params} (json/write-str (lapi/get-cbay gameUuid)))
  (GET "/api/public/:gameUuid/access/" {{gameUuid :gameUuid userUuid :userUuid} :params} (json/write-str (lapi/get-current-access gameUuid)))
  (GET "/api/public/:gameUuid/minions/" {{gameUuid :gameUuid userUuid :userUuid} :params} (json/write-str (lapi/get-minions gameUuid)))

  ;; Player endpoints
  (GET "/api/player/:gameUuid/:userUuid/updates/:lastUpdated/"
       {{gameUuid :gameUuid userUuid :userUuid lastUpdated :lastUpdated} :params}
       (json/write-str (lapi/get-updated-player gameUuid userUuid (parse-long lastUpdated))))
  (GET "/api/player/:gameUuid/:userUuid/charsheet/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (json/write-str (lapi/get-player-character-sheet gameUuid userUuid)))
  (GET "/api/player/:gameUuid/:userUuid/societymissions/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (json/write-str (lapi/get-player-society-missions gameUuid userUuid)))
  (GET "/api/player/:gameUuid/:userUuid/minions/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (json/write-str (lapi/get-minions gameUuid userUuid)))

  ;; Admin endpoints
  (GET "/api/admin/:gameUuid/:userUuid/debug/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (lapi/admin-debug gameUuid userUuid))
  (GET "/api/admin/:gameUuid/:userUuid/valid/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (lapi/admin-validate-spec gameUuid userUuid))
  (GET "/api/admin/:gameUuid/:userUuid/modify-index/:ind/:amount/"
       {{gameUuid :gameUuid userUuid :userUuid ind :ind amount :amount} :params}
       (lapi/admin-modify-index gameUuid userUuid ind amount))
  (GET "/api/admin/:gameUuid/:userUuid/minions/"
       {{gameUuid :gameUuid userUuid :userUuid} :params}
       (json/write-str (lapi/get-minions gameUuid userUuid)))
  (GET "/api/admin/:gameUuid/:userUuid/set-sg-owner/:sgid/:new-owner/"
       {{gameUuid :gameUuid userUuid :userUuid sgid :sgid newOwner :new-owner} :params}
       (json/write-str (lapi/admin-set-sg-owner gameUuid userUuid sgid newOwner)))

  ;; OTHER
  ;; Simple directs to the above
  (GET "/" {baseURL :context}
    (html [:html
           [:body
            [:a {:href (str baseURL "/scen/")} "Scenario Generator"][:br]
            [:a {:href (str baseURL "/char/")} "Character Generator"][:br]
            [:a {:href (str baseURL "/sectorgen/")} "Sector Generator"][:br]
            [:br]
            [:a {:href "https://github.com/lsenjov/hphelper"} "Source Code"][:br]
            ]]))

  ;; Turn on or off trace logging
  (GET "/admin/tracking/trace/" [] (do (log/set-level! :trace) "Logging set to trace."))
  (GET "/admin/tracking/info/" [] (do (log/set-level! :info) "Logging set to info."))
  (GET "/admin/spec/on/" [] (do (s/check-asserts true) "Asserts turned on."))
  (GET "/admin/spec/off/" [] (do (s/check-asserts false) "Asserts turned off."))
  (route/resources "/")
  (route/not-found
    (json/write-str {:status "error" :message "Invalid endpoint"}))
  )

(def app
  (-> app-routes
      (wrap-defaults api-defaults)
      ring.middleware.session/wrap-session
      ;; Allows cross-site requests for development purposes. Eventually will remove
      (wrap-cors #".*")
      )
  )
