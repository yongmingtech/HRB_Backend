*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Resource          Resource.robot
Resource          Library.robot

*** Variables ***
${DELAY}          0
${SERVER}         http://192.168.2.71:8060/    # Backend
${User_Name}      ALISON
${User_Password}    02260406
${Submit_Button}    button-1014-btnIconEl

*** Keywords ***
Open Broser to Login Page
    Open Browser    ${SERVER}    ${G_BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    Input Text    username    ${User_Name}

Input Password
    Input Text    password    ${User_Password}

Submit Credentials
    Click Element    ${Submit_Button}

Open Broser and Login automatically
    Open Broser to Login Page
    Input Username
    Input Password
    Submit Credentials
