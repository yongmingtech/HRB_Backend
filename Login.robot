*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Library           Selenium2Library
Resource          Resource.robot

*** Variables ***
${DELAY}          0
${SERVER}         http://10.32.86.132:8080/    # Backend

*** Keywords ***
Open Broser to Login Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    Input Text    username    FC750

Input Password
    Input Text    password    0406

Submit Credentials
    Click Element    button-1014-btnIconEl

Open Broser and Login automatically
    Open Broser to Login Page
    Input Username
    Input Password
    Submit Credentials
