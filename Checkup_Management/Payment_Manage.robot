*** Settings ***
Documentation     健檢管理 -> 付款管理
Test Setup        Payment_Manage_Page
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${Payment_Manage_page1}    //div[3]/div/a/span[2]
${Payment_Manage_page2}    //div[8]/a
${Tab_Payment_Manage_XPATH}    //div[2]/div/div/div/a/span    # 付款管理
${Payment_Manage_sch_XPATH}    //div/div/div/span    # 請款清單查詢
${Payment_Manage_list_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${Payment_Manage_sch_basicHospital_XPATH}    //label    # 醫療機構:
${Payment_Manage_sch_deptCode_XPATH}    //td[2]/table/tbody/tr/td/label    # 請款法人:
${Payment_Manage_sch_status_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款狀態:
${Payment_Manage_sch_apNo_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款單號:
${Payment_Manage_sch_invoiceNo_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 傳票號碼:
${Payment_Manage_sch_apDate_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # *請款日期:
${Payment_Manage_sch_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/01/01
${Payment_Manage_sch_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/12/31
${Payment_Manage_list_id_XPATH}    //div[3]/div/div/div/div/span    # No
${Payment_Manage_list_hospitalId_XPATH}    //div[3]/div/span    # 醫療機構
${Payment_Manage_list_deptCode_XPATH}    //div[5]/div/span    # 請款法人
${Payment_Manage_list_apNo_XPATH}    //div[6]/div/span    # 請款單號
${Payment_Manage_list_apDate_XPATH}    //div[7]/div/span    # 請款日期
${Payment_Manage_list_apApplyDate_XPATH}    //div[8]/div/span    # 請款確認日期
${Payment_Manage_list_anDate_XPATH}    //div[12]/div/span    # 付款日期
${Payment_Manage_list_apTotalcash_XPATH}    //div[13]/div/span    # 請款總金額
${Payment_Manage_list_payStatus_XPATH}    //div[3]/div/div/div[15]/div    # 狀態
${Payment_Manage_list_invoiceNo_XPATH}    //div[16]/div/span    # 傳票號碼
${Payment_Manage_list_PAY_XPATH}    //div[18]/div/span    # 付款

*** Test Cases ***
Check Page
    ${Verify_Tab_Payment_Manage}    Convert To String    付款管理
    ${Verify_Payment_Manage_sch}    Convert To String    請款清單查詢
    ${Verify_Payment_Manage_list}    Convert To String    請款清單
    ${Verify_Payment_Manage_sch_basicHospital}    Convert To String    醫療機構:
    ${Verify_Payment_Manage_sch_deptCode}    Convert To String    請款法人:
    ${Verify_Payment_Manage_sch_status}    Convert To String    請款狀態:
    ${Verify_Payment_Manage_sch_apNo}    Convert To String    請款單號:
    ${Verify_Payment_Manage_sch_invoiceNo}    Convert To String    傳票號碼:
    ${Verify_Payment_Manage_sch_apDate}    Convert To String    *請款日期:
    ${Verify_Payment_Manage_sch_apDateStart}    Convert To String    2016/01/01
    ${Verify_Payment_Manage_sch_apDateEnd}    Convert To String    2016/12/31
    ${Verify_Payment_Manage_list_id}    Convert To String    No
    ${Verify_Payment_Manage_list_hospitalId}    Convert To String    醫療機構
    ${Verify_Payment_Manage_list_deptCode}    Convert To String    請款法人
    ${Verify_Payment_Manage_list_apNo}    Convert To String    請款單號
    ${Verify_Payment_Manage_list_apDate}    Convert To String    請款日期
    ${Verify_Payment_Manage_list_apApplyDate}    Convert To String    請款確認日期
    ${Verify_Payment_Manage_list_anDate}    Convert To String    付款日期
    ${Verify_Payment_Manage_list_apTotalcash}    Convert To String    請款總金額
    ${Verify_Payment_Manage_list_payStatus}    Convert To String    狀態
    ${Verify_Payment_Manage_list_invoiceNo}    Convert To String    傳票號碼
    ${Verify_Payment_Manage_list_PAY}    Convert To String    付款
    ${Get_Tab_Payment_Manage}    Get Text    xpath=${Tab_Payment_Manage_XPATH}
    ${Get_Payment_Manage_sch}    Get Text    xpath=${Payment_Manage_sch_XPATH}
    ${Get_Payment_Manage_list}    Get Text    xpath=${Payment_Manage_list_XPATH}
    ${Get_Payment_Manage_sch_basicHospital}    Get Text    xpath=${Payment_Manage_sch_basicHospital_XPATH}
    ${Get_Payment_Manage_sch_deptCode}    Get Text    xpath=${Payment_Manage_sch_deptCode_XPATH}
    ${Get_Payment_Manage_sch_status}    Get Text    xpath=${Payment_Manage_sch_status_XPATH}
    ${Get_Payment_Manage_sch_apNo}    Get Text    xpath=${Payment_Manage_sch_apNo_XPATH}
    ${Get_Payment_Manage_sch_invoiceNo}    Get Text    xpath=${Payment_Manage_sch_invoiceNo_XPATH}
    ${Get_Payment_Manage_sch_apDate}    Get Text    xpath=${Payment_Manage_sch_apDate_XPATH}
    ${Get_Payment_Manage_sch_apDateStart}    Get Value    ${Payment_Manage_sch_apDateStart_XPATH}
    ${Get_Payment_Manage_sch_apDateEnd}    Get Value    ${Payment_Manage_sch_apDateEnd_XPATH}
    ${Get_Payment_Manage_list_id}    Get Text    xpath=${Payment_Manage_list_id_XPATH}
    ${Get_Payment_Manage_list_hospitalId}    Get Text    xpath=${Payment_Manage_list_hospitalId_XPATH}
    ${Get_Payment_Manage_list_deptCode}    Get Text    xpath=${Payment_Manage_list_deptCode_XPATH}
    ${Get_Payment_Manage_list_apNo}    Get Text    xpath=${Payment_Manage_list_apNo_XPATH}
    ${Get_Payment_Manage_list_apDate}    Get Text    xpath=${Payment_Manage_list_apDate_XPATH}
    ${Get_Payment_Manage_list_apApplyDate}    Get Text    xpath=${Payment_Manage_list_apApplyDate_XPATH}
    ${Get_Payment_Manage_list_anDate}    Get Text    xpath=${Payment_Manage_list_anDate_XPATH}
    ${Get_Payment_Manage_list_apTotalcash}    Get Text    xpath=${Payment_Manage_list_apTotalcash_XPATH}
    ${Get_Payment_Manage_list_payStatus}    Get Text    xpath=${Payment_Manage_list_payStatus_XPATH}
    ${Get_Payment_Manage_list_invoiceNo}    Get Text    xpath=${Payment_Manage_list_invoiceNo_XPATH}
    ${Get_Payment_Manage_list_PAY}    Get Text    xpath=${Payment_Manage_list_PAY_XPATH}
    Should Be Equal    ${Verify_Tab_Payment_Manage}    ${Get_Tab_Payment_Manage}
    Should Be Equal    ${Verify_Payment_Manage_sch}    ${Get_Payment_Manage_sch}
    Should Be Equal    ${Verify_Payment_Manage_list}    ${Get_Payment_Manage_list}
    Should Be Equal    ${Verify_Payment_Manage_sch_basicHospital}    ${Get_Payment_Manage_sch_basicHospital}
    Should Be Equal    ${Verify_Payment_Manage_sch_deptCode}    ${Get_Payment_Manage_sch_deptCode}
    Should Be Equal    ${Verify_Payment_Manage_sch_status}    ${Get_Payment_Manage_sch_status}
    Should Be Equal    ${Verify_Payment_Manage_sch_apNo}    ${Get_Payment_Manage_sch_apNo}
    Should Be Equal    ${Verify_Payment_Manage_sch_invoiceNo}    ${Get_Payment_Manage_sch_invoiceNo}
    Should Be Equal    ${Verify_Payment_Manage_sch_apDate}    ${Get_Payment_Manage_sch_apDate}
    Should Be Equal    ${Verify_Payment_Manage_sch_apDateStart}    ${Get_Payment_Manage_sch_apDateStart}
    Should Be Equal    ${Verify_Payment_Manage_sch_apDateEnd}    ${Get_Payment_Manage_sch_apDateEnd}
    Should Be Equal    ${Verify_Payment_Manage_list_id}    ${Get_Payment_Manage_list_id}
    Should Be Equal    ${Verify_Payment_Manage_list_hospitalId}    ${Get_Payment_Manage_list_hospitalId}
    Should Be Equal    ${Verify_Payment_Manage_list_deptCode}    ${Get_Payment_Manage_list_deptCode}
    Should Be Equal    ${Verify_Payment_Manage_list_apNo}    ${Get_Payment_Manage_list_apNo}
    Should Be Equal    ${Verify_Payment_Manage_list_apDate}    ${Get_Payment_Manage_list_apDate}
    Should Be Equal    ${Verify_Payment_Manage_list_apApplyDate}    ${Get_Payment_Manage_list_apApplyDate}
    Should Be Equal    ${Verify_Payment_Manage_list_anDate}    ${Get_Payment_Manage_list_anDate}
    Should Be Equal    ${Verify_Payment_Manage_list_apTotalcash}    ${Get_Payment_Manage_list_apTotalcash}
    Should Be Equal    ${Verify_Payment_Manage_list_payStatus}    ${Get_Payment_Manage_list_payStatus}
    Should Be Equal    ${Verify_Payment_Manage_list_invoiceNo}    ${Get_Payment_Manage_list_invoiceNo}
    Should Be Equal    ${Verify_Payment_Manage_list_PAY}    ${Get_Payment_Manage_list_PAY}
    [Teardown]    Close Browser

*** Keywords ***
Payment_Manage_Page
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Payment_Manage_page1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Payment_Manage_page1}
    Click Element    xpath=${Payment_Manage_page1}
    Wait Until Element Is Visible    xpath=${Payment_Manage_page2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Payment_Manage_page2}
    Sleep    1
