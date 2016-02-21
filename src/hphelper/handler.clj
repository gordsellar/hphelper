(ns hphelper.handler
  (:require [compojure.core :refer :all]
            [compojure.route :as route]
            [ring.middleware.defaults :refer [wrap-defaults site-defaults]]
            [clojure.tools.logging :as log]
            [clojure.data.json :as json]
            [hphelper.chargen.generator :as cgen]
            [hphelper.scengen.scenform :as sform]
            [hphelper.scengen.generator :as sgen]
            [hphelper.scengen.print :as sprint]
            [hphelper.scengen.select :as ssel]
            [hphelper.shared.saveload :as sl]
            [hiccup.core :refer :all]
            )
  (:gen-class))

(defroutes app-routes
  (GET "/char/" [] (cgen/html-print-sheet-one-page (cgen/create-character)))
  (GET "/scen/" {params :params baseURL :context} 
       (if (params :scen_id)
         (ssel/print-crisis-page (params :scen_id) baseURL)
         (ssel/print-select-page baseURL)))
  (GET "/scen/gen/" [] (sform/html-select-page))
  (POST "/scen/gen/"
        {params :params baseURL :context}
        (-> params
            (sform/from-select-to-scenmap)
            (sgen/create-scenario)
            (sl/save-scen-to-db)
            (ssel/print-crisis-page baseURL)))
  (GET "/scen/print/" {params :params}
       ;(prn-str (keys params)))
       (sprint/html-print-optional (sl/load-scen-from-db (params :scen_id)) (keys params)))
  (GET "/test/" stuff
       (prn-str stuff))
  (route/not-found
   (html [:html
          [:body
           [:a {:href "/scen/"} "Scenario Generator"][:br]
           [:a {:href "/char/"} "Character Generator"][:br]
           [:br]
           [:a {:href "https://github.com/lsenjov/hphelper"} "Source Code"][:br]
           ]]))
  )

(def app
  (-> app-routes
      (wrap-defaults site-defaults)
      ring.middleware.session/wrap-session
      )
  )
