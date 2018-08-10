MODULE=nhk-news-alexa
all:
	zip -r -q ${MODULE} index.js  node_modules
	aws s3 --profile s3-upload-lambda cp ${MODULE}.zip s3://sanpei/${MODULE}/
	echo https://s3-ap-northeast-1.amazonaws.com/sanpei/${MODULE}/${MODULE}.zip

install-module:
	npm install request-promise
	npm install request
	npm install xmljson
