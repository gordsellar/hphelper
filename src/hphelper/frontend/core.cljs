(ns hphelper.frontend.core
  (:require [taoensso.timbre :as log]
            [reagent.core :as reagent :refer [atom]]
            [ajax.core :refer [GET POST] :as ajax]
            [hphelper.frontend.chargen]
            [hphelper.frontend.play]
            [hphelper.frontend.shared :refer [wrap-context add-button-size] :as shared]
            ))

(enable-console-print!)

(log/info "Page Load Begin")

;; define your app data so that it doesn't get over-written on reload

;; TODO change back to defonce when required
(def app-state (atom
                 {}
                 )
  )
(defonce system-info
  (atom {}
        )
  )

(defn front
  "The first container"
  []
  (fn []
    (let [p (:page @system-info)]
      [:div {:class "container"}
       ;; Page Selection
       [:div {:class "navbar navbar-default navbar-fixed-top"}
        [:div {:class "container"}
         [:div {:class "navbar-header"}
          (shared/switcher-toolbar system-info
                                   [:page]
                                   [[:character "Character Tools"] [:scenario "Scenario Tools"]
                                    [:sector "Sector Tools"] [:play "Play Paranoia"]
                                    ]
                                   )
          [shared/user-bar-component]
          ]
         ]
        ]
       ;; Page display
       [:div {:class "container"}
        [:div {:class "page-header"}
         [:br] [:br]
         (case p
           :character [hphelper.frontend.chargen/character-page]
           :scenario [:div "Scenario not implemented"]
           :sector [:div "Sector not implemented"]
           :play [hphelper.frontend.play/play-component]
           [:div "Please make a page selection above"]
           )
         ]
        ]
       ;; Debug data
       [:div
        (shared/init)
        ]
       ]
      )
    )
  )


(reagent/render-component [front]
                          (. js/document (getElementById "app")))

(defn on-js-reload []
  ;; optionally touch your app-state to force rerendering depending on
  ;; your application
  ;; (swap! app-state update-in [:__figwheel_counter] inc)
)
