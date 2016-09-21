*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          Login_Tests_Resource.robot

*** Test Cases ***
Logout
    [Documentation]    Test case Description :
    ...    主要測試是否能登出
    ...
    ...    Verify :
    ...    登出成功並看到頁面輸入帳號的欄位
    Given Open Broser and Login automatically
    When User Click Logout Button
    Then Should Display Login Page
