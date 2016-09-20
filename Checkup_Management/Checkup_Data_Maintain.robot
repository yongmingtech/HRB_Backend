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

*** Variables ***
${Chk_Report_ID1_XPATH}    //div[3]/div/a/span[2]    # 健檢管理
${Chk_Report_ID2_XPATH}    //div[9]/a/span    # 健檢資料維護
${Subpage_chkupreport_XPATH}    //div[2]/div/div/div/a/span    # 健檢資料維護
${HEADER_chkreport_XPATH}    //div/div/div/span    # 健檢資料健檢查詢
${HEADER_chkreportlist_XPATH}    //div[3]/div/div/div/div/div/span    # 健檢清單
${chkreport_sch_hospital_XPATH}    //label    # 健檢查詢 醫療機構:
${chkreport_sch_crm_XPATH}    //td[2]/table/tbody/tr/td/label    # 健檢查詢 健檢類型:
${chkreport_sch_rangedate_XPATH}    //td[3]/table/tbody/tr/td/label    # 健檢查詢 健檢日期:
${chkreport_sch_rangef_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 健檢查詢 2016/01/01
${chkreport_sch_ranget_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 健檢查詢 2016/12/31
${chkreport_sch_rolebasic_XPATH}    //td[4]/table/tbody/tr/td/label    # 健檢查詢 客戶類型:
${chkreport_sch_comp_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 健檢查詢 企業:
${chkreport_sch_dept_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # 健檢查詢 法人:
${chkreport_sch_cusacc_XPATH}    //tr[2]/td[3]/table/tbody/tr/td/label    # 健檢查詢 客戶帳號:
${chkreport_sch_cusname_XPATH}    //tr[2]/td[4]/table/tbody/tr/td/label    # 健檢查詢 客戶姓名:
${chkreport_list_no_XPATH}    //div[3]/div[3]/div/div/div/div    # No
${chkreport_list_checkupType_XPATH}    //div[4]/div/span    # 健檢類型
${chkreport_list_dept_XPATH}    //div[5]/div/span    # 法人
${chkreport_list_customtype_XPATH}    //div[6]/div    # 客戶類型
${chkreport_list_cusID_XPATH}    //div[7]/div/span    # 客戶帳號
${chkreport_list_cusname_XPATH}    //div[8]/div/span    # 客戶姓名
${chkreport_list_hospital_XPATH}    //div[9]/div/span    # 醫療機構
${chkreport_list_checkupdate_XPATH}    //div[10]/div/span    # 健檢日期

*** Test Cases ***
Check Page
    ${Verify_Subpage_chkupreport}=    Convert To String    健檢資料維護
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
    ${Get_Subpage_chkupreport}=    Get Text    xpath=${Subpage_chkupreport_XPATH}
    ${Get_HEADER_chkreport}=    Get Text    xpath=${HEADER_chkreport_XPATH}
    ${Get_HEADER_chkreportlist}=    Get Text    xpath=${HEADER_chkreportlist_XPATH}
    ${Get_sch_hospital}    Get Text    xpath=${chkreport_sch_hospital_XPATH}
    ${Get_sch_crm}    Get Text    xpath=${chkreport_sch_crm_XPATH}
    ${Get_sch_rangedate}    Get Text    xpath=${chkreport_sch_rangedate_XPATH}
    ${Get_sch_rangef}    Get Value    xpath=${chkreport_sch_rangef_XPATH}
    ${Get_sch_ranget}    Get Value    xpath=${chkreport_sch_ranget_XPATH}
    ${Get_sch_rolebasic}    Get Text    xpath=${chkreport_sch_rolebasic_XPATH}
    ${Get_sch_comp}    Get Text    xpath=${chkreport_sch_comp_XPATH}
    ${Get_sch_dept}    Get Text    xpath=${chkreport_sch_dept_XPATH}
    ${Get_sch_cusacc}    Get Text    xpath=${chkreport_sch_cusacc_XPATH}
    ${Get_sch_cusname}    Get Text    xpath=${chkreport_sch_cusname_XPATH}
    ${Get_list_no}    Get Text    xpath=${chkreport_list_no_XPATH}
    ${Get_list_checkupType}    Get Text    xpath=${chkreport_list_checkupType_XPATH}
    ${Get_list_dept}    Get Text    xpath=${chkreport_list_dept_XPATH}
    ${Get_list_customtype}    Get Text    xpath=${chkreport_list_customtype_XPATH}
    ${Get_list_cusID}    Get Text    xpath=${chkreport_list_cusID_XPATH}
    ${Get_list_cusname}    Get Text    xpath=${chkreport_list_cusname_XPATH}
    ${Get_list_hospital}    Get Text    xpath=${chkreport_list_hospital_XPATH}
    ${Get_list_checkupdate}    Get Text    xpath=${chkreport_list_checkupdate_XPATH}
    Should Be Equal    ${Verify_Subpage_chkupreport}    ${Get_Subpage_chkupreport}
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
    [Teardown]    close web browser

*** Keywords ***
Click Chk Report Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Chk_Report_ID1_XPATH}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Chk_Report_ID1_XPATH}
    Click Element    xpath=${Chk_Report_ID1_XPATH}
    Wait Until Element Is Visible    xpath=${Chk_Report_ID2_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Chk_Report_ID2_XPATH}
    Sleep    1

close web browser
    close browser
