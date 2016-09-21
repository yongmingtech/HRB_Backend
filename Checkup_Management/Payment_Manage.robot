*** Settings ***
Documentation     健檢管理 -> 付款管理
Test Setup        Payment_Manage_Page
Resource          ../DataBase.robot
Resource          ../Login.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Payment_Manage_page}    //div[8]/a
${Tab_Payment_Manage_XPATH}    //div[2]/div/div/div/a/span    # 付款管理
${Payment_Manage_Search_XPATH}    //div/div/div/span    # 請款清單查詢
${Payment_Manage_List_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${Payment_Manage_Search_basicHospital_XPATH}    //label    # 醫療機構:
${Payment_Manage_Search_deptCode_XPATH}    //td[2]/table/tbody/tr/td/label    # 請款法人:
${Payment_Manage_Search_status_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款狀態:
${Payment_Manage_Search_apNo_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款單號:
${Payment_Manage_Search_invoiceNo_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 傳票號碼:
${Payment_Manage_Search_apDate_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # *請款日期:
${Payment_Manage_Search_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/01/01
${Payment_Manage_Search_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/12/31
${Payment_Manage_List_id_XPATH}    //div[3]/div/div/div/div/span    # No
${Payment_Manage_List_hospitalId_XPATH}    //div[3]/div/span    # 醫療機構
${Payment_Manage_List_deptCode_XPATH}    //div[5]/div/span    # 請款法人
${Payment_Manage_List_apNo_XPATH}    //div[6]/div/span    # 請款單號
${Payment_Manage_List_apDate_XPATH}    //div[7]/div/span    # 請款日期
${Payment_Manage_List_apApplyDate_XPATH}    //div[8]/div/span    # 請款確認日期
${Payment_Manage_List_anDate_XPATH}    //div[12]/div/span    # 付款日期
${Payment_Manage_List_apTotalcash_XPATH}    //div[13]/div/span    # 請款總金額
${Payment_Manage_List_payStatus_XPATH}    //div[3]/div/div/div[15]/div    # 狀態
${Payment_Manage_List_invoiceNo_XPATH}    //div[16]/div/span    # 傳票號碼
${Payment_Manage_List_PAY_XPATH}    //div[18]/div/span    # 付款

*** Test Cases ***
Check Page
    ${ap_Start_Date}    ${ap_End_Date}    year_range
    ${Verify_Tab_Payment_Manage}    Convert To String    付款管理
    ${Verify_Payment_Manage_Search}    Convert To String    請款清單查詢
    ${Verify_Payment_Manage_List}    Convert To String    請款清單
    ${Verify_Payment_Manage_Search_basicHospital}    Convert To String    醫療機構:
    ${Verify_Payment_Manage_Search_deptCode}    Convert To String    請款法人:
    ${Verify_Payment_Manage_Search_status}    Convert To String    請款狀態:
    ${Verify_Payment_Manage_Search_apNo}    Convert To String    請款單號:
    ${Verify_Payment_Manage_Search_invoiceNo}    Convert To String    傳票號碼:
    ${Verify_Payment_Manage_Search_apDate}    Convert To String    *請款日期:
    #${Verify_Payment_Manage_Search_apDateStart}    Convert To String    2016/01/01
    #${Verify_Payment_Manage_Search_apDateEnd}    Convert To String    2016/12/31
    ${Verify_Payment_Manage_List_id}    Convert To String    No
    ${Verify_Payment_Manage_List_hospitalId}    Convert To String    醫療機構
    ${Verify_Payment_Manage_List_deptCode}    Convert To String    請款法人
    ${Verify_Payment_Manage_List_apNo}    Convert To String    請款單號
    ${Verify_Payment_Manage_List_apDate}    Convert To String    請款日期
    ${Verify_Payment_Manage_List_apApplyDate}    Convert To String    請款確認日期
    ${Verify_Payment_Manage_List_anDate}    Convert To String    付款日期
    ${Verify_Payment_Manage_List_apTotalcash}    Convert To String    請款總金額
    ${Verify_Payment_Manage_List_payStatus}    Convert To String    狀態
    ${Verify_Payment_Manage_List_invoiceNo}    Convert To String    傳票號碼
    ${Verify_Payment_Manage_List_PAY}    Convert To String    付款
    ${Get_Tab_Payment_Manage}    Get Text    xpath=${Tab_Payment_Manage_XPATH}
    ${Get_Payment_Manage_Search}    Get Text    xpath=${Payment_Manage_Search_XPATH}
    ${Get_Payment_Manage_List}    Get Text    xpath=${Payment_Manage_List_XPATH}
    ${Get_Payment_Manage_Search_basicHospital}    Get Text    xpath=${Payment_Manage_Search_basicHospital_XPATH}
    ${Get_Payment_Manage_Search_deptCode}    Get Text    xpath=${Payment_Manage_Search_deptCode_XPATH}
    ${Get_Payment_Manage_Search_status}    Get Text    xpath=${Payment_Manage_Search_status_XPATH}
    ${Get_Payment_Manage_Search_apNo}    Get Text    xpath=${Payment_Manage_Search_apNo_XPATH}
    ${Get_Payment_Manage_Search_invoiceNo}    Get Text    xpath=${Payment_Manage_Search_invoiceNo_XPATH}
    ${Get_Payment_Manage_Search_apDate}    Get Text    xpath=${Payment_Manage_Search_apDate_XPATH}
    ${Get_Payment_Manage_Search_apDateStart}    Get Value    ${Payment_Manage_Search_apDateStart_XPATH}
    ${Get_Payment_Manage_Search_apDateEnd}    Get Value    ${Payment_Manage_Search_apDateEnd_XPATH}
    ${Get_Payment_Manage_List_id}    Get Text    xpath=${Payment_Manage_List_id_XPATH}
    ${Get_Payment_Manage_List_hospitalId}    Get Text    xpath=${Payment_Manage_List_hospitalId_XPATH}
    ${Get_Payment_Manage_List_deptCode}    Get Text    xpath=${Payment_Manage_List_deptCode_XPATH}
    ${Get_Payment_Manage_List_apNo}    Get Text    xpath=${Payment_Manage_List_apNo_XPATH}
    ${Get_Payment_Manage_List_apDate}    Get Text    xpath=${Payment_Manage_List_apDate_XPATH}
    ${Get_Payment_Manage_List_apApplyDate}    Get Text    xpath=${Payment_Manage_List_apApplyDate_XPATH}
    ${Get_Payment_Manage_List_anDate}    Get Text    xpath=${Payment_Manage_List_anDate_XPATH}
    ${Get_Payment_Manage_List_apTotalcash}    Get Text    xpath=${Payment_Manage_List_apTotalcash_XPATH}
    ${Get_Payment_Manage_List_payStatus}    Get Text    xpath=${Payment_Manage_List_payStatus_XPATH}
    ${Get_Payment_Manage_List_invoiceNo}    Get Text    xpath=${Payment_Manage_List_invoiceNo_XPATH}
    ${Get_Payment_Manage_List_PAY}    Get Text    xpath=${Payment_Manage_List_PAY_XPATH}
    Should Be Equal    ${Verify_Tab_Payment_Manage}    ${Get_Tab_Payment_Manage}
    Should Be Equal    ${Verify_Payment_Manage_Search}    ${Get_Payment_Manage_Search}
    Should Be Equal    ${Verify_Payment_Manage_List}    ${Get_Payment_Manage_List}
    Should Be Equal    ${Verify_Payment_Manage_Search_basicHospital}    ${Get_Payment_Manage_Search_basicHospital}
    Should Be Equal    ${Verify_Payment_Manage_Search_deptCode}    ${Get_Payment_Manage_Search_deptCode}
    Should Be Equal    ${Verify_Payment_Manage_Search_status}    ${Get_Payment_Manage_Search_status}
    Should Be Equal    ${Verify_Payment_Manage_Search_apNo}    ${Get_Payment_Manage_Search_apNo}
    Should Be Equal    ${Verify_Payment_Manage_Search_invoiceNo}    ${Get_Payment_Manage_Search_invoiceNo}
    Should Be Equal    ${Verify_Payment_Manage_Search_apDate}    ${Get_Payment_Manage_Search_apDate}
    Should Be Equal    ${ap_Start_Date}    ${Get_Payment_Manage_Search_apDateStart}
    Should Be Equal    ${ap_End_Date}    ${Get_Payment_Manage_Search_apDateEnd}
    Should Be Equal    ${Verify_Payment_Manage_List_id}    ${Get_Payment_Manage_List_id}
    Should Be Equal    ${Verify_Payment_Manage_List_hospitalId}    ${Get_Payment_Manage_List_hospitalId}
    Should Be Equal    ${Verify_Payment_Manage_List_deptCode}    ${Get_Payment_Manage_List_deptCode}
    Should Be Equal    ${Verify_Payment_Manage_List_apNo}    ${Get_Payment_Manage_List_apNo}
    Should Be Equal    ${Verify_Payment_Manage_List_apDate}    ${Get_Payment_Manage_List_apDate}
    Should Be Equal    ${Verify_Payment_Manage_List_apApplyDate}    ${Get_Payment_Manage_List_apApplyDate}
    Should Be Equal    ${Verify_Payment_Manage_List_anDate}    ${Get_Payment_Manage_List_anDate}
    Should Be Equal    ${Verify_Payment_Manage_List_apTotalcash}    ${Get_Payment_Manage_List_apTotalcash}
    Should Be Equal    ${Verify_Payment_Manage_List_payStatus}    ${Get_Payment_Manage_List_payStatus}
    Should Be Equal    ${Verify_Payment_Manage_List_invoiceNo}    ${Get_Payment_Manage_List_invoiceNo}
    Should Be Equal    ${Verify_Payment_Manage_List_PAY}    ${Get_Payment_Manage_List_PAY}
    [Teardown]    Close Browser

*** Keywords ***
Payment_Manage_Page
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Payment_Manage_page}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Payment_Manage_page}
    Sleep    1
