*** Settings ***
Documentation     網頁文字描述檢查
Suite Setup       Click checkup_qualifications Item Button
Test Teardown
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${checkup_qualifications_button}    //div[3]/div/a/span[2]    # 健檢管理
${checkup_qualifications_button2}    //div[2]/div[2]/div/a/span    # 健檢資格維護
${checkup_qualifications_tab_XPATH}    //div[2]/div/div/div/a/span    # 客戶健檢資格維護
${HEADER_checkup_qualifications_search_XPATH}    //div/div/div/span    # 健檢資格搜尋
${HEADER_checkup_qualifications_customer_XPATH}    //div[3]/div/div/div/div/div/span    # 客戶清單
${checkup_qualifications_sch_deptName_XPATH}    //label    # 資格維護 法人:
${checkup_qualifications_sch_crLevel_XPATH}    //td[2]/table/tbody/tr/td/label    # 資格維護 *健檢類別:
${checkup_qualifications_sch_checkupYear_XPATH}    //td[3]/table/tbody/tr/td/label    # 資格維護 健檢年度:
${checkup_qualifications_sch_accountId_XPATH}    //td[4]/table/tbody/tr/td/label    # 資格維護 客戶帳號:
${checkup_qualifications_sch_accountName_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 資格維護 客戶姓名:
${checkup_qualifications_sch_roleName_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # 資格維護 客戶類型:
${checkup_qualifications_list_id_XPATH}    //div[3]/div[3]/div/div/div/div    # 資格維護 No
${checkup_qualifications_list_deptName_XPATH}    //div[4]/div/span    # 資格維護 法人
${checkup_qualifications_list_sectionName_XPATH}    //div[5]/div/span    # 資格維護 部門
${checkup_qualifications_list_roleName_XPATH}    //div[6]/div/span    # 資格維護 客戶類型
${checkup_qualifications_list_accountId_XPATH}    //div[7]/div/span    # 客戶帳號
${checkup_qualifications_list_accountName_XPATH}    //div[8]/div/span    # 客戶姓名
${checkup_qualifications_list_gender_XPATH}    //div[9]/div/span    # 性別
${checkup_qualifications_list_reservationExist_XPATH}    //div[10]/div/span    # 在職狀況
${checkup_qualifications_list_checkupYear_XPATH}    //div[11]/div/span    # 健檢年度
${checkup_qualifications_list_crLevel_XPATH}    //div[12]/div/span    # 健檢類別
${checkup_qualifications_list_havecheckup_XPATH}    //div[13]/div/span    # 是否健檢

*** Test Cases ***
check page
    ${Verify_checkup_qualifications_tab}    Convert To String    客戶健檢資格維護
    ${Verify_HEADER_checkup_qualifications_search}    Convert To String    健檢資格搜尋
    ${Verify_HEADER_checkup_qualifications_customer}    Convert To String    客戶清單
    ${Verify_checkup_qualifications_sch_deptName}    Convert To String    *法人:
    ${Verify_checkup_qualifications_sch_crLevel}    Convert To String    *健檢類別:
    ${Verify_checkup_qualifications_sch_checkupYear}    Convert To String    健檢年度:
    ${Verify_checkup_qualifications_sch_accountId}    Convert To String    客戶帳號:
    ${Verify_checkup_qualifications_sch_accountName}    Convert To String    客戶姓名:
    ${Verify_checkup_qualifications_sch_roleName}    Convert To String    客戶類型:
    ${Verify_checkup_qualifications_list_id}    Convert To String    No
    ${Verify_checkup_qualifications_list_deptName}    Convert To String    法人
    ${Verify_checkup_qualifications_list_sectionName}    Convert To String    部門
    ${Verify_checkup_qualifications_list_roleName}    Convert To String    客戶類型
    ${Verify_checkup_qualifications_list_accountId}    Convert To String    客戶帳號
    ${Verify_checkup_qualifications_list_accountName}    Convert To String    客戶姓名
    ${Verify_checkup_qualifications_list_gender}    Convert To String    性別
    ${Verify_checkup_qualifications_list_reservationExist}    Convert To String    在職狀況
    ${Verify_checkup_qualifications_list_checkupYear}    Convert To String    健檢年度
    ${Verify_checkup_qualifications_list_crLevel}    Convert To String    健檢類別
    ${Verify_checkup_qualifications_list_havecheckup}    Convert To String    是否健檢
    ${Get_checkup_qualifications_tab}    Get Text    xpath=${checkup_qualifications_tab_XPATH}
    ${Get_HEADER_checkup_qualifications_search}    Get Text    xpath=${HEADER_checkup_qualifications_search_XPATH}
    ${Get_HEADER_checkup_qualifications_customer}    Get Text    xpath=${HEADER_checkup_qualifications_customer_XPATH}
    ${Get_checkup_qualifications_sch_deptName}    Get Text    xpath=${checkup_qualifications_sch_deptName_XPATH}
    ${Get_checkup_qualifications_sch_crLevel}    Get Text    xpath=${checkup_qualifications_sch_crLevel_XPATH}
    ${Get_checkup_qualifications_sch_checkupYear}    Get Text    xpath=${checkup_qualifications_sch_checkupYear_XPATH}
    ${Get_checkup_qualifications_sch_accountId}    Get Text    xpath=${checkup_qualifications_sch_accountId_XPATH}
    ${Get_checkup_qualifications_sch_accountName}    Get Text    xpath=${checkup_qualifications_sch_accountName_XPATH}
    ${Get_checkup_qualifications_sch_roleName}    Get Text    xpath=${checkup_qualifications_sch_roleName_XPATH}
    ${Get_checkup_qualifications_list_id}    Get Text    xpath=${checkup_qualifications_list_id_XPATH}
    ${Get_checkup_qualifications_list_deptName}    Get Text    xpath=${checkup_qualifications_list_deptName_XPATH}
    ${Get_checkup_qualifications_list_sectionName}    Get Text    xpath=${checkup_qualifications_list_sectionName_XPATH}
    ${Get_checkup_qualifications_list_roleName}    Get Text    xpath=${checkup_qualifications_list_roleName_XPATH}
    ${Get_checkup_qualifications_list_accountId}    Get Text    xpath=${checkup_qualifications_list_accountId_XPATH}
    ${Get_checkup_qualifications_list_accountName}    Get Text    xpath=${checkup_qualifications_list_accountName_XPATH}
    ${Get_checkup_qualifications_list_gender}    Get Text    xpath=${checkup_qualifications_list_gender_XPATH}
    ${Get_checkup_qualifications_list_reservationExist}    Get Text    xpath=${checkup_qualifications_list_reservationExist_XPATH}
    ${Get_checkup_qualifications_list_checkupYear}    Get Text    xpath=${checkup_qualifications_list_checkupYear_XPATH}
    ${Get_checkup_qualifications_list_crLevel}    Get Text    xpath=${checkup_qualifications_list_crLevel_XPATH}
    ${Get_checkup_qualifications_list_havecheckup}    Get Text    xpath=${checkup_qualifications_list_havecheckup_XPATH}
    Should Be Equal    ${Verify_checkup_qualifications_tab}    ${Get_checkup_qualifications_tab}
    Should Be Equal    ${Verify_HEADER_checkup_qualifications_search}    ${Get_HEADER_checkup_qualifications_search}
    Should Be Equal    ${Verify_HEADER_checkup_qualifications_customer}    ${Get_HEADER_checkup_qualifications_customer}
    Should Be Equal    ${Verify_checkup_qualifications_sch_deptName}    ${Get_checkup_qualifications_sch_deptName}
    Should Be Equal    ${Verify_checkup_qualifications_sch_crLevel}    ${Get_checkup_qualifications_sch_crLevel}
    Should Be Equal    ${Verify_checkup_qualifications_sch_checkupYear}    ${Get_checkup_qualifications_sch_checkupYear}
    Should Be Equal    ${Verify_checkup_qualifications_sch_accountId}    ${Get_checkup_qualifications_sch_accountId}
    Should Be Equal    ${Verify_checkup_qualifications_sch_accountName}    ${Get_checkup_qualifications_sch_accountName}
    Should Be Equal    ${Verify_checkup_qualifications_sch_roleName}    ${Get_checkup_qualifications_sch_roleName}
    Should Be Equal    ${Verify_checkup_qualifications_list_id}    ${Get_checkup_qualifications_list_id}
    Should Be Equal    ${Verify_checkup_qualifications_list_deptName}    ${Get_checkup_qualifications_list_deptName}
    Should Be Equal    ${Verify_checkup_qualifications_list_sectionName}    ${Get_checkup_qualifications_list_sectionName}
    Should Be Equal    ${Verify_checkup_qualifications_list_roleName}    ${Get_checkup_qualifications_list_roleName}
    Should Be Equal    ${Verify_checkup_qualifications_list_accountId}    ${Get_checkup_qualifications_list_accountId}
    Should Be Equal    ${Verify_checkup_qualifications_list_accountName}    ${Get_checkup_qualifications_list_accountName}
    Should Be Equal    ${Verify_checkup_qualifications_list_gender}    ${Get_checkup_qualifications_list_gender}
    Should Be Equal    ${Verify_checkup_qualifications_list_reservationExist}    ${Get_checkup_qualifications_list_reservationExist}
    Should Be Equal    ${Verify_checkup_qualifications_list_checkupYear}    ${Get_checkup_qualifications_list_checkupYear}
    Should Be Equal    ${Verify_checkup_qualifications_list_crLevel}    ${Get_checkup_qualifications_list_crLevel}
    Should Be Equal    ${Verify_checkup_qualifications_list_havecheckup}    ${Get_checkup_qualifications_list_havecheckup}
    [Teardown]    Close Web Browser

*** Keywords ***
Click checkup_qualifications Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${checkup_qualifications_button}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${checkup_qualifications_button}
    Click Element    xpath=${checkup_qualifications_button}
    Wait Until Element Is Visible    xpath=${checkup_qualifications_button2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${checkup_qualifications_button2}
    Sleep    1

close web browser
    close browser
