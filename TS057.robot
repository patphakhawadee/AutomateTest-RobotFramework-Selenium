*** Settings ***
Library    Selenium2Library

*** Variable ***
${username}    test
${password}    test1234

*** Testcases ***
Open Browser
	Set Selenium Speed    0.5
    Open Browser    http://localhost/AtomGame/public/home   chrome
Login Admin
	Click Element    //*[@id="loginBtn"]
  	Click Element    //*[@id="Username"]
  	Input Text    Username    test 
  	Click Element    //*[@id="Password"]
  	Input Text    Password    test1234
  	Click Button    login
Check detail donate
	Set Selenium Speed    0.5
    Go to    http://localhost/AtomGame/public/Alldonor
	