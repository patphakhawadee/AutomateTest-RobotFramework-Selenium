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
Edit name
    Set Selenium Speed    0
    Go to    http://localhost/AtomGame/public/host_edit
	Input text    Name    ฮักหลายฮักแพง
	Click Button    บันทึก
	Go to    http://localhost/AtomGame/public/host_edit
	Page Should Contain     ฮักหลายฮักแพง
	
Edit university
	Select From List By Index    University    1
	Click Button    บันทึก
	Page should contain    จุฬาลงกรณ์มหาวิทยาลัย
	Go to    http://localhost/AtomGame/public/host_edit
	Page Should Contain    จุฬาลงกรณ์มหาวิทยาลัย