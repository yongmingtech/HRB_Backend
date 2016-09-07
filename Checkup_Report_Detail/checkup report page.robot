*** Settings ***
Suite Setup
Suite Teardown
Test Setup        Click Chk Report Item Button
Test Teardown
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Chk_Report_ID}    button-1045-btnIconEl
${HEADER_chkreport}    chkReportMainSearchForm-1050_header_hd-textEl    # 健檢資料健檢查詢
${HEADER_chkreportlist}    chkReportMainGrid-1066_header_hd-textEl    # 健檢清單
${chkreport_sch_hospital}    hospitalComboBox-1051-labelEl    # 健檢查詢 醫療機構:
${chkreport_sch_crm}    crmSystemL1basicComboBox-1052-labelEl    # 健檢查詢 健檢類型:
${chkreport_sch_rangedate}    rangeDatepicker-1053-labelEl    # 健檢查詢 健檢日期:
${chkreport_sch_rangef}    datefield-1054-inputEl    # 健檢查詢 2016/01/01
${chkreport_sch_ranget}    datefield-1056-inputEl    # 健檢查詢 2016/12/31
${chkreport_sch_rolebasic}    roleBasicComboBox-1057-labelEl    # 健檢查詢 客戶類型:
${chkreport_sch_comp}    companyComboBox-1058-labelEl    # 健檢查詢 企業:
${chkreport_sch_dept}    deptBasicComboBox-1059-labelEl    # 健檢查詢 法人:
${chkreport_sch_cusacc}    textfield-1060-labelEl    # 健檢查詢 客戶帳號:
${chkreport_sch_cusname}    textfield-1061-labelEl    # 健檢查詢 客戶姓名:
${chkreport_list_no}    rownumberer-1082-textEl    # No
${chkreport_list_checkupType}    gridcolumn-1085-textEl    # 健檢類型
${chkreport_list_dept}    gridcolumn-1086-textEl    # 法人
${chkreport_list_customtype}    gridcolumn-1087-textEl    # 客戶類型
${chkreport_list_cusID}    gridcolumn-1088-textEl    # 客戶帳號
${chkreport_list_cusname}    gridcolumn-1089-textEl    # 客戶姓名
${chkreport_list_hospital}    gridcolumn-1090-textEl    # 醫療機構
${chkreport_list_checkupdate}    datecolumn-1091-textEl    # 健檢日期

*** Test Cases ***
checkk page
    ${Verify_HEADER_chkreport}=    Convert To String    健檢資料查詢
    ${Verify_HEADER_chkreportlist}=    Convert To String    健檢清單
    ${Verify_chkreport_sch_hospital}=    Convert To String    醫療機構:
    ${Verify_chkreport_sch_crm}=    Convert To String    健檢類型:
    ${Verify_chkreport_sch_rangedate}=    Convert To String    *健檢日期:
    ${Verify_chkreport_sch_rangef}=    Convert To String    2016/01/01
    ${Verify_chkreport_sch_ranget}=    Convert To String    2016/12/31
    ${Verify_chkreport_sch_rolebasic}=    Convert To String    客戶類型:
    ${Verify_chkreport_sch_comp}=    Convert To String    *企業:
    ${Verify_chkreport_sch_dept}=    Convert To String    法人:
    ${Verify_chkreport_sch_cusacc}=    Convert To String    客戶帳號:
    ${Verify_chkreport_sch_cusname}=    Convert To String    客戶姓名:
    ${Verify_chkreport_list_no}=    Convert To String    No
    ${Verify_chkreport_list_checkupType}=    Convert To String    健檢類型
    ${Verify_chkreport_list_dept}=    Convert To String    法人
    ${Verify_chkreport_list_customtype}=    Convert To String    客戶類型
    ${Verify_chkreport_list_cusID}=    Convert To String    客戶帳號
    ${Verify_chkreport_list_cusname}=    Convert To String    客戶姓名
    ${Verify_chkreport_list_hospital}=    Convert To String    醫療機構
    ${Verify_chkreport_list_checkupdate}=    Convert To String    健檢日期
    ${Get_HEADER_chkreport}=    Get Text    ${HEADER_chkreport}
    ${Get_HEADER_chkreportlist}=    Get Text    ${HEADER_chkreportlist}
    ${Get_sch_hospital}    Get Text    ${chkreport_sch_hospital}
    ${Get_sch_crm}    Get Text    ${chkreport_sch_crm}
    ${Get_sch_rangedate}    Get Text    ${chkreport_sch_rangedate}
    ${Get_sch_rangef}    Get Value    ${chkreport_sch_rangef}
    ${Get_sch_ranget}    Get Value    ${chkreport_sch_ranget}
    ${Get_sch_rolebasic}    Get Text    ${chkreport_sch_rolebasic}
    ${Get_sch_comp}    Get Text    ${chkreport_sch_comp}
    ${Get_sch_dept}    Get Text    ${chkreport_sch_dept}
    ${Get_sch_cusacc}    Get Text    ${chkreport_sch_cusacc}
    ${Get_sch_cusname}    Get Text    ${chkreport_sch_cusname}
    ${Get_list_no}    Get Text    ${chkreport_list_no}
    ${Get_list_checkupType}    Get Text    ${chkreport_list_checkupType}
    ${Get_list_dept}    Get Text    ${chkreport_list_dept}
    ${Get_list_customtype}    Get Text    ${chkreport_list_customtype}
    ${Get_list_cusID}    Get Text    ${chkreport_list_cusID}
    ${Get_list_cusname}    Get Text    ${chkreport_list_cusname}
    ${Get_list_hospital}    Get Text    ${chkreport_list_hospital}
    ${Get_list_checkupdate}    Get Text    ${chkreport_list_checkupdate}
    Should Be Equal    ${Verify_HEADER_chkreport}    ${Get_HEADER_chkreport}
    Should Be Equal    ${Verify_HEADER_chkreportlist}    ${Get_HEADER_chkreportlist}
    Should Be Equal    ${Verify_chkreport_sch_hospital}    ${Get_sch_hospital}
    Should Be Equal    ${Verify_chkreport_sch_crm}    ${Get_sch_crm}
    Should Be Equal    ${Verify_chkreport_sch_rangedate}    ${Get_sch_rangedate}
    Should Be Equal    ${Verify_chkreport_sch_rangef}    ${Get_sch_rangef}
    Should Be Equal    ${Verify_chkreport_sch_ranget}    ${Get_sch_ranget}
    Should Be Equal    ${Verify_chkreport_sch_rolebasic}    ${Get_sch_rolebasic}
    Should Be Equal    ${Verify_chkreport_sch_comp}    ${Get_sch_comp}
    Should Be Equal    ${Verify_chkreport_sch_dept}    ${Get_sch_dept}
    Should Be Equal    ${Verify_chkreport_sch_cusacc}    ${Get_sch_cusacc}
    Should Be Equal    ${Verify_chkreport_sch_cusname}    ${Get_sch_cusname}
    Should Be Equal    ${Verify_chkreport_list_no}    ${Get_list_no}
    Should Be Equal    ${Verify_chkreport_list_checkupType}    ${Get_list_checkupType}
    Should Be Equal    ${Verify_chkreport_list_dept}    ${Get_list_dept}
    Should Be Equal    ${Verify_chkreport_list_customtype}    ${Get_list_customtype}
    Should Be Equal    ${Verify_chkreport_list_cusID}    ${Get_list_cusID}
    Should Be Equal    ${Verify_chkreport_list_cusname}    ${Get_list_cusname}
    Should Be Equal    ${Verify_chkreport_list_hospital}    ${Get_list_hospital}
    Should Be Equal    ${Verify_chkreport_list_checkupdate}    ${Get_list_checkupdate}
    [Teardown]    Close Browser

*** Keywords ***
Click Chk Report Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Chk_Report_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Chk_Report_ID}
    Sleep    1
