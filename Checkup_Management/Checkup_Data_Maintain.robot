*** Settings ***
Documentation     健檢管理 -> 健檢資料維護
Suite Setup
Suite Teardown
Test Setup        Click Chk Report Item Button
Test Teardown
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Chk_Report_ID_XPATH}    //div[9]/a/span    # 健檢資料維護
${Subpage_Checkup_Report_XPATH}    //div[2]/div/div/div/a/span    # 健檢資料維護
${HEADER_Checkup_Report_XPATH}    //div/div/div/span    # 健檢資料健檢查詢
${HEADER_Checkup_Reportlist_XPATH}    //div[3]/div/div/div/div/div/span    # 健檢清單
${Checkup_Report_Search_hospital_XPATH}    //label    # 健檢查詢 醫療機構:
${Checkup_Report_Search_crm_XPATH}    //td[2]/table/tbody/tr/td/label    # 健檢查詢 健檢類型:
${Checkup_Report_Search_resvDate_XPATH}    //td[3]/table/tbody/tr/td/label    # 健檢查詢 健檢日期:
${Checkup_Report_Search_rangef_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 健檢查詢 2016/01/01
${Checkup_Report_Search_ranget_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 健檢查詢 2016/12/31
${Checkup_Report_Search_rolebasic_XPATH}    //td[4]/table/tbody/tr/td/label    # 健檢查詢 客戶類型:
${Checkup_Report_Search_comp_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 健檢查詢 企業:
${Checkup_Report_Search_dept_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # 健檢查詢 法人:
${Checkup_Report_Search_cusacc_XPATH}    //tr[2]/td[3]/table/tbody/tr/td/label    # 健檢查詢 客戶帳號:
${Checkup_Report_Search_cusname_XPATH}    //tr[2]/td[4]/table/tbody/tr/td/label    # 健檢查詢 客戶姓名:
${Checkup_Report_List_no_XPATH}    //div[3]/div[3]/div/div/div/div    # No
${Checkup_Report_List_checkupType_XPATH}    //div[4]/div/span    # 健檢類型
${Checkup_Report_List_dept_XPATH}    //div[5]/div/span    # 法人
${Checkup_Report_List_customtype_XPATH}    //div[6]/div    # 客戶類型
${Checkup_Report_List_cusID_XPATH}    //div[7]/div/span    # 客戶帳號
${Checkup_Report_List_cusname_XPATH}    //div[8]/div/span    # 客戶姓名
${Checkup_Report_List_hospital_XPATH}    //div[9]/div/span    # 醫療機構
${Checkup_Report_List_checkupdate_XPATH}    //div[10]/div/span    # 健檢日期

*** Test Cases ***
Check Page
    ${resv_Start_date}    ${resv_End_date}    year_range
    ${Verify_Subpage_Checkup_Report}=    Convert To String    健檢資料維護
    ${Verify_HEADER_Checkup_Report}=    Convert To String    健檢資料查詢
    ${Verify_HEADER_Checkup_Reportlist}=    Convert To String    健檢清單
    ${Verify_Checkup_Report_Search_hospital}=    Convert To String    醫療機構:
    ${Verify_Checkup_Report_Search_crm}=    Convert To String    健檢類型:
    ${Verify_Checkup_Report_Search_resvDate}=    Convert To String    *健檢日期:
    #${Verify_Checkup_Report_Search_rangef}=    Convert To String    2016/1/1
    #${Verify_Checkup_Report_Search_ranget}=    Convert To String    2016/12/31
    ${Verify_Checkup_Report_Search_rolebasic}=    Convert To String    客戶類型:
    ${Verify_Checkup_Report_Search_comp}=    Convert To String    *企業:
    ${Verify_Checkup_Report_Search_dept}=    Convert To String    法人:
    ${Verify_Checkup_Report_Search_cusacc}=    Convert To String    客戶帳號:
    ${Verify_Checkup_Report_Search_cusname}=    Convert To String    客戶姓名:
    ${Verify_Checkup_Report_List_no}=    Convert To String    No
    ${Verify_Checkup_Report_List_checkupType}=    Convert To String    健檢類型
    ${Verify_Checkup_Report_List_dept}=    Convert To String    法人
    ${Verify_Checkup_Report_List_customtype}=    Convert To String    客戶類型
    ${Verify_Checkup_Report_List_cusID}=    Convert To String    客戶帳號
    ${Verify_Checkup_Report_List_cusname}=    Convert To String    客戶姓名
    ${Verify_Checkup_Report_List_hospital}=    Convert To String    醫療機構
    ${Verify_Checkup_Report_List_checkupdate}=    Convert To String    健檢日期
    ${Get_Subpage_Checkup_Report}=    Get Text    xpath=${Subpage_Checkup_Report_XPATH}
    ${Get_HEADER_Checkup_Report}=    Get Text    xpath=${HEADER_Checkup_Report_XPATH}
    ${Get_HEADER_Checkup_Reportlist}=    Get Text    xpath=${HEADER_Checkup_Reportlist_XPATH}
    ${Get_Checkup_Report_Search_hospital}    Get Text    xpath=${Checkup_Report_Search_hospital_XPATH}
    ${Get_Checkup_Report_Search_crm}    Get Text    xpath=${Checkup_Report_Search_crm_XPATH}
    ${Get_Checkup_Report_Search_resvDate}    Get Text    xpath=${Checkup_Report_Search_resvDate_XPATH}
    ${Get_Checkup_Report_Search_rangef}    Get Value    xpath=${Checkup_Report_Search_rangef_XPATH}
    ${Get_Checkup_Report_Search_ranget}    Get Value    xpath=${Checkup_Report_Search_ranget_XPATH}
    ${Get_Checkup_Report_Search_rolebasic}    Get Text    xpath=${Checkup_Report_Search_rolebasic_XPATH}
    ${Get_Checkup_Report_Search_comp}    Get Text    xpath=${Checkup_Report_Search_comp_XPATH}
    ${Get_Checkup_Report_Search_dept}    Get Text    xpath=${Checkup_Report_Search_dept_XPATH}
    ${Get_Checkup_Report_Search_cusacc}    Get Text    xpath=${Checkup_Report_Search_cusacc_XPATH}
    ${Get_Checkup_Report_Search_cusname}    Get Text    xpath=${Checkup_Report_Search_cusname_XPATH}
    ${Get_Checkup_Report_List_no}    Get Text    xpath=${Checkup_Report_List_no_XPATH}
    ${Get_Checkup_Report_List_checkupType}    Get Text    xpath=${Checkup_Report_List_checkupType_XPATH}
    ${Get_Checkup_Report_List_dept}    Get Text    xpath=${Checkup_Report_List_dept_XPATH}
    ${Get_Checkup_Report_List_customtype}    Get Text    xpath=${Checkup_Report_List_customtype_XPATH}
    ${Get_Checkup_Report_List_cusID}    Get Text    xpath=${Checkup_Report_List_cusID_XPATH}
    ${Get_Checkup_Report_List_cusname}    Get Text    xpath=${Checkup_Report_List_cusname_XPATH}
    ${Get_Checkup_Report_List_hospital}    Get Text    xpath=${Checkup_Report_List_hospital_XPATH}
    ${Get_Checkup_Report_List_checkupdate}    Get Text    xpath=${Checkup_Report_List_checkupdate_XPATH}
    Should Be Equal    ${Verify_Subpage_Checkup_Report}    ${Get_Subpage_Checkup_Report}
    Should Be Equal    ${Verify_HEADER_Checkup_Report}    ${Get_HEADER_Checkup_Report}
    Should Be Equal    ${Verify_HEADER_Checkup_Reportlist}    ${Get_HEADER_Checkup_Reportlist}
    Should Be Equal    ${Verify_Checkup_Report_Search_hospital}    ${Get_Checkup_Report_Search_hospital}
    Should Be Equal    ${Verify_Checkup_Report_Search_crm}    ${Get_Checkup_Report_Search_crm}
    Should Be Equal    ${Verify_Checkup_Report_Search_resvDate}    ${Get_Checkup_Report_Search_resvDate}
    Should Be Equal    ${resv_Start_date}    ${Get_Checkup_Report_Search_rangef}
    Should Be Equal    ${resv_End_date}    ${Get_Checkup_Report_Search_ranget}
    Should Be Equal    ${Verify_Checkup_Report_Search_rolebasic}    ${Get_Checkup_Report_Search_rolebasic}
    Should Be Equal    ${Verify_Checkup_Report_Search_comp}    ${Get_Checkup_Report_Search_comp}
    Should Be Equal    ${Verify_Checkup_Report_Search_dept}    ${Get_Checkup_Report_Search_dept}
    Should Be Equal    ${Verify_Checkup_Report_Search_cusacc}    ${Get_Checkup_Report_Search_cusacc}
    Should Be Equal    ${Verify_Checkup_Report_Search_cusname}    ${Get_Checkup_Report_Search_cusname}
    Should Be Equal    ${Verify_Checkup_Report_List_no}    ${Get_Checkup_Report_List_no}
    Should Be Equal    ${Verify_Checkup_Report_List_checkupType}    ${Get_Checkup_Report_List_checkupType}
    Should Be Equal    ${Verify_Checkup_Report_List_dept}    ${Get_Checkup_Report_List_dept}
    Should Be Equal    ${Verify_Checkup_Report_List_customtype}    ${Get_Checkup_Report_List_customtype}
    Should Be Equal    ${Verify_Checkup_Report_List_cusID}    ${Get_Checkup_Report_List_cusID}
    Should Be Equal    ${Verify_Checkup_Report_List_cusname}    ${Get_Checkup_Report_List_cusname}
    Should Be Equal    ${Verify_Checkup_Report_List_hospital}    ${Get_Checkup_Report_List_hospital}
    Should Be Equal    ${Verify_Checkup_Report_List_checkupdate}    ${Get_Checkup_Report_List_checkupdate}
    [Teardown]    Close Browser

*** Keywords ***
Click Chk Report Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Chk_Report_ID_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Chk_Report_ID_XPATH}
    Sleep    1
