*** Settings ***
Documentation     健檢管理 -> 已健檢資料上傳
...
...               test case 1: check page, verify all show text at this page.
Test Setup        Health_check_data_upload_page
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${HC_data_upload_page1}    //div[3]/div/a/span[2]    # 健檢管理
${HC_data_upload_page2}    //div[5]/a/span    # 健檢視窗
${Tab_HC_data_upload_XPATH}    //div[2]/div/div/div/a/span    # 已健檢資料上傳
#${Head_HC_data_upload_sch_XPATH}    //div[2]/div/div/div/div/div/div/div/div    # 已健檢資料搜尋
${Head_HC_data_upload_list_XPATH}    //div[3]/div/div/div/div/div/span    # 預約清單
${HC_data_upload_sch_hospitalId_XPATH}    //label    # *醫療機構:
${HC_data_upload_sch_resvDate_XPATH}    //td[2]/table/tbody/tr/td/label    # 健檢日期
${HC_data_upload_sch_fromDate_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/01/01
${HC_data_upload_sch_toDate_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/12/31
${HC_data_upload_sch_accountId_XPATH}    //td[3]/table/tbody/tr/td/label    # 客戶帳號
${HC_data_upload_sch_accountName_XPATH}    //td[4]/table/tbody/tr/td/label    # 客戶姓名
${HC_data_upload_list_id_XPATH}    //div[3]/div/div/div/div/span    # No
${HC_data_upload_list_resvNo_XPATH}    //div[3]/div/span    # 預約單號
${HC_data_upload_list_deptName_XPATH}    //div[4]/div/span    # 法人
${HC_data_upload_list_accountId_XPATH}    //div[5]/div/span    # 客戶帳號
${HC_data_upload_list_accountName_XPATH}    //div/div[6]/div    # 客戶姓名
${HC_data_upload_list_birthday_XPATH}    //div[7]/div/span    # 出生日期
${HC_data_upload_list_resvDate_XPATH}    //div[8]/div/span    # 健檢日期
${HC_data_upload_list_finishDate_XPATH}    //div[9]/div/span    # 健檢完成日期
${HC_data_upload_list_reservationAttachment_XPATH}    //div[10]/div/span    # 健檢相關附件
${HC_data_upload_list_consultAttachment_XPATH}    //div[11]/div/span    # 異常追蹤附件
${HC_data_upload_list_trackingFlag_XPATH}    //div[12]/div/span    # 完成判定

*** Test Cases ***
Check page
    ${Verify_Tab_HC_data_upload}    Convert To String    已健檢資料上傳
    ${Verify_Head_HC_data_upload_list}    Convert To String    預約清單
    ${Verify_HC_data_upload_sch_hospitalId}    Convert To String    *醫療機構:
    ${Verify_HC_data_upload_sch_resvDate}    Convert To String    健檢日期:
    ${Verify_HC_data_upload_sch_fromDate}    Convert To String    2016/01/01
    ${Verify_HC_data_upload_sch_toDate}    Convert To String    2016/12/31
    ${Verify_HC_data_upload_sch_accountId}    Convert To String    客戶帳號:
    ${Verify_HC_data_upload_sch_accountName}    Convert To String    客戶姓名:
    ${Verify_HC_data_upload_list_id}    Convert To String    No
    ${Verify_HC_data_upload_list_resvNo}    Convert To String    預約單號
    ${Verify_HC_data_upload_list_deptName}    Convert To String    法人
    ${Verify_HC_data_upload_list_accountId}    Convert To String    客戶帳號
    ${Verify_HC_data_upload_list_accountName}    Convert To String    客戶姓名
    ${Verify_HC_data_upload_list_birthday}    Convert To String    出生日期
    ${Verify_HC_data_upload_list_resvDate}    Convert To String    健檢日期
    ${Verify_HC_data_upload_list_finishDate}    Convert To String    健檢完成日期
    ${Verify_HC_data_upload_list_reservationAttachment}    Convert To String    健檢相關附件
    ${Verify_HC_data_upload_list_consultAttachment}    Convert To String    異常追蹤附件
    ${Verify_HC_data_upload_list_trackingFlag}    Convert To String    完成判定
    ${Get_Tab_HC_data_upload}    Get Text    xpath=${Tab_HC_data_upload_XPATH}
    ${Get_Head_HC_data_upload_list}    Get Text    xpath=${Head_HC_data_upload_list_XPATH}
    ${Get_HC_data_upload_sch_hospitalId}    Get Text    xpath=${HC_data_upload_sch_hospitalId_XPATH}
    ${Get_HC_data_upload_sch_rangeDatepicker}    Get Text    xpath=${HC_data_upload_sch_resvDate_XPATH}
    ${Get_HC_data_upload_sch_fromDate}    Get Value    xpath=${HC_data_upload_sch_fromDate_XPATH}
    ${Get_HC_data_upload_sch_toDate}    Get Value    xpath=${HC_data_upload_sch_toDate_XPATH}
    ${Get_HC_data_upload_sch_accountId}    Get Text    xpath=${HC_data_upload_sch_accountId_XPATH}
    ${Get_HC_data_upload_sch_accountName}    Get Text    xpath=${HC_data_upload_sch_accountName_XPATH}
    ${Get_HC_data_upload_list_id}    Get Text    xpath=${HC_data_upload_list_id_XPATH}
    ${Get_HC_data_upload_list_resvNo}    Get Text    xpath=${HC_data_upload_list_resvNo_XPATH}
    ${Get_HC_data_upload_list_deptName}    Get Text    xpath=${HC_data_upload_list_deptName_XPATH}
    ${Get_HC_data_upload_list_accountId}    Get Text    xpath=${HC_data_upload_list_accountId_XPATH}
    ${Get_HC_data_upload_list_accountName}    Get Text    xpath=${HC_data_upload_list_accountName_XPATH}
    ${Get_HC_data_upload_list_birthday}    Get Text    xpath=${HC_data_upload_list_birthday_XPATH}
    ${Get_HC_data_upload_list_resvDate}    Get Text    xpath=${HC_data_upload_list_resvDate_XPATH}
    ${Get_HC_data_upload_list_finishDate}    Get Text    xpath=${HC_data_upload_list_finishDate_XPATH}
    ${Get_HC_data_upload_list_reservationAttachment}    Get Text    xpath=${HC_data_upload_list_reservationAttachment_XPATH}
    ${Get_HC_data_upload_list_consultAttachment}    Get Text    xpath=${HC_data_upload_list_consultAttachment_XPATH}
    ${Get_HC_data_upload_list_trackingFlag}    Get Text    xpath=${HC_data_upload_list_trackingFlag_XPATH}
    Should Be Equal    ${Verify_Tab_HC_data_upload}    ${Get_Tab_HC_data_upload}
    Should Be Equal    ${Verify_Head_HC_data_upload_list}    ${Get_Head_HC_data_upload_list}
    Should Be Equal    ${Verify_HC_data_upload_sch_hospitalId}    ${Get_HC_data_upload_sch_hospitalId}
    Should Be Equal    ${Verify_HC_data_upload_sch_resvDate}    ${Get_HC_data_upload_sch_resvDate}
    Should Be Equal    ${Verify_HC_data_upload_sch_fromDate}    ${Get_HC_data_upload_sch_fromDate}
    Should Be Equal    ${Verify_HC_data_upload_sch_toDate}    ${Get_HC_data_upload_sch_toDate}
    Should Be Equal    ${Verify_HC_data_upload_sch_accountId}    ${Get_HC_data_upload_sch_accountId}
    Should Be Equal    ${Verify_HC_data_upload_sch_accountName}    ${Get_HC_data_upload_sch_accountName}
    Should Be Equal    ${Verify_HC_data_upload_list_id}    ${Get_HC_data_upload_list_id}
    Should Be Equal    ${Verify_HC_data_upload_list_resvNo}    ${Get_HC_data_upload_list_resvNo}
    Should Be Equal    ${Verify_HC_data_upload_list_deptName}    ${Get_HC_data_upload_list_deptName}
    Should Be Equal    ${Verify_HC_data_upload_list_accountId}    ${Get_HC_data_upload_list_accountId}
    Should Be Equal    ${Verify_HC_data_upload_list_accountName}    ${Get_HC_data_upload_list_accountName}
    Should Be Equal    ${Verify_HC_data_upload_list_birthday}    ${Get_HC_data_upload_list_birthday}
    Should Be Equal    ${Verify_HC_data_upload_list_resvDate}    ${Get_HC_data_upload_list_resvDate}
    Should Be Equal    ${Verify_HC_data_upload_list_finishDate}    ${Get_HC_data_upload_list_finishDate}
    Should Be Equal    ${Verify_HC_data_upload_list_reservationAttachment}    ${Get_HC_data_upload_list_reservationAttachment}
    Should Be Equal    ${Verify_HC_data_upload_list_consultAttachment}    ${Get_HC_data_upload_list_consultAttachment}
    Should Be Equal    ${Verify_HC_data_upload_list_trackingFlag}    ${Get_HC_data_upload_list_trackingFlag}
    [Teardown]    close browser

*** Keywords ***
Health_check_data_upload_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${HC_data_upload_page1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${HC_data_upload_page1}
    Click Element    xpath=${HC_data_upload_page1}
    Wait Until Element Is Visible    xpath=${HC_data_upload_page2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${HC_data_upload_page2}
    Sleep    1
