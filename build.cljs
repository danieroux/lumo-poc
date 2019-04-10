(require '[lumo.build.api :as b])

(b/build
 (b/inputs "src" "3rd-party")
 {:main          'tech.matterindustries.titan.gateway.core
  :output-to     "dist/titan-gateway.js"
  :output-dir    "dist/out"
  :optimizations :none
  :target        :nodejs})

