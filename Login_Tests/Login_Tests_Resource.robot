*** Keywords ***
Wait Logout Button Display
    Wait Until Element Is Visible    id=${Logout_Button}    ${G_Wait_For_Element_Timeout}    #等待登出按鈕

Logout Button Sould Be Enbled
    Element Should Be Visible    id=${Logout_Button}

User Click Logout Button
    Wait Until Element Is Visible    id=${Logout_Button}    ${G_Wait_For_Element_Timeout}    #登出
    Click Element    id=${Logout_Button}

Should Display Login Page
    Wait Until Element Is Visible    id=textfield-1011-inputEl    ${G_Wait_For_Element_Timeout}
    Element Should Be Visible    id=textfield-1011-inputEl
