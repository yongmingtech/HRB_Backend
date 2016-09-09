*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot

*** Test Cases ***
Logout
    [Documentation]    Test case Description :
    ...    主要測試是否能登出
    ...
    ...    Verify :
    ...    登出成功並看到頁面輸入帳號的欄位
    Open Broser and Login automatically
    Wait Until Element Is Visible    id=button-1047-btnIconEl    ${G_Wait_For_Element_Timeout}    #登出
    Click Element    id=button-1047-btnIconEl
    #等待輸入按鈕出現
    Wait Until Element Is Visible    id=textfield-1011-inputEl    ${G_Wait_For_Element_Timeout}
    Element Should Be Visible    id=textfield-1011-inputEl
