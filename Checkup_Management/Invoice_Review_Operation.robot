*** Settings ***
Documentation     健檢管理 -> 請款審核作業
Suite Setup       Invoice_Review_Operation_Button
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${Invoice_Review_page1}    //div[3]/div/a/span[2]    # 健檢管理
${Invoice_Review_page2}    //div[7]/a/span    # 請款審核作業
${Tab_Invoice_Review_XPATH}    //div[2]/div/div/div/a/span    # 請款審核作業
${Head_Invoice_Review_sch_XPATH}    //div/div/div/span    # 請款清單查詢
${Head_Invoice_Review_list_XPATH}    //div[3]/div/div/div/div/div/span    # 請款清單
${Invoice_Review_operation_sch_basicHospital_XPATH}    //label    # 醫療機構:
${Invoice_Review_operation_sch_deptCode_XPATH}    //td[2]/table/tbody/tr/td/label    # 請款法人:
${Invoice_Review_operation_sch_status_XPATH}    //td[3]/table/tbody/tr/td/label    # 請款狀態:
${Invoice_Review_operation_sch_apNo_XPATH}    //td[4]/table/tbody/tr/td/label    # 請款單號:
${Invoice_Review_operation_sch_apDate_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 請款日期:
${Invoice_Review_operation_sch_apDateStart_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # # 請款起日
${Invoice_Review_operation_sch_apDateEnd_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # # 請款迄日
${Invoice_Review_operation_list_id_XPATH}    //div[2]/div/div/div/div/span    #
${Invoice_Review_operation_list_hospitalId_XPATH}    //div[3]/div/span    # 醫療機構
${Invoice_Review_operation_list_deptCode_XPATH}    //div[5]/div/span    # 請款法人
${Invoice_Review_operation_list_apNo_XPATH}    //div[6]/div/span    # 請款單號
${Invoice_Review_operation_list_apDate_XPATH}    //div[7]/div/span    # 請款日期
${Invoice_Review_operation_list_apApplyDate_XPATH}    //div[8]/div/span    # 請款確認日期
${Invoice_Review_operation_list_anDate_XPATH}    //div[12]/div/span    # 付款日期
${Invoice_Review_operation_list_apTotalcash_XPATH}    //div[13]/div/span    # 請款總金額
${Invoice_Review_operation_list_payStatus_XPATH}    //div[15]/div/span    # 狀態
${Invoice_Review_operation_list_resvCount_XPATH}    //div[17]/div/span    # 請款人數

*** Test Cases ***
Check Page
    ${Verify_Tab_Invoice_Review}    Convert To String    請款審核作業
    ${Verify_Head_Invoice_Review_sch}    Convert To String    請款清單查詢
    ${Verify_Head_Invoice_Review_list}    Convert To String    請款清單
    ${Verify_Invoice_Review_operation_sch_basicHospital}    Convert To String    醫療機構:
    ${Verify_Invoice_Review_operation_sch_deptCode}    Convert To String    請款法人:
    ${Verify_Invoice_Review_operation_sch_status}    Convert To String    請款狀態:
    ${Verify_Invoice_Review_operation_sch_apNo}    Convert To String    請款單號:
    ${Verify_Invoice_Review_operation_sch_apDate}    Convert To String    *請款日期:
    ${Verify_Invoice_Review_operation_sch_apDateStart}    Convert To String    2016/01/01
    ${Verify_Invoice_Review_operation_sch_apDateEnd}    Convert To String    2016/12/31
    ${Verify_Invoice_Review_operation_list_id}    Convert To String    No
    ${Verify_Invoice_Review_operation_list_hospitalId}    Convert To String    醫療機構
    ${Verify_Invoice_Review_operation_list_deptCode}    Convert To String    請款法人
    ${Verify_Invoice_Review_operation_list_apNo}    Convert To String    請款單號
    ${Verify_Invoice_Review_operation_list_apDate}    Convert To String    請款日期
    ${Verify_Invoice_Review_operation_list_apApplyDate}    Convert To String    請款確認日期
    ${Verify_Invoice_Review_operation_list_anDate}    Convert To String    付款日期
    ${Verify_Invoice_Review_operation_list_apTotalcash}    Convert To String    請款總金額
    ${Verify_Invoice_Review_operation_list_payStatus}    Convert To String    狀態
    ${Verify_Invoice_Review_operation_list_resvCount}    Convert To String    請款人數
    ${Get_Tab_Invoice_Review}    Get Text    xpath=${Tab_Invoice_Review_XPATH}
    ${Get_Head_Invoice_Review_sch}    Get Text    xpath=${Head_Invoice_Review_sch_XPATH}
    ${Get_Head_Invoice_Review_list}    Get Text    xpath=${Head_Invoice_Review_list_XPATH}
    ${Get_Invoice_Review_operation_sch_basicHospital}    Get Text    xpath=${Invoice_Review_operation_sch_basicHospital_XPATH}
    ${Get_Invoice_Review_operation_sch_deptCode}    Get Text    xpath=${Invoice_Review_operation_sch_deptCode_XPATH}
    ${Get_Invoice_Review_operation_sch_status}    Get Text    xpath=${Invoice_Review_operation_sch_status_XPATH}
    ${Get_Invoice_Review_operation_sch_apNo}    Get Text    xpath=${Invoice_Review_operation_sch_apNo_XPATH}
    ${Get_Invoice_Review_operation_sch_apDate}    Get Text    xpath=${Invoice_Review_operation_sch_apDate_XPATH}
    ${Get_Invoice_Review_operation_sch_apDateStart}    Get Value    xpath=${Invoice_Review_operation_sch_apDateStart_XPATH}
    ${Get_Invoice_Review_operation_sch_apDateEnd}    Get Value    xpath=${Invoice_Review_operation_sch_apDateEnd_XPATH}
    ${Get_Invoice_Review_operation_list_id}    Get Text    xpath=${Invoice_Review_operation_list_id_XPATH}
    ${Get_Invoice_Review_operation_list_hospitalId}    Get Text    xpath=${Invoice_Review_operation_list_hospitalId_XPATH}
    ${Get_Invoice_Review_operation_list_deptCode}    Get Text    xpath=${Invoice_Review_operation_list_deptCode_XPATH}
    ${Get_Invoice_Review_operation_list_apNo}    Get Text    xpath=${Invoice_Review_operation_list_apNo_XPATH}
    ${Get_Invoice_Review_operation_list_apDate}    Get Text    xpath=${Invoice_Review_operation_list_apDate_XPATH}
    ${Get_Invoice_Review_operation_list_apApplyDate}    Get Text    xpath=${Invoice_Review_operation_list_apApplyDate_XPATH}
    ${Get_Invoice_Review_operation_list_anDate}    Get Text    xpath=${Invoice_Review_operation_list_anDate_XPATH}
    ${Get_Invoice_Review_operation_list_apTotalcash}    Get Text    xpath=${Invoice_Review_operation_list_apTotalcash_XPATH}
    ${Get_Invoice_Review_operation_list_payStatus}    Get Text    xpath=${Invoice_Review_operation_list_payStatus_XPATH}
    ${Get_Invoice_Review_operation_list_resvCount}    Get Text    xpath=${Invoice_Review_operation_list_resvCount_XPATH}
    Should Be Equal    ${Verify_Tab_Invoice_Review}    ${Get_Tab_Invoice_Review}
    Should Be Equal    ${Verify_Head_Invoice_Review_sch}    ${Get_Head_Invoice_Review_sch}
    Should Be Equal    ${Verify_Head_Invoice_Review_list}    ${Get_Head_Invoice_Review_list}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_basicHospital}    ${Get_Invoice_Review_operation_sch_basicHospital}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_deptCode}    ${Get_Invoice_Review_operation_sch_deptCode}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_status}    ${Get_Invoice_Review_operation_sch_status}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_apNo}    ${Get_Invoice_Review_operation_sch_apNo}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_apDate}    ${Get_Invoice_Review_operation_sch_apDate}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_apDateStart}    ${Get_Invoice_Review_operation_sch_apDateStart}
    Should Be Equal    ${Verify_Invoice_Review_operation_sch_apDateEnd}    ${Get_Invoice_Review_operation_sch_apDateEnd}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_id}    ${Get_Invoice_Review_operation_list_id}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_hospitalId}    ${Get_Invoice_Review_operation_list_hospitalId}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_deptCode}    ${Get_Invoice_Review_operation_list_deptCode}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_apNo}    ${Get_Invoice_Review_operation_list_apNo}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_apDate}    ${Get_Invoice_Review_operation_list_apDate}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_apApplyDate}    ${Get_Invoice_Review_operation_list_apApplyDate}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_anDate}    ${Get_Invoice_Review_operation_list_anDate}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_apTotalcash}    ${Get_Invoice_Review_operation_list_apTotalcash}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_payStatus}    ${Get_Invoice_Review_operation_list_payStatus}
    Should Be Equal    ${Verify_Invoice_Review_operation_list_resvCount}    ${Get_Invoice_Review_operation_list_resvCount}
    [Teardown]    Close browser

*** Keywords ***
Invoice_Review_Operation_Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Invoice_Review_page1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Invoice_Review_page1}
    Click Element    xpath=${Invoice_Review_page1}
    Wait Until Element Is Visible    xpath=${Invoice_Review_page2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Invoice_Review_page2}
    Sleep    1
