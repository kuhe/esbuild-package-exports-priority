.PHONY: esbuild

esbuild:
	npx esbuild ./source-code.js --outfile=./built-file-node.js --bundle --platform=node
	npx esbuild ./source-code.js --outfile=./built-file-browser.js --bundle --platform=browser
	node ./built-file-node
	node ./built-file-browser
