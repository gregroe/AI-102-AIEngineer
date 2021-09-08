@echo off

rem Set values for your Language Understanding app
set app_id=12b01175-cf78-4877-83f7-758caf38eb1f
set endpoint=https://cogsvc-gjr.cognitiveservices.azure.com/
set key=815395939c664f0ab3214fad79c4d461

rem Get parameter and encode spaces for URL
set input=%1
set query=%input: =+%

rem Use cURL to call the REST API
curl -X GET "%endpoint%/luis/prediction/v3.0/apps/%app_id%/slots/production/predict?subscription-key=%key%&log=true&query=%query%"