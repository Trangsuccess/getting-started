robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:STAGING --outputdir results ./tests
robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:PRO --outputdir results ./tests
robot --name Chrome --variable BROWSER:chorme --variable  ENVIRONMENT:QA --outputdir results ./tests
robot --name Firefox --variable BROWSER:Firefox --variable  ENVIRONMENT:STAGING --outputdir results ./tests
robot --name Firefox --variable BROWSER:Firefox --variable  ENVIRONMENT:PRO --outputdir results ./tests
robot --name Firefox --variable BROWSER:Firefox --variable  ENVIRONMENT:QA --outputdir results ./tests