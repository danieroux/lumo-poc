(ns tech.matterindustries.titan.gateway.core
  (:require [fs]
            [cognitect.transit :as t]
            [mqtt]))

(t/write (t/writer :json) {:namespace/my-key "woot"})
(println "Winnign")
