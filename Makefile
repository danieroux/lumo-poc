clean:
	rm -rf dist 3rd-party
	mkdir 3rd-party

run:
	node dist/titan-gateway.js

jars-as-dependencies: clean
	lumo --local-repo libs/ --classpath src --dependencies com.cognitect/transit-js:0.8.846,com.cognitect/transit-cljs:0.8.256 build.cljs

jars-in-classpath: clean
	lumo --classpath src:libs/com/cognitect/transit-js/0.8.846/transit-js-0.8.846.jar:libs/com/cognitect/transit-cljs/0.8.256/transit-cljs-0.8.256.jar build.cljs

jars-unpacked: clean
	unzip -o -d 3rd-party libs/com/cognitect/transit-js/0.8.846/transit-js-0.8.846.jar
	unzip -o -d 3rd-party libs/com/cognitect/transit-cljs/0.8.256/transit-cljs-0.8.256.jar
	lumo --verbose --classpath src:3rd-party build.cljs