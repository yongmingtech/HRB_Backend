*** Settings ***
Documentation     健檢管理 -> 健檢請款作業
Test Setup        Health_check_payment_operation_page
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${HC_payment_operation_page1}    //div[3]/div/a/span[2]
${HC_payment_operation_page2}    //div[6]/a/span
${Tab_HC_payment_operation_XPATH}    //div[2]/div/div/div/a/span    # 健檢請款作業
${Head_HC_payment_operation_sch_XPATH}    //div/div/div/span    # 請款清單查詢
${Head_HC_payment_operation_list_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${HC_payment_operation_sch_hospitalId_XPATH}    //label    # *醫療機構:
${HC_payment_operation_sch_companyId_XPATH}    //td[2]/table/tbody/tr/td/label    # *請款企業:
${HC_payment_operation_sch_deptCode_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款法人:
${HC_payment_operation_sch_status_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款狀態:
${HC_payment_operation_sch_apNo_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 請款單號:
${HC_payment_operation_sch_apDateWaper_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # *請款日期:
${HC_payment_operation_sch_invoiceDateWaper_XPATH}    //tr[2]/td[3]/table/tbody/tr/td/label    # 傳票日期:
${HC_payment_operation_sch_anDateWaper_XPATH}    //tr[2]/td[4]/table/tbody/tr/td/label    # 付款日期:
${HC_payment_operation_sch_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 請款起日
${HC_payment_operation_sch_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 請款迄日
${HC_payment_operation_sch_invoiceDateStart_XPATH}    //td[3]/table/tbody/tr/td[2]/div/div/div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 傳票起日
${HC_payment_operation_sch_invoiceDateEnd_XPATH}    //td[3]/table/tbody/tr/td[2]/div/div/div/table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 傳票迄日
${HC_payment_operation_sch_anDateStart_XPATH}    //td[4]/table/tbody/tr/td[2]/div/div/div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 付款起日
${HC_payment_operation_sch_anDateEnd_XPATH}    //td[4]/table/tbody/tr/td[2]/div/div/div/table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 付款迄日
${HC_payment_operation_list_id_XPATH}    //div[3]/div/div/div/div/span    # No
${HC_payment_operation_list_apNo_XPATH}    //div[4]/div/span    # 請款單號
${HC_payment_operation_list_deptName_XPATH}    //div[5]/div/span    # 請款法人
${HC_payment_operation_list_apDate_XPATH}    //div[7]/div/span    # 請款日期
${HC_payment_operation_list_apTotalcash_XPATH}    //div[9]/div/span    # 請款總金額
${HC_payment_operation_list_invoiceDate_XPATH}    //div[10]/div/span    # 傳票日期
${HC_payment_operation_list_invoiceNo_XPATH}    //div[11]/div/span    # 傳票號碼
${HC_payment_operation_list_anDate_XPATH}    //div[12]/div/span    # 付款日期
${HC_payment_operation_list_anTotalcash_XPATH}    //div[14]/div/span    # 付款總金額
${HC_payment_operation_list_status_XPATH}    //div[15]/div/span    # 狀態

*** Test Cases ***
Check Page
    ${Verify_Tab_HC_payment_operation_XPATH}    Convert To String    健檢請款作業
    ${Verify_Head_HC_payment_operation_sch_XPATH}    Convert To String    請款清單查詢
    ${Verify_Head_HC_payment_operation_list_XPATH}    Convert To String    請款清單
    ${Verify_HC_payment_operation_sch_hospitalId}    Convert To String    *醫療機構:
    ${Verify_HC_payment_operation_sch_companyId}    Convert To String    *請款企業:
    ${Verify_HC_payment_operation_sch_deptCode}    Convert To String    請款法人:
    ${Verify_HC_payment_operation_sch_status}    Convert To String    請款狀態:
    ${Verify_HC_payment_operation_sch_apNo}    Convert To String    請款單號:
    ${Verify_HC_payment_operation_sch_apDateWaper}    Convert To String    *請款日期:
    ${Verify_HC_payment_operation_sch_invoiceDateWaper}    Convert To String    傳票日期:
    ${Verify_HC_payment_operation_sch_anDateWaper}    Convert To String    付款日期:
    ${Verify_HC_payment_operation_sch_apDateStart}    Convert To String    2016/01/01
    ${Verify_HC_payment_operation_sch_apDateEnd}    Convert To String    2016/12/31
    #${HC_payment_operation_sch_invoiceDateStart}    Convert To String    # 傳票起日
    #${HC_payment_operation_sch_invoiceDateEnd}    Convert To String    # 傳票迄日
    #${HC_payment_operation_sch_anDateStart}    Convert To String    # 付款起日
    #${HC_payment_operation_sch_anDateEnd}    Convert To String    # 付款迄日
    ${Verify_HC_payment_operation_list_id_XPATH}    Convert To String    No
    ${Verify_HC_payment_operation_list_apNo_XPATH}    Convert To String    請款單號
    ${Verify_HC_payment_operation_list_deptName_XPATH}    Convert To String    請款法人
    ${Verify_HC_payment_operation_list_apDate_XPATH}    Convert To String    請款日期
    ${Verify_HC_payment_operation_list_apTotalcash_XPATH}    Convert To String    請款總金額
    ${Verify_HC_payment_operation_list_invoiceDate_XPATH}    Convert To String    傳票日期
    ${Verify_HC_payment_operation_list_invoiceNo_XPATH}    Convert To String    傳票號碼
    ${Verify_HC_payment_operation_list_anDate_XPATH}    Convert To String    付款日期
    ${Verify_HC_payment_operation_list_anTotalcash_XPATH}    Convert To String    付款總金額
    ${Verify_HC_payment_operation_list_status_XPATH}    Convert To String    狀態
    ${Get_Tab_HC_payment_operation}    Get Text    xpath=${Tab_HC_payment_operation_XPATH}
    ${Get_Head_HC_payment_operation_sch}    Get Text    xpath=${Head_HC_payment_operation_sch_XPATH}
    ${Get_Head_HC_payment_operation_list}    Get Text    xpath=${Head_HC_payment_operation_list_XPATH}
    ${Get_HC_payment_operation_sch_hospitalId}    Get Text    xpath=${HC_payment_operation_sch_hospitalId_XPATH}
    ${Get_HC_payment_operation_sch_companyId}    Get Text    xpath=${HC_payment_operation_sch_companyId_XPATH}
    ${Get_HC_payment_operation_sch_deptCode}    Get Text    xpath=${HC_payment_operation_sch_deptCode_XPATH}
    ${Get_HC_payment_operation_sch_status}    Get Text    xpath=${HC_payment_operation_sch_status_XPATH}
    ${Get_HC_payment_operation_sch_apNo}    Get Text    xpath=${HC_payment_operation_sch_apNo_XPATH}
    ${Get_HC_payment_operation_sch_apDateWaper}    Get Text    xpath=${HC_payment_operation_sch_apDateWaper_XPATH}
    ${Get_HC_payment_operation_sch_invoiceDateWaper}    Get Text    xpath=${HC_payment_operation_sch_invoiceDateWaper_XPATH}
    ${Get_HC_payment_operation_sch_anDateWaper}    Get Text    xpath=${HC_payment_operation_sch_anDateWaper_XPATH}
    ${Get_HC_payment_operation_sch_apDateStart}    Get Value    xpath=${HC_payment_operation_sch_apDateStart_XPATH}
    ${Get_HC_payment_operation_sch_apDateEnd}    Get Value    xpath=${HC_payment_operation_sch_apDateEnd_XPATH}
    # ${Get_HC_payment_operation_sch_invoiceDateStart}    Get Text    xpath=${HC_payment_operation_sch_invoiceDateStart_XPATH}
    # ${Get_HC_payment_operation_sch_invoiceDateEnd}    Get Text    xpath=${HC_payment_operation_sch_invoiceDateEnd_XPATH}
    # ${Get_HC_payment_operation_sch_anDateStart}    Get Text    xpath=${HC_payment_operation_sch_anDateStart_XPATH}
    # ${Get_HC_payment_operation_sch_anDateEnd}    Get Text    xpath=${HC_payment_operation_sch_anDateEnd_XPATH}
    ${Get_HC_payment_operation_list_id}    Get Text    xpath=${HC_payment_operation_list_id_XPATH}
    ${Get_HC_payment_operation_list_apNo}    Get Text    xpath=${HC_payment_operation_list_apNo_XPATH}
    ${Get_HC_payment_operation_list_deptName}    Get Text    xpath=${HC_payment_operation_list_deptName_XPATH}
    ${Get_HC_payment_operation_list_apDate}    Get Text    xpath=${HC_payment_operation_list_apDate_XPATH}
    ${Get_HC_payment_operation_list_apTotalcash}    Get Text    xpath=${HC_payment_operation_list_apTotalcash_XPATH}
    ${Get_HC_payment_operation_list_invoiceDate}    Get Text    xpath=${HC_payment_operation_list_invoiceDate_XPATH}
    ${Get_HC_payment_operation_list_invoiceNo}    Get Text    xpath=${HC_payment_operation_list_invoiceNo_XPATH}
    ${Get_HC_payment_operation_list_anDate}    Get Text    xpath=${HC_payment_operation_list_anDate_XPATH}
    ${Get_HC_payment_operation_list_anTotalcash}    Get Text    xpath=${HC_payment_operation_list_anTotalcash_XPATH}
    ${Get_HC_payment_operation_list_status}    Get Text    xpath=${HC_payment_operation_list_status_XPATH}
    Should Be Equal    ${Verify_Tab_HC_payment_operation_XPATH}    ${Get_Tab_HC_payment_operation}
    Should Be Equal    ${Verify_Head_HC_payment_operation_sch_XPATH}    ${Get_Head_HC_payment_operation_sch}
    Should Be Equal    ${Verify_Head_HC_payment_operation_list_XPATH}    ${Get_Head_HC_payment_operation_list}
    Should Be Equal    ${Verify_HC_payment_operation_sch_hospitalId}    ${Get_HC_payment_operation_sch_hospitalId}
    Should Be Equal    ${Verify_HC_payment_operation_sch_companyId}    ${Get_HC_payment_operation_sch_companyId}
    Should Be Equal    ${Verify_HC_payment_operation_sch_deptCode}    ${Get_HC_payment_operation_sch_deptCode}
    Should Be Equal    ${Verify_HC_payment_operation_sch_status}    ${Get_HC_payment_operation_sch_status}
    Should Be Equal    ${Verify_HC_payment_operation_sch_apNo}    ${Get_HC_payment_operation_sch_apNo}
    Should Be Equal    ${Verify_HC_payment_operation_sch_apDateWaper}    ${Get_HC_payment_operation_sch_apDateWaper}
    Should Be Equal    ${Verify_HC_payment_operation_sch_invoiceDateWaper}    ${Get_HC_payment_operation_sch_invoiceDateWaper}
    Should Be Equal    ${Verify_HC_payment_operation_sch_anDateWaper}    ${Get_HC_payment_operation_sch_anDateWaper}
    Should Be Equal    ${Verify_HC_payment_operation_sch_apDateStart}    ${Get_HC_payment_operation_sch_apDateStart}
    Should Be Equal    ${Verify_HC_payment_operation_sch_apDateEnd}    ${Get_HC_payment_operation_sch_apDateEnd}
    # Should Be Equal    # ${Verify_HC_payment_operation_sch_invoiceDateStart}    # ${Get_HC_payment_operation_sch_invoiceDateStart}
    # Should Be Equal    # ${Verify_HC_payment_operation_sch_invoiceDateEnd}    # ${Get_HC_payment_operation_sch_invoiceDateEnd}
    # Should Be Equal    # ${Verify_HC_payment_operation_sch_anDateStart}    # ${Get_HC_payment_operation_sch_anDateStart}
    # Should Be Equal    # ${Verify_HC_payment_operation_sch_anDateEnd}    # ${Get_HC_payment_operation_sch_anDateEnd}
    Should Be Equal    ${Verify_HC_payment_operation_list_id_XPATH}    ${Get_HC_payment_operation_list_id}
    Should Be Equal    ${Verify_HC_payment_operation_list_apNo_XPATH}    ${Get_HC_payment_operation_list_apNo}
    Should Be Equal    ${Verify_HC_payment_operation_list_deptName_XPATH}    ${Get_HC_payment_operation_list_deptName}
    Should Be Equal    ${Verify_HC_payment_operation_list_apDate_XPATH}    ${Get_HC_payment_operation_list_apDate}
    Should Be Equal    ${Verify_HC_payment_operation_list_apTotalcash_XPATH}    ${Get_HC_payment_operation_list_apTotalcash}
    Should Be Equal    ${Verify_HC_payment_operation_list_invoiceDate_XPATH}    ${Get_HC_payment_operation_list_invoiceDate}
    Should Be Equal    ${Verify_HC_payment_operation_list_invoiceNo_XPATH}    ${Get_HC_payment_operation_list_invoiceNo}
    Should Be Equal    ${Verify_HC_payment_operation_list_anDate_XPATH}    ${Get_HC_payment_operation_list_anDate}
    Should Be Equal    ${Verify_HC_payment_operation_list_anTotalcash_XPATH}    ${Get_HC_payment_operation_list_anTotalcash}
    Should Be Equal    ${Verify_HC_payment_operation_list_status_XPATH}    ${Get_HC_payment_operation_list_status}
    [Teardown]    Close Browser

*** Keywords ***
Health_check_payment_operation_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${HC_payment_operation_page1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${HC_payment_operation_page1}
    Click Element    xpath=${HC_payment_operation_page1}
    Wait Until Element Is Visible    xpath=${HC_payment_operation_page2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${HC_payment_operation_page2}
