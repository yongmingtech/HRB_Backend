*** Settings ***
Documentation     健檢管理 -> 健檢資格維護
Suite Setup
Test Setup        Click Checkup_Qualifications Item Button
Test Teardown
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Checkup_Qualifications_button}    //div[3]/div/a/span[2]    # 健檢管理
${Checkup_Qualifications_button2}    //div[2]/div[2]/div/a/span    # 健檢資格維護
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

*** Test Cases ***
check page
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

*** Keywords ***
Click Checkup_Qualifications Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Checkup_Qualifications_button}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Checkup_Qualifications_button}
    Click Element    xpath=${Checkup_Qualifications_button}
    Wait Until Element Is Visible    xpath=${Checkup_Qualifications_button2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Qualifications_button2}
    Sleep    1
