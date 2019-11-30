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
	
Edit gender
	Set Selenium Speed    0
    Go to    http://localhost/AtomGame/public/editProfile
	Click Element    //*[@id="ShowGender"]/div[1]/label
	Click Button    บันทึก
	Page should contain    ชาย
	
Edit pre_name 1
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    1
	Click Button    บันทึก
	Page should contain    นาย
Edit pre_name 2
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    2
	Click Button    บันทึก
	Page should contain    อ.ดร.
Edit pre_name 3
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    3
	Click Button    บันทึก
	Page should contain    Mr.
	
Edit genders
    Go to    http://localhost/AtomGame/public/editProfile
	Click Element    //*[@id="ShowGender"]/div[2]/label
	Click Button    บันทึก
	Page should contain    หญิง
	
Edit pre_name 4
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    1
	Click Button    บันทึก
	Page should contain    นางสาว
	
Edit pre_name 5
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    2
	Click Button    บันทึก
	Page should contain    นาง
	
Edit pre_name 6
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    3
	Click Button    บันทึก
	Page should contain    อ.ดร.
	
Edit pre_name 7
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    pre_name    4
	Click Button    บันทึก
	Page should contain    Miss
	
Edit Full-name
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    inputfullname    สุดหล่อ ในมข
	Click Button    บันทึก
	Page should contain    สุดหล่อ ในมข
	
Edit Birthday
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    BD    02141998
	Click Button    บันทึก
	Page should contain    1998-02-14
	
Edit studentID
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    STDcode    593020467-5
	Click Button    บันทึก
	Page should contain    593020467-5
	
Edit tel
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    tell    0963212959
	Click Button    บันทึก
	Page should contain    0963212959 
	
Edit telparent
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    tellparent    0912345678
	Click Button    บันทึก
	Page should contain    0912345678
	
Edit facebook
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    facebook    Keeframe
	Click Button    บันทึก
	Page should contain    Keeframe

Edit mail
    Go to    http://localhost/AtomGame/public/editProfile
	Input text    mail    okpg0hk12345@gmail.com
	Click Button    บันทึก
	Page should contain    okpg0hk12345@gmail.com
	
Edit type 1
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    1
	Click Button    บันทึก
	Page should contain    กรรมการอำนวนการ/กรรมการดำเนินงาน
	
Edit type 2
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    2
	Click Button    บันทึก
	Page should contain    อนุกรรมการ
	
Edit type 3
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    3
	Click Button    บันทึก
	Page should contain    เจ้าหน้าที่จัดการแข่งขัน

Edit type 4
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    4
	Click Button    บันทึก
	Page should contain    อาสาสมัคร
	 
Edit type 5
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    5
	Click Button    บันทึก
	Page should contain    กรรมการบริหารกีฬาวิทยาศาสตร์สัมพันธ์แห่งประเทศไทย
	
Edit type 6
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    6
	Click Button    บันทึก
	Page should contain    กรรมการผู้ตัดสิน
	
Edit type 7
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    7
	Click Button    บันทึก
	Page should contain    นักกีฬา/กิจกรรมสัมพันธ์
	
Edit type 8
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    8
	Click Button    บันทึก
	Page should contain    ผู้จัดการ/ผู้ฝึกสอน/ผู้ช่วยผู้ฝึกสอน
	
Edit type 9
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    9
	Click Button    บันทึก
	Page should contain    ช่างภาพ/สื่อมวลชน
	
Edit type 10
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    10
	Click Button    บันทึก
	Page should contain    ผู้เข้าร่วมงานทั่วไป
	
Edit type 11
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    11
	Click Button    บันทึก
	Page should contain    ผู้ให้การสนับสนุน
	
Edit type 12
    Go to    http://localhost/AtomGame/public/editProfile
	Select From List By Index    AT_Type    12
	Click Button    บันทึก
	Page should contain    อาจารย์/บุคลากร