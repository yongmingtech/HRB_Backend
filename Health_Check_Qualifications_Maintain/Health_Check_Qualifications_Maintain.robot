*** Settings ***
Documentation     網頁文字描述檢查
Suite Setup       Click checkup_qualifications Item Button
Test Teardown
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${checkup_qualifications_button}    button-1031-btnEl    # 健檢管理
${checkup_qualifications_button2}    menuitem-1022-textEl    # 健檢資格維護
${checkup_qualifications_tab}    tab-1125-btnInnerEl    # 客戶健檢資格維護
${HEADER_checkup_qualifications_search}    accountCrLevelSearchForm-1078_header_hd-textEl    # 健檢資格搜尋
${HEADER_checkup_qualifications_customer}    accountCrLevelFormGrid-1088_header_hd-textEl    # 客戶清單
${checkup_qualifications_sch_deptName}    deptBasicComboBox-1079-labelEl    # 資格維護 法人:
${checkup_qualifications_sch_crLevel}    crmSystemL1basicComboBox-1080-labelEl    # 資格維護 *健檢類別:
${checkup_qualifications_sch_checkupYear}    yearComboBox-1081-labelEl    # 資格維護 健檢年度:
${checkup_qualifications_sch_accountId}    textfield-1082-labelEl    # 資格維護 客戶帳號:
${checkup_qualifications_sch_accountName}    textfield-1083-labelEl    # 資格維護 客戶姓名:
${checkup_qualifications_sch_roleName}    roleBasicComboBox-1084-labelEl    # 資格維護 客戶類型:
${checkup_qualifications_list_id}    rownumberer-1104-textEl    # 資格維護 No
${checkup_qualifications_list_deptName}    gridcolumn-1107-textEl    # 資格維護 法人
${checkup_qualifications_list_sectionName}    gridcolumn-1108-textEl    # 資格維護 部門
${checkup_qualifications_list_roleName}    gridcolumn-1109-textEl    # 資格維護 客戶類型
${checkup_qualifications_list_accountId}    gridcolumn-1110-textEl    # 客戶帳號
${checkup_qualifications_list_accountName}    gridcolumn-1111-textEl    # 客戶姓名
${checkup_qualifications_list_gender}    gridcolumn-1112-textEl    # 性別
${checkup_qualifications_list_reservationExist}    booleancolumn-1113-textEl    # 在職狀況
${checkup_qualifications_list_checkupYear}    gridcolumn-1114-textEl    # 健檢年度
${checkup_qualifications_list_crLevel}    gridcolumn-1115-textEl    # 健檢類別
${checkup_qualifications_list_havecheckup}    booleancolumn-1116-textEl    # 是否健檢

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
    ${Get_checkup_qualifications_tab}    Get Text    ${checkup_qualifications_tab}
    ${Get_HEADER_checkup_qualifications_search}    Get Text    ${HEADER_checkup_qualifications_search}
    ${Get_HEADER_checkup_qualifications_customer}    Get Text    ${HEADER_checkup_qualifications_customer}
    ${Get_checkup_qualifications_sch_deptName}    Get Text    ${checkup_qualifications_sch_deptName}
    ${Get_checkup_qualifications_sch_crLevel}    Get Text    ${checkup_qualifications_sch_crLevel}
    ${Get_checkup_qualifications_sch_checkupYear}    Get Text    ${checkup_qualifications_sch_checkupYear}
    ${Get_checkup_qualifications_sch_accountId}    Get Text    ${checkup_qualifications_sch_accountId}
    ${Get_checkup_qualifications_sch_accountName}    Get Text    ${checkup_qualifications_sch_accountName}
    ${Get_checkup_qualifications_sch_roleName}    Get Text    ${checkup_qualifications_sch_roleName}
    ${Get_checkup_qualifications_list_id}    Get Text    ${checkup_qualifications_list_id}
    ${Get_checkup_qualifications_list_deptName}    Get Text    ${checkup_qualifications_list_deptName}
    ${Get_checkup_qualifications_list_sectionName}    Get Text    ${checkup_qualifications_list_sectionName}
    ${Get_checkup_qualifications_list_roleName}    Get Text    ${checkup_qualifications_list_roleName}
    ${Get_checkup_qualifications_list_accountId}    Get Text    ${checkup_qualifications_list_accountId}
    ${Get_checkup_qualifications_list_accountName}    Get Text    ${checkup_qualifications_list_accountName}
    ${Get_checkup_qualifications_list_gender}    Get Text    ${checkup_qualifications_list_gender}
    ${Get_checkup_qualifications_list_reservationExist}    Get Text    ${checkup_qualifications_list_reservationExist}
    ${Get_checkup_qualifications_list_checkupYear}    Get Text    ${checkup_qualifications_list_checkupYear}
    ${Get_checkup_qualifications_list_crLevel}    Get Text    ${checkup_qualifications_list_crLevel}
    ${Get_checkup_qualifications_list_havecheckup}    Get Text    ${checkup_qualifications_list_havecheckup}
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
    Wait Until Element Is Visible    ${checkup_qualifications_button}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${checkup_qualifications_button}
    Click Element    ${checkup_qualifications_button}
    Wait Until Element Is Visible    ${checkup_qualifications_button2}    ${G_Wait_For_Element_Timeout}
    Click Element    ${checkup_qualifications_button2}
    Sleep    1

close web browser
    close browser
