*** Settings ***
Documentation     健檢管理 -> 健檢資格維護
Suite Setup
Test Setup        Click Checkup_Qualifications Item Button
Test Teardown
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Checkup_Qualifications_button}    //div[2]/div[2]/div/a/span    # 健檢資格維護
${Checkup_Qualifications_tab_XPATH}    //div[2]/div/div/div/a/span    # 客戶健檢資格維護
${HEADER_Checkup_Qualifications_Search_XPATH}    //div/div/div/span    # 健檢資格搜尋
${HEADER_Checkup_Qualifications_customer_XPATH}    //div[3]/div/div/div/div/div/span    # 客戶清單
${Checkup_Qualifications_Search_deptName_XPATH}    //label    # 資格維護 法人:
${Checkup_Qualifications_Search_crLevel_XPATH}    //td[2]/table/tbody/tr/td/label    # 資格維護 *健檢類別:
${Checkup_Qualifications_Search_checkupYear_XPATH}    //td[3]/table/tbody/tr/td/label    # 資格維護 健檢年度:
${Checkup_Qualifications_Search_accountId_XPATH}    //td[4]/table/tbody/tr/td/label    # 資格維護 客戶帳號:
${Checkup_Qualifications_Search_accountName_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 資格維護 客戶姓名:
${Checkup_Qualifications_Search_roleName_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # 資格維護 客戶類型:
${Checkup_Qualifications_List_id_XPATH}    //div[3]/div[3]/div/div/div/div    # 資格維護 No
${Checkup_Qualifications_List_deptName_XPATH}    //div[4]/div/span    # 資格維護 法人
${Checkup_Qualifications_List_sectionName_XPATH}    //div[5]/div/span    # 資格維護 部門
${Checkup_Qualifications_List_roleName_XPATH}    //div[6]/div/span    # 資格維護 客戶類型
${Checkup_Qualifications_List_accountId_XPATH}    //div[7]/div/span    # 客戶帳號
${Checkup_Qualifications_List_accountName_XPATH}    //div[8]/div/span    # 客戶姓名
${Checkup_Qualifications_List_gender_XPATH}    //div[9]/div/span    # 性別
${Checkup_Qualifications_List_reservationExist_XPATH}    //div[10]/div/span    # 在職狀況
${Checkup_Qualifications_List_checkupYear_XPATH}    //div[11]/div/span    # 健檢年度
${Checkup_Qualifications_List_crLevel_XPATH}    //div[12]/div/span    # 健檢類別
${Checkup_Qualifications_List_havecheckup_XPATH}    //div[13]/div/span    # 是否健檢
${Parameter_Search_deptName}    FIH(富智康
${Parameter_Search_crLevel}    V類
${Parameter_Search_checkupYear}    2016
${Parameter_Search_accountId}    Y120521840
${Parameter_Search_accountName}    汪泰穎
${Parameter_Search_roleName}    一般
${Search_Tab_Search_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[1]
${Search_Tab_Clear_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[2]
${Checkup_Qualifications_Input_deptName1_XPATH}    //td[2]/div    #*法人
${Checkup_Qualifications_Input_deptName2_XPATH}    //div[80]    #*法人
${Checkup_Qualifications_Input_crLevel_XPATH}    //td[2]/table/tbody/tr/td[2]/table/tbody/tr/td/input    #*健檢類別
${Checkup_Qualifications_Input_checkupYear1_XPATH}    //td[3]/table/tbody/tr/td[2]/table/tbody/tr/td[2]/div    #健檢年度
${Checkup_Qualifications_Input_checkupYear2_XPATH}    //li[1]    #健檢年度
${Checkup_Qualifications_Input_checkupYear3_XPATH}    //li[2]    #健檢年度
${Checkup_Qualifications_Input_accountId_XPATH}    //td[2]/input    #客戶帳號
${Checkup_Qualifications_Input_accountName_XPATH}    //tr[2]/td/table/tbody/tr/td[2]/input    #客戶姓名
${Checkup_Qualifications_Input_roleName1_XPATH}    //tr[2]/td[2]/table/tbody/tr/td[2]/table/tbody/tr/td[2]/div    #客戶類型
${Checkup_Qualifications_Input_roleName2_XPATH}    //li[2]    #客戶類型

*** Test Cases ***
Check Page
    ${Verify_Checkup_Qualifications_tab}    Convert To String    客戶健檢資格維護
    ${Verify_HEADER_Checkup_Qualifications_Search}    Convert To String    健檢資格搜尋
    ${Verify_HEADER_Checkup_Qualifications_customer}    Convert To String    客戶清單
    ${Verify_Checkup_Qualifications_Search_deptName}    Convert To String    *法人:
    ${Verify_Checkup_Qualifications_Search_crLevel}    Convert To String    *健檢類別:
    ${Verify_Checkup_Qualifications_Search_checkupYear}    Convert To String    健檢年度:
    ${Verify_Checkup_Qualifications_Search_accountId}    Convert To String    客戶帳號:
    ${Verify_Checkup_Qualifications_Search_accountName}    Convert To String    客戶姓名:
    ${Verify_Checkup_Qualifications_Search_roleName}    Convert To String    客戶類型:
    ${Verify_Checkup_Qualifications_List_id}    Convert To String    No
    ${Verify_Checkup_Qualifications_List_deptName}    Convert To String    法人
    ${Verify_Checkup_Qualifications_List_sectionName}    Convert To String    部門
    ${Verify_Checkup_Qualifications_List_roleName}    Convert To String    客戶類型
    ${Verify_Checkup_Qualifications_List_accountId}    Convert To String    客戶帳號
    ${Verify_Checkup_Qualifications_List_accountName}    Convert To String    客戶姓名
    ${Verify_Checkup_Qualifications_List_gender}    Convert To String    性別
    ${Verify_Checkup_Qualifications_List_reservationExist}    Convert To String    在職狀況
    ${Verify_Checkup_Qualifications_List_checkupYear}    Convert To String    健檢年度
    ${Verify_Checkup_Qualifications_List_crLevel}    Convert To String    健檢類別
    ${Verify_Checkup_Qualifications_List_havecheckup}    Convert To String    是否健檢
    ${Get_Checkup_Qualifications_tab}    Get Text    xpath=${Checkup_Qualifications_tab_XPATH}
    ${Get_HEADER_Checkup_Qualifications_Search}    Get Text    xpath=${HEADER_Checkup_Qualifications_Search_XPATH}
    ${Get_HEADER_Checkup_Qualifications_customer}    Get Text    xpath=${HEADER_Checkup_Qualifications_customer_XPATH}
    ${Get_Checkup_Qualifications_Search_deptName}    Get Text    xpath=${Checkup_Qualifications_Search_deptName_XPATH}
    ${Get_Checkup_Qualifications_Search_crLevel}    Get Text    xpath=${Checkup_Qualifications_Search_crLevel_XPATH}
    ${Get_Checkup_Qualifications_Search_checkupYear}    Get Text    xpath=${Checkup_Qualifications_Search_checkupYear_XPATH}
    ${Get_Checkup_Qualifications_Search_accountId}    Get Text    xpath=${Checkup_Qualifications_Search_accountId_XPATH}
    ${Get_Checkup_Qualifications_Search_accountName}    Get Text    xpath=${Checkup_Qualifications_Search_accountName_XPATH}
    ${Get_Checkup_Qualifications_Search_roleName}    Get Text    xpath=${Checkup_Qualifications_Search_roleName_XPATH}
    ${Get_Checkup_Qualifications_List_id}    Get Text    xpath=${Checkup_Qualifications_List_id_XPATH}
    ${Get_Checkup_Qualifications_List_deptName}    Get Text    xpath=${Checkup_Qualifications_List_deptName_XPATH}
    ${Get_Checkup_Qualifications_List_sectionName}    Get Text    xpath=${Checkup_Qualifications_List_sectionName_XPATH}
    ${Get_Checkup_Qualifications_List_roleName}    Get Text    xpath=${Checkup_Qualifications_List_roleName_XPATH}
    ${Get_Checkup_Qualifications_List_accountId}    Get Text    xpath=${Checkup_Qualifications_List_accountId_XPATH}
    ${Get_Checkup_Qualifications_List_accountName}    Get Text    xpath=${Checkup_Qualifications_List_accountName_XPATH}
    ${Get_Checkup_Qualifications_List_gender}    Get Text    xpath=${Checkup_Qualifications_List_gender_XPATH}
    ${Get_Checkup_Qualifications_List_reservationExist}    Get Text    xpath=${Checkup_Qualifications_List_reservationExist_XPATH}
    ${Get_Checkup_Qualifications_List_checkupYear}    Get Text    xpath=${Checkup_Qualifications_List_checkupYear_XPATH}
    ${Get_Checkup_Qualifications_List_crLevel}    Get Text    xpath=${Checkup_Qualifications_List_crLevel_XPATH}
    ${Get_Checkup_Qualifications_List_havecheckup}    Get Text    xpath=${Checkup_Qualifications_List_havecheckup_XPATH}
    Should Be Equal    ${Verify_Checkup_Qualifications_tab}    ${Get_Checkup_Qualifications_tab}
    Should Be Equal    ${Verify_HEADER_Checkup_Qualifications_Search}    ${Get_HEADER_Checkup_Qualifications_Search}
    Should Be Equal    ${Verify_HEADER_Checkup_Qualifications_customer}    ${Get_HEADER_Checkup_Qualifications_customer}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_deptName}    ${Get_Checkup_Qualifications_Search_deptName}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_crLevel}    ${Get_Checkup_Qualifications_Search_crLevel}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_checkupYear}    ${Get_Checkup_Qualifications_Search_checkupYear}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_accountId}    ${Get_Checkup_Qualifications_Search_accountId}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_accountName}    ${Get_Checkup_Qualifications_Search_accountName}
    Should Be Equal    ${Verify_Checkup_Qualifications_Search_roleName}    ${Get_Checkup_Qualifications_Search_roleName}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_id}    ${Get_Checkup_Qualifications_List_id}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_deptName}    ${Get_Checkup_Qualifications_List_deptName}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_sectionName}    ${Get_Checkup_Qualifications_List_sectionName}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_roleName}    ${Get_Checkup_Qualifications_List_roleName}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_accountId}    ${Get_Checkup_Qualifications_List_accountId}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_accountName}    ${Get_Checkup_Qualifications_List_accountName}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_gender}    ${Get_Checkup_Qualifications_List_gender}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_reservationExist}    ${Get_Checkup_Qualifications_List_reservationExist}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_checkupYear}    ${Get_Checkup_Qualifications_List_checkupYear}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_crLevel}    ${Get_Checkup_Qualifications_List_crLevel}
    Should Be Equal    ${Verify_Checkup_Qualifications_List_havecheckup}    ${Get_Checkup_Qualifications_List_havecheckup}
    [Teardown]    Close Browser

Search_tab
    [Documentation]    健檢資格維護 -> 搜尋tab
    ...    目的：測試搜尋bar，所以搜尋條件都可以正確動作
    ...    Criteria：
    ...    1. 可正確找出符合條件資料
    ...    2. 與資料庫比對資料正確性，確認欄位正確
    ...    test case1 :
    ...    d \ 1. *法人 + *健檢類別
    ...    d \ 2. *法人 + *健檢類別 + 健檢年度
    ...    d \ 3. *法人 + *健檢類別 + 客戶帳號
    ...    d \ 4. *法人 + *健檢類別 + 客戶姓名
    ...    n \ 5. *法人 + *健檢類別 + 客戶類別
    connect database
    ##    Test condition 1 : deptName + crLevel
    Reset_Search_Condition
    Input Text    xpath=${Checkup_Qualifications_Input_crLevel_XPATH}    ${Parameter_Search_crLevel}    # *健檢類別:
    #Input Text    xpath=${Checkup_Qualifications_Input_deptName_XPATH}    ${Parameter_Search_deptName}    # 法人:
    Click Element    xpath=${Checkup_Qualifications_Input_deptName1_XPATH}    # 法人:
    Wait Until Element Is Visible    xpath=${Checkup_Qualifications_Input_deptName2_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Qualifications_Input_deptName2_XPATH}    # 2016
    Click Element    xpath=${Search_Tab_Search_Button}
    Connect Database
    ${Query_By_Must}    Set Variable    select Dept.DeptName, Info.SectionName, Role.RoleName,Info.AccountId, Info.AccountName, Info.Gender, Info.LeaveDate, CrL.checkup_year, CrL.cr_level from Account_CrLevel CrL, AccountInfo Info, DeptBasic Dept, RoleBasic Role where CrL.cr_level='V' AND Dept.DeptCode='FIHLX02' AND CrL.accountUID = Info.accountUID AND Info.SystemRole = Role.SystemRole AND Info.DeptCode = Dept.DeptCode order by Info.AccountId
    ${Organization_Name_List}    Create List
    ${Must_Database}    query    ${Query_By_Must}
    ${Get_Organization_Count}    Get Matching Xpath Count    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td
    : FOR    ${Index}    IN RANGE    4    ${Get_Organization_Count}+1
    \    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[${index}]/div    #把構代碼的Dropdlown一筆一筆放入到List
    \    ${check_word1}    Set Variable If    '${Get_Name}'=="${EMPTY} "    空白    ${Get_Name}
    \    ${check_word2}    Set Variable If    '${Get_Name}'=="在職"    空白    ${check_word1}
    \    Append To List    ${Organization_Name_List}    ${check_word2}
    : FOR    ${Index}    IN RANGE    0    ${Get_Organization_Count}-4
    \    ${from_data}    set variable    ${Must_Database[0][${Index}]}
    \    ${check_word1}    Set Variable If    "M" not in '${Must_Database[0][${Index}]}'    ${from_data}    男
    \    ${check_word2}    Set Variable If    '${Must_Database[0][${Index}]}'=="V"    V類    ${check_word1}
    \    ${check_word3}    Set Variable If    '${Must_Database[0][${Index}]}'=="${none}"    空白    ${check_word2}
    \    ${Verify_from_DB}    Convert To String    ${check_word3}
    \    ${Get_from_web}    Convert To String    ${Organization_Name_List[${Index}]}
    \    should be equal    ${Verify_from_DB}    ${Get_from_web}
    # Test condition 2 : deptName + crLevel + checkupYear
    sleep    5
    Reset_Search_Condition
    Input Text    xpath=${Checkup_Qualifications_Input_crLevel_XPATH}    ${Parameter_Search_crLevel}    # *健檢類別:
    Click Element    xpath=${Checkup_Qualifications_Input_checkupYear1_XPATH}    # 健檢年度:
    Click Element    xpath=${Checkup_Qualifications_Input_checkupYear3_XPATH}    #2016
    Click Element    xpath=${Search_Tab_Search_Button}
    #sleep    5
    Reset_Search_Condition
    # Test condition 3 : deptName + crLevel + accountId
    Input Text    xpath=${Checkup_Qualifications_Input_crLevel_XPATH}    ${Parameter_Search_crLevel}    # *健檢類別:
    Input Text    xpath=${Checkup_Qualifications_Input_accountId_XPATH}    ${Parameter_Search_accountId}    # 客戶帳號:
    Click Element    xpath=${Search_Tab_Search_Button}
    #sleep    5
    Reset_Search_Condition
    # Test condition 4 : deptName + crLevel + accountName
    Input Text    xpath=${Checkup_Qualifications_Input_crLevel_XPATH}    ${Parameter_Search_crLevel}    # *健檢類別:
    Input Text    xpath=${Checkup_Qualifications_Input_accountName_XPATH}    ${Parameter_Search_accountName}    # 客戶姓名:
    Click Element    xpath=${Search_Tab_Search_Button}
    #sleep    5
    Reset_Search_Condition
    # Test condition 5 : deptName + crLevel + roleName
    Input Text    xpath=${Checkup_Qualifications_Input_crLevel_XPATH}    ${Parameter_Search_crLevel}    # *健檢類別:
    Click Element    xpath=${Checkup_Qualifications_Input_roleName1_XPATH}    # 客戶類型:
    #Wait Until Element Is Visible    xpath=${Checkup_Qualifications_Input_roleName2_XPATH}    ${G_Wait_For_Element_Timeout}
    #Click Element    xpath=${Checkup_Qualifications_Input_roleName2_XPATH}    # 客戶類型:
    #Click Element    xpath=${Search_Tab_Search_Button}
    #Reset_Search_Condition
    [Teardown]    close browser

*** Keywords ***
Click Checkup_Qualifications Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Checkup_Qualifications_button}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Qualifications_button}
    Sleep    1

Reset_Search_Condition
    Input Text    xpath=${Checkup_Qualifications_Input_accountId_XPATH}    ${empty}
    Input Text    xpath=${Checkup_Qualifications_Input_accountName_XPATH}    ${empty}
    Click Element    xpath=${Checkup_Qualifications_Input_checkupYear1_XPATH}    # 健檢年度:
    Click Element    xpath=${Checkup_Qualifications_Input_checkupYear2_XPATH}    # space

DATABASE BACKUP
    [Documentation]    [cr_level] [checkup_year] [accountUID]
    ...    [Account_CrLevel]
    ...    [AccountId] [AccountName] [DeptCode] [SystemRole]
    ...    [AccountInfo]
    ...    [DeptCode] [DeptName]
    ...    [DeptBasic]
    ...    [SystemRole] [RoleName]
    ...    [RoleBasic]
