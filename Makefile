MODULE=nhk-news-alexa
all:
	node index.js
	zip -r -q ${MODULE} index.js  node_modules
	aws lambda update-function-code --function-name "nhk-news-alexa" --zip-file fileb://${MODULE}.zip

install-module:
	npm install request-promise
	npm install request
	npm install xmljson
