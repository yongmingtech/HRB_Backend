*** Settings ***
Documentation     健檢管理 -> 請款審核作業
Suite Setup
Test Setup        Invoice_Review_Operation_Button
Resource          ../DataBase.robot
Resource          ../Login.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Invoice_Review_page}    //div[7]/a/span    # 請款審核作業
${Tab_Invoice_Review_XPATH}    //div[2]/div/div/div/a/span    # 請款審核作業
${Head_Invoice_Review_Search_XPATH}    //div/div/div/span    # 請款清單查詢
${Head_Invoice_Review_List_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${Invoice_Review_Operation_Search_basicHospital_XPATH}    //label    # 醫療機構:
${Invoice_Review_Operation_Search_deptCode_XPATH}    //td[2]/table/tbody/tr/td/label    # 請款法人:
${Invoice_Review_Operation_Search_status_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款狀態:
${Invoice_Review_Operation_Search_apNo_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款單號:
${Invoice_Review_Operation_Search_apDate_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 請款日期:
${Invoice_Review_Operation_Search_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 請款起日
${Invoice_Review_Operation_Search_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 請款迄日
${Invoice_Review_Operation_List_id_XPATH}    //div[2]/div/div/div/div/span    #
${Invoice_Review_Operation_List_hospitalId_XPATH}    //div[3]/div/span    # 醫療機構
${Invoice_Review_Operation_List_deptCode_XPATH}    //div[5]/div/span    # 請款法人
${Invoice_Review_Operation_List_apNo_XPATH}    //div[6]/div/span    # 請款單號
${Invoice_Review_Operation_List_apDate_XPATH}    //div[7]/div/span    # 請款日期
${Invoice_Review_Operation_List_apApplyDate_XPATH}    //div[8]/div/span    # 請款確認日期
${Invoice_Review_Operation_List_anDate_XPATH}    //div[12]/div/span    # 付款日期
${Invoice_Review_Operation_List_apTotalcash_XPATH}    //div[13]/div/span    # 請款總金額
${Invoice_Review_Operation_List_payStatus_XPATH}    //div[15]/div/span    # 狀態
${Invoice_Review_Operation_List_resvCount_XPATH}    //div[17]/div/span    # 請款人數

*** Test Cases ***
Check Page
    ${ap_Start_Date}    ${ap_End_Date}    year_range
    ${Verify_Tab_Invoice_Review}    Convert To String    請款審核作業
    ${Verify_Head_Invoice_Review_Search}    Convert To String    請款清單查詢
    ${Verify_Head_Invoice_Review_List}    Convert To String    請款清單
    ${Verify_Invoice_Review_Operation_Search_basicHospital}    Convert To String    醫療機構:
    ${Verify_Invoice_Review_Operation_Search_deptCode}    Convert To String    請款法人:
    ${Verify_Invoice_Review_Operation_Search_status}    Convert To String    請款狀態:
    ${Verify_Invoice_Review_Operation_Search_apNo}    Convert To String    請款單號:
    ${Verify_Invoice_Review_Operation_Search_apDate}    Convert To String    *請款日期:
    #${Verify_Invoice_Review_Operation_Search_apDateStart}    Convert To String    2016/01/01
    #${Verify_Invoice_Review_Operation_Search_apDateEnd}    Convert To String    2016/12/31
    ${Verify_Invoice_Review_Operation_List_id}    Convert To String    No
    ${Verify_Invoice_Review_Operation_List_hospitalId}    Convert To String    醫療機構
    ${Verify_Invoice_Review_Operation_List_deptCode}    Convert To String    請款法人
    ${Verify_Invoice_Review_Operation_List_apNo}    Convert To String    請款單號
    ${Verify_Invoice_Review_Operation_List_apDate}    Convert To String    請款日期
    ${Verify_Invoice_Review_Operation_List_apApplyDate}    Convert To String    請款確認日期
    ${Verify_Invoice_Review_Operation_List_anDate}    Convert To String    付款日期
    ${Verify_Invoice_Review_Operation_List_apTotalcash}    Convert To String    請款總金額
    ${Verify_Invoice_Review_Operation_List_payStatus}    Convert To String    狀態
    ${Verify_Invoice_Review_Operation_List_resvCount}    Convert To String    請款人數
    ${Get_Tab_Invoice_Review}    Get Text    xpath=${Tab_Invoice_Review_XPATH}
    ${Get_Head_Invoice_Review_Search}    Get Text    xpath=${Head_Invoice_Review_Search_XPATH}
    ${Get_Head_Invoice_Review_List}    Get Text    xpath=${Head_Invoice_Review_List_XPATH}
    ${Get_Invoice_Review_Operation_Search_basicHospital}    Get Text    xpath=${Invoice_Review_Operation_Search_basicHospital_XPATH}
    ${Get_Invoice_Review_Operation_Search_deptCode}    Get Text    xpath=${Invoice_Review_Operation_Search_deptCode_XPATH}
    ${Get_Invoice_Review_Operation_Search_status}    Get Text    xpath=${Invoice_Review_Operation_Search_status_XPATH}
    ${Get_Invoice_Review_Operation_Search_apNo}    Get Text    xpath=${Invoice_Review_Operation_Search_apNo_XPATH}
    ${Get_Invoice_Review_Operation_Search_apDate}    Get Text    xpath=${Invoice_Review_Operation_Search_apDate_XPATH}
    ${Get_Invoice_Review_Operation_Search_apDateStart}    Get Value    xpath=${Invoice_Review_Operation_Search_apDateStart_XPATH}
    ${Get_Invoice_Review_Operation_Search_apDateEnd}    Get Value    xpath=${Invoice_Review_Operation_Search_apDateEnd_XPATH}
    ${Get_Invoice_Review_Operation_List_id}    Get Text    xpath=${Invoice_Review_Operation_List_id_XPATH}
    ${Get_Invoice_Review_Operation_List_hospitalId}    Get Text    xpath=${Invoice_Review_Operation_List_hospitalId_XPATH}
    ${Get_Invoice_Review_Operation_List_deptCode}    Get Text    xpath=${Invoice_Review_Operation_List_deptCode_XPATH}
    ${Get_Invoice_Review_Operation_List_apNo}    Get Text    xpath=${Invoice_Review_Operation_List_apNo_XPATH}
    ${Get_Invoice_Review_Operation_List_apDate}    Get Text    xpath=${Invoice_Review_Operation_List_apDate_XPATH}
    ${Get_Invoice_Review_Operation_List_apApplyDate}    Get Text    xpath=${Invoice_Review_Operation_List_apApplyDate_XPATH}
    ${Get_Invoice_Review_Operation_List_anDate}    Get Text    xpath=${Invoice_Review_Operation_List_anDate_XPATH}
    ${Get_Invoice_Review_Operation_List_apTotalcash}    Get Text    xpath=${Invoice_Review_Operation_List_apTotalcash_XPATH}
    ${Get_Invoice_Review_Operation_List_payStatus}    Get Text    xpath=${Invoice_Review_Operation_List_payStatus_XPATH}
    ${Get_Invoice_Review_Operation_List_resvCount}    Get Text    xpath=${Invoice_Review_Operation_List_resvCount_XPATH}
    Should Be Equal    ${Verify_Tab_Invoice_Review}    ${Get_Tab_Invoice_Review}
    Should Be Equal    ${Verify_Head_Invoice_Review_Search}    ${Get_Head_Invoice_Review_Search}
    Should Be Equal    ${Verify_Head_Invoice_Review_List}    ${Get_Head_Invoice_Review_List}
    Should Be Equal    ${Verify_Invoice_Review_Operation_Search_basicHospital}    ${Get_Invoice_Review_Operation_Search_basicHospital}
    Should Be Equal    ${Verify_Invoice_Review_Operation_Search_deptCode}    ${Get_Invoice_Review_Operation_Search_deptCode}
    Should Be Equal    ${Verify_Invoice_Review_Operation_Search_status}    ${Get_Invoice_Review_Operation_Search_status}
    Should Be Equal    ${Verify_Invoice_Review_Operation_Search_apNo}    ${Get_Invoice_Review_Operation_Search_apNo}
    Should Be Equal    ${Verify_Invoice_Review_Operation_Search_apDate}    ${Get_Invoice_Review_Operation_Search_apDate}
    Should Be Equal    ${ap_Start_date}    ${Get_Invoice_Review_Operation_Search_apDateStart}
    Should Be Equal    ${ap_End_date}    ${Get_Invoice_Review_Operation_Search_apDateEnd}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_id}    ${Get_Invoice_Review_Operation_List_id}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_hospitalId}    ${Get_Invoice_Review_Operation_List_hospitalId}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_deptCode}    ${Get_Invoice_Review_Operation_List_deptCode}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_apNo}    ${Get_Invoice_Review_Operation_List_apNo}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_apDate}    ${Get_Invoice_Review_Operation_List_apDate}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_apApplyDate}    ${Get_Invoice_Review_Operation_List_apApplyDate}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_anDate}    ${Get_Invoice_Review_Operation_List_anDate}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_apTotalcash}    ${Get_Invoice_Review_Operation_List_apTotalcash}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_payStatus}    ${Get_Invoice_Review_Operation_List_payStatus}
    Should Be Equal    ${Verify_Invoice_Review_Operation_List_resvCount}    ${Get_Invoice_Review_Operation_List_resvCount}
    [Teardown]    Close browser

*** Keywords ***
Invoice_Review_Operation_Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Invoice_Review_page}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Invoice_Review_page}
    Sleep    1
