Alexa 用の「NHKニュース(15分以上版, 非公式)」フラッシュニュースのソースです。

index.js : AWS lambdaのソース
Makefile:  AWS lambdaにuploadするzipを作成するMakefile

当初はAWS lambdaで作成しましたが、lambdaがコールドスタート時には
Alexa skillのタイムアウトに達してしまうため、Cloud Functionsで
ほぼ同じコードで対応しました。lambdaで実現するためには定期的な
warmupなどが必要です。

