*** Settings ***
Documentation     健檢管理 -> 健檢請款作業
Test Setup        Checkup_Invoice_Operation_page
Resource          ../DataBase.robot
Resource          ../Login.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Checkup_Invoice_Operation_Page}    //div[6]/a/span
${Tab_Checkup_Invoice_Operation_XPATH}    //div[2]/div/div/div/a/span    # 健檢請款作業
${Head_Checkup_Invoice_Operation_Search_XPATH}    //div/div/div/span    # 請款清單查詢
${Head_Checkup_Invoice_Operation_List_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${Checkup_Invoice_Operation_Search_hospitalId_XPATH}    //label    # *醫療機構:
${Checkup_Invoice_Operation_Search_companyId_XPATH}    //td[2]/table/tbody/tr/td/label    # *請款企業:
${Checkup_Invoice_Operation_Search_deptCode_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款法人:
${Checkup_Invoice_Operation_Search_status_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款狀態:
${Checkup_Invoice_Operation_Search_apNo_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 請款單號:
${Checkup_Invoice_Operation_Search_apDateWaper_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # *請款日期:
${Checkup_Invoice_Operation_Search_invoiceDateWaper_XPATH}    //tr[2]/td[3]/table/tbody/tr/td/label    # 傳票日期:
${Checkup_Invoice_Operation_Search_anDateWaper_XPATH}    //tr[2]/td[4]/table/tbody/tr/td/label    # 付款日期:
${Checkup_Invoice_Operation_Search_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 請款起日
${Checkup_Invoice_Operation_Search_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 請款迄日
${Checkup_Invoice_Operation_Search_invoiceDateStart_XPATH}    //td[3]/table/tbody/tr/td[2]/div/div/div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 傳票起日
${Checkup_Invoice_Operation_Search_invoiceDateEnd_XPATH}    //td[3]/table/tbody/tr/td[2]/div/div/div/table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 傳票迄日
${Checkup_Invoice_Operation_Search_anDateStart_XPATH}    //td[4]/table/tbody/tr/td[2]/div/div/div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 付款起日
${Checkup_Invoice_Operation_Search_anDateEnd_XPATH}    //td[4]/table/tbody/tr/td[2]/div/div/div/table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 付款迄日
${Checkup_Invoice_Operation_List_id_XPATH}    //div[3]/div/div/div/div/span    # No
${Checkup_Invoice_Operation_List_apNo_XPATH}    //div[4]/div/span    # 請款單號
${Checkup_Invoice_Operation_List_deptName_XPATH}    //div[5]/div/span    # 請款法人
${Checkup_Invoice_Operation_List_apDate_XPATH}    //div[7]/div/span    # 請款日期
${Checkup_Invoice_Operation_List_apTotalcash_XPATH}    //div[9]/div/span    # 請款總金額
${Checkup_Invoice_Operation_List_invoiceDate_XPATH}    //div[10]/div/span    # 傳票日期
${Checkup_Invoice_Operation_List_invoiceNo_XPATH}    //div[11]/div/span    # 傳票號碼
${Checkup_Invoice_Operation_List_anDate_XPATH}    //div[12]/div/span    # 付款日期
${Checkup_Invoice_Operation_List_anTotalcash_XPATH}    //div[14]/div/span    # 付款總金額
${Checkup_Invoice_Operation_List_status_XPATH}    //div[15]/div/span    # 狀態

*** Test Cases ***
Check Page
    ${ap_Start_Date}    ${ap_End_Date}    year_range
    ${Verify_Tab_Checkup_Invoice_Operation_XPATH}    Convert To String    健檢請款作業
    ${Verify_Head_Checkup_Invoice_Operation_Search_XPATH}    Convert To String    請款清單查詢
    ${Verify_Head_Checkup_Invoice_Operation_List_XPATH}    Convert To String    請款清單
    ${Verify_Checkup_Invoice_Operation_Search_hospitalId}    Convert To String    *醫療機構:
    ${Verify_Checkup_Invoice_Operation_Search_companyId}    Convert To String    *請款企業:
    ${Verify_Checkup_Invoice_Operation_Search_deptCode}    Convert To String    請款法人:
    ${Verify_Checkup_Invoice_Operation_Search_status}    Convert To String    請款狀態:
    ${Verify_Checkup_Invoice_Operation_Search_apNo}    Convert To String    請款單號:
    ${Verify_Checkup_Invoice_Operation_Search_apDateWaper}    Convert To String    *請款日期:
    ${Verify_Checkup_Invoice_Operation_Search_invoiceDateWaper}    Convert To String    傳票日期:
    ${Verify_Checkup_Invoice_Operation_Search_anDateWaper}    Convert To String    付款日期:
    #${Verify_Checkup_Invoice_Operation_Search_apDateStart}    Convert To String    2016/01/01
    #${Verify_Checkup_Invoice_Operation_Search_apDateEnd}    Convert To String    2016/12/31
    #${Checkup_Invoice_Operation_Search_invoiceDateStart}    Convert To String    # 傳票起日
    #${Checkup_Invoice_Operation_Search_invoiceDateEnd}    Convert To String    # 傳票迄日
    #${Checkup_Invoice_Operation_Search_anDateStart}    Convert To String    # 付款起日
    #${Checkup_Invoice_Operation_Search_anDateEnd}    Convert To String    # 付款迄日
    ${Verify_Checkup_Invoice_Operation_List_id_XPATH}    Convert To String    No
    ${Verify_Checkup_Invoice_Operation_List_apNo_XPATH}    Convert To String    請款單號
    ${Verify_Checkup_Invoice_Operation_List_deptName_XPATH}    Convert To String    請款法人
    ${Verify_Checkup_Invoice_Operation_List_apDate_XPATH}    Convert To String    請款日期
    ${Verify_Checkup_Invoice_Operation_List_apTotalcash_XPATH}    Convert To String    請款總金額
    ${Verify_Checkup_Invoice_Operation_List_invoiceDate_XPATH}    Convert To String    傳票日期
    ${Verify_Checkup_Invoice_Operation_List_invoiceNo_XPATH}    Convert To String    傳票號碼
    ${Verify_Checkup_Invoice_Operation_List_anDate_XPATH}    Convert To String    付款日期
    ${Verify_Checkup_Invoice_Operation_List_anTotalcash_XPATH}    Convert To String    付款總金額
    ${Verify_Checkup_Invoice_Operation_List_status_XPATH}    Convert To String    狀態
    ${Get_Tab_Checkup_Invoice_Operation}    Get Text    xpath=${Tab_Checkup_Invoice_Operation_XPATH}
    ${Get_Head_Checkup_Invoice_Operation_Search}    Get Text    xpath=${Head_Checkup_Invoice_Operation_Search_XPATH}
    ${Get_Head_Checkup_Invoice_Operation_List}    Get Text    xpath=${Head_Checkup_Invoice_Operation_List_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_hospitalId}    Get Text    xpath=${Checkup_Invoice_Operation_Search_hospitalId_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_companyId}    Get Text    xpath=${Checkup_Invoice_Operation_Search_companyId_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_deptCode}    Get Text    xpath=${Checkup_Invoice_Operation_Search_deptCode_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_status}    Get Text    xpath=${Checkup_Invoice_Operation_Search_status_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_apNo}    Get Text    xpath=${Checkup_Invoice_Operation_Search_apNo_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_apDateWaper}    Get Text    xpath=${Checkup_Invoice_Operation_Search_apDateWaper_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_invoiceDateWaper}    Get Text    xpath=${Checkup_Invoice_Operation_Search_invoiceDateWaper_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_anDateWaper}    Get Text    xpath=${Checkup_Invoice_Operation_Search_anDateWaper_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_apDateStart}    Get Value    xpath=${Checkup_Invoice_Operation_Search_apDateStart_XPATH}
    ${Get_Checkup_Invoice_Operation_Search_apDateEnd}    Get Value    xpath=${Checkup_Invoice_Operation_Search_apDateEnd_XPATH}
    # ${Get_Checkup_Invoice_Operation_Search_invoiceDateStart}    Get Text    xpath=${Checkup_Invoice_Operation_Search_invoiceDateStart_XPATH}
    # ${Get_Checkup_Invoice_Operation_Search_invoiceDateEnd}    Get Text    xpath=${Checkup_Invoice_Operation_Search_invoiceDateEnd_XPATH}
    # ${Get_Checkup_Invoice_Operation_Search_anDateStart}    Get Text    xpath=${Checkup_Invoice_Operation_Search_anDateStart_XPATH}
    # ${Get_Checkup_Invoice_Operation_Search_anDateEnd}    Get Text    xpath=${Checkup_Invoice_Operation_Search_anDateEnd_XPATH}
    ${Get_Checkup_Invoice_Operation_List_id}    Get Text    xpath=${Checkup_Invoice_Operation_List_id_XPATH}
    ${Get_Checkup_Invoice_Operation_List_apNo}    Get Text    xpath=${Checkup_Invoice_Operation_List_apNo_XPATH}
    ${Get_Checkup_Invoice_Operation_List_deptName}    Get Text    xpath=${Checkup_Invoice_Operation_List_deptName_XPATH}
    ${Get_Checkup_Invoice_Operation_List_apDate}    Get Text    xpath=${Checkup_Invoice_Operation_List_apDate_XPATH}
    ${Get_Checkup_Invoice_Operation_List_apTotalcash}    Get Text    xpath=${Checkup_Invoice_Operation_List_apTotalcash_XPATH}
    ${Get_Checkup_Invoice_Operation_List_invoiceDate}    Get Text    xpath=${Checkup_Invoice_Operation_List_invoiceDate_XPATH}
    ${Get_Checkup_Invoice_Operation_List_invoiceNo}    Get Text    xpath=${Checkup_Invoice_Operation_List_invoiceNo_XPATH}
    ${Get_Checkup_Invoice_Operation_List_anDate}    Get Text    xpath=${Checkup_Invoice_Operation_List_anDate_XPATH}
    ${Get_Checkup_Invoice_Operation_List_anTotalcash}    Get Text    xpath=${Checkup_Invoice_Operation_List_anTotalcash_XPATH}
    ${Get_Checkup_Invoice_Operation_List_status}    Get Text    xpath=${Checkup_Invoice_Operation_List_status_XPATH}
    Should Be Equal    ${Verify_Tab_Checkup_Invoice_Operation_XPATH}    ${Get_Tab_Checkup_Invoice_Operation}
    Should Be Equal    ${Verify_Head_Checkup_Invoice_Operation_Search_XPATH}    ${Get_Head_Checkup_Invoice_Operation_Search}
    Should Be Equal    ${Verify_Head_Checkup_Invoice_Operation_List_XPATH}    ${Get_Head_Checkup_Invoice_Operation_List}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_hospitalId}    ${Get_Checkup_Invoice_Operation_Search_hospitalId}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_companyId}    ${Get_Checkup_Invoice_Operation_Search_companyId}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_deptCode}    ${Get_Checkup_Invoice_Operation_Search_deptCode}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_status}    ${Get_Checkup_Invoice_Operation_Search_status}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_apNo}    ${Get_Checkup_Invoice_Operation_Search_apNo}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_apDateWaper}    ${Get_Checkup_Invoice_Operation_Search_apDateWaper}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_invoiceDateWaper}    ${Get_Checkup_Invoice_Operation_Search_invoiceDateWaper}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_Search_anDateWaper}    ${Get_Checkup_Invoice_Operation_Search_anDateWaper}
    Should Be Equal    ${ap_Start_date}    ${Get_Checkup_Invoice_Operation_Search_apDateStart}
    Should Be Equal    ${ap_End_date}    ${Get_Checkup_Invoice_Operation_Search_apDateEnd}
    # Should Be Equal    # ${Verify_Checkup_Invoice_Operation_Search_invoiceDateStart}    # ${Get_Checkup_Invoice_Operation_Search_invoiceDateStart}
    # Should Be Equal    # ${Verify_Checkup_Invoice_Operation_Search_invoiceDateEnd}    # ${Get_Checkup_Invoice_Operation_Search_invoiceDateEnd}
    # Should Be Equal    # ${Verify_Checkup_Invoice_Operation_Search_anDateStart}    # ${Get_Checkup_Invoice_Operation_Search_anDateStart}
    # Should Be Equal    # ${Verify_Checkup_Invoice_Operation_Search_anDateEnd}    # ${Get_Checkup_Invoice_Operation_Search_anDateEnd}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_id_XPATH}    ${Get_Checkup_Invoice_Operation_List_id}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_apNo_XPATH}    ${Get_Checkup_Invoice_Operation_List_apNo}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_deptName_XPATH}    ${Get_Checkup_Invoice_Operation_List_deptName}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_apDate_XPATH}    ${Get_Checkup_Invoice_Operation_List_apDate}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_apTotalcash_XPATH}    ${Get_Checkup_Invoice_Operation_List_apTotalcash}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_invoiceDate_XPATH}    ${Get_Checkup_Invoice_Operation_List_invoiceDate}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_invoiceNo_XPATH}    ${Get_Checkup_Invoice_Operation_List_invoiceNo}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_anDate_XPATH}    ${Get_Checkup_Invoice_Operation_List_anDate}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_anTotalcash_XPATH}    ${Get_Checkup_Invoice_Operation_List_anTotalcash}
    Should Be Equal    ${Verify_Checkup_Invoice_Operation_List_status_XPATH}    ${Get_Checkup_Invoice_Operation_List_status}
    [Teardown]    Close Browser

*** Keywords ***
Checkup_Invoice_Operation_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Checkup_Invoice_Operation_Page}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Invoice_Operation_Page}
