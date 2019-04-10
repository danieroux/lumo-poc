(ns tech.matterindustries.titan.gateway.core
  (:require [fs]
            [cognitect.transit :as t]
            [mqtt]))

(println (t/write (t/writer :json-verbose) {:namespace/my-key "woot"}))
