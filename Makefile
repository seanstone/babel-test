default: dist/main.js

dist/%.js: %.js
	mkdir -p $(@D)
	./node_modules/.bin/babel $< -o $@

prep:
	npm i --save-dev @babel/core @babel/cli @babel/plugin-proposal-pipeline-operator

clean:
	rm -rf dist/
