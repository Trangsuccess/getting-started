robot --N Firefox --V BROWSER:Firefox --V  ENVIRONMENT:QA --d results/ %* tests
robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:STAGING --d results/ %* tests
robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:PRO --d results/ %* tests
robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:QA --d results/ %* tests