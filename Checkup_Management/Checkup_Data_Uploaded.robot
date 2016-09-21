*** Settings ***
Documentation     健檢管理 -> 已健檢資料上傳
...
...               test case 1: check page, verify all show text at this page.
Test Setup        Checkup_Data_Uploaded_page
Resource          ../DataBase.robot
Resource          ../Login.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Checkup_Data_Upload_Page}    //div[5]/a/span    # 健檢視窗
${Tab_Checkup_Data_Upload_XPATH}    //div[2]/div/div/div/a/span    # 已健檢資料上傳
#${Head_Checkup_Data_Upload_Search_XPATH}    //div[2]/div/div/div/div/div/div/div/div    # 已健檢資料搜尋
${Head_Checkup_Data_Upload_List_XPATH}    //div[3]/div/div/div/div/div/span    # 預約清單
${Checkup_Data_Upload_Search_hospitalId_XPATH}    //label    # *醫療機構:
${Checkup_Data_Upload_Search_resvDate_XPATH}    //td[2]/table/tbody/tr/td/label    # 健檢日期
${Checkup_Data_Upload_Search_fromDate_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/01/01
${Checkup_Data_Upload_Search_toDate_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/12/31
${Checkup_Data_Upload_Search_accountId_XPATH}    //td[3]/table/tbody/tr/td/label    # 客戶帳號
${Checkup_Data_Upload_Search_accountName_XPATH}    //td[4]/table/tbody/tr/td/label    # 客戶姓名
${Checkup_Data_Upload_List_id_XPATH}    //div[3]/div/div/div/div/span    # No
${Checkup_Data_Upload_List_resvNo_XPATH}    //div[3]/div/span    # 預約單號
${Checkup_Data_Upload_List_deptName_XPATH}    //div[4]/div/span    # 法人
${Checkup_Data_Upload_List_accountId_XPATH}    //div[5]/div/span    # 客戶帳號
${Checkup_Data_Upload_List_accountName_XPATH}    //div/div[6]/div    # 客戶姓名
${Checkup_Data_Upload_List_birthday_XPATH}    //div[7]/div/span    # 出生日期
${Checkup_Data_Upload_List_resvDate_XPATH}    //div[8]/div/span    # 健檢日期
${Checkup_Data_Upload_List_finishDate_XPATH}    //div[9]/div/span    # 健檢完成日期
${Checkup_Data_Upload_List_reservationAttachment_XPATH}    //div[10]/div/span    # 健檢相關附件
${Checkup_Data_Upload_List_consultAttachment_XPATH}    //div[11]/div/span    # 異常追蹤附件
${Checkup_Data_Upload_List_trackingFlag_XPATH}    //div[12]/div/span    # 完成判定

*** Test Cases ***
Check Page
    ${resv_Start_date}    ${resv_End_date}    year_range
    ${Verify_Tab_Checkup_Data_Upload}    Convert To String    已健檢資料上傳
    ${Verify_Head_Checkup_Data_Upload_List}    Convert To String    預約清單
    ${Verify_Checkup_Data_Upload_Search_hospitalId}    Convert To String    *醫療機構:
    ${Verify_Checkup_Data_Upload_Search_resvDate}    Convert To String    健檢日期:
    #${Verify_Checkup_Data_Upload_Search_fromDate}    Convert To String    2016/01/01
    #${Verify_Checkup_Data_Upload_Search_toDate}    Convert To String    2016/12/31
    ${Verify_Checkup_Data_Upload_Search_accountId}    Convert To String    客戶帳號:
    ${Verify_Checkup_Data_Upload_Search_accountName}    Convert To String    客戶姓名:
    ${Verify_Checkup_Data_Upload_List_id}    Convert To String    No
    ${Verify_Checkup_Data_Upload_List_resvNo}    Convert To String    預約單號
    ${Verify_Checkup_Data_Upload_List_deptName}    Convert To String    法人
    ${Verify_Checkup_Data_Upload_List_accountId}    Convert To String    客戶帳號
    ${Verify_Checkup_Data_Upload_List_accountName}    Convert To String    客戶姓名
    ${Verify_Checkup_Data_Upload_List_birthday}    Convert To String    出生日期
    ${Verify_Checkup_Data_Upload_List_resvDate}    Convert To String    健檢日期
    ${Verify_Checkup_Data_Upload_List_finishDate}    Convert To String    健檢完成日期
    ${Verify_Checkup_Data_Upload_List_reservationAttachment}    Convert To String    健檢相關附件
    ${Verify_Checkup_Data_Upload_List_consultAttachment}    Convert To String    異常追蹤附件
    ${Verify_Checkup_Data_Upload_List_trackingFlag}    Convert To String    完成判定
    ${Get_Tab_Checkup_Data_Upload}    Get Text    xpath=${Tab_Checkup_Data_Upload_XPATH}
    ${Get_Head_Checkup_Data_Upload_List}    Get Text    xpath=${Head_Checkup_Data_Upload_List_XPATH}
    ${Get_Checkup_Data_Upload_Search_hospitalId}    Get Text    xpath=${Checkup_Data_Upload_Search_hospitalId_XPATH}
    ${Get_Checkup_Data_Upload_Search_resvDate}    Get Text    xpath=${Checkup_Data_Upload_Search_resvDate_XPATH}
    ${Get_Checkup_Data_Upload_Search_fromDate}    Get Value    xpath=${Checkup_Data_Upload_Search_fromDate_XPATH}
    ${Get_Checkup_Data_Upload_Search_toDate}    Get Value    xpath=${Checkup_Data_Upload_Search_toDate_XPATH}
    ${Get_Checkup_Data_Upload_Search_accountId}    Get Text    xpath=${Checkup_Data_Upload_Search_accountId_XPATH}
    ${Get_Checkup_Data_Upload_Search_accountName}    Get Text    xpath=${Checkup_Data_Upload_Search_accountName_XPATH}
    ${Get_Checkup_Data_Upload_List_id}    Get Text    xpath=${Checkup_Data_Upload_List_id_XPATH}
    ${Get_Checkup_Data_Upload_List_resvNo}    Get Text    xpath=${Checkup_Data_Upload_List_resvNo_XPATH}
    ${Get_Checkup_Data_Upload_List_deptName}    Get Text    xpath=${Checkup_Data_Upload_List_deptName_XPATH}
    ${Get_Checkup_Data_Upload_List_accountId}    Get Text    xpath=${Checkup_Data_Upload_List_accountId_XPATH}
    ${Get_Checkup_Data_Upload_List_accountName}    Get Text    xpath=${Checkup_Data_Upload_List_accountName_XPATH}
    ${Get_Checkup_Data_Upload_List_birthday}    Get Text    xpath=${Checkup_Data_Upload_List_birthday_XPATH}
    ${Get_Checkup_Data_Upload_List_resvDate}    Get Text    xpath=${Checkup_Data_Upload_List_resvDate_XPATH}
    ${Get_Checkup_Data_Upload_List_finishDate}    Get Text    xpath=${Checkup_Data_Upload_List_finishDate_XPATH}
    ${Get_Checkup_Data_Upload_List_reservationAttachment}    Get Text    xpath=${Checkup_Data_Upload_List_reservationAttachment_XPATH}
    ${Get_Checkup_Data_Upload_List_consultAttachment}    Get Text    xpath=${Checkup_Data_Upload_List_consultAttachment_XPATH}
    ${Get_Checkup_Data_Upload_List_trackingFlag}    Get Text    xpath=${Checkup_Data_Upload_List_trackingFlag_XPATH}
    Should Be Equal    ${Verify_Tab_Checkup_Data_Upload}    ${Get_Tab_Checkup_Data_Upload}
    Should Be Equal    ${Verify_Head_Checkup_Data_Upload_List}    ${Get_Head_Checkup_Data_Upload_List}
    Should Be Equal    ${Verify_Checkup_Data_Upload_Search_hospitalId}    ${Get_Checkup_Data_Upload_Search_hospitalId}
    Should Be Equal    ${Verify_Checkup_Data_Upload_Search_resvDate}    ${Get_Checkup_Data_Upload_Search_resvDate}
    Should Be Equal    ${resv_Start_date}    ${Get_Checkup_Data_Upload_Search_fromDate}
    Should Be Equal    ${resv_End_date}    ${Get_Checkup_Data_Upload_Search_toDate}
    Should Be Equal    ${Verify_Checkup_Data_Upload_Search_accountId}    ${Get_Checkup_Data_Upload_Search_accountId}
    Should Be Equal    ${Verify_Checkup_Data_Upload_Search_accountName}    ${Get_Checkup_Data_Upload_Search_accountName}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_id}    ${Get_Checkup_Data_Upload_List_id}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_resvNo}    ${Get_Checkup_Data_Upload_List_resvNo}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_deptName}    ${Get_Checkup_Data_Upload_List_deptName}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_accountId}    ${Get_Checkup_Data_Upload_List_accountId}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_accountName}    ${Get_Checkup_Data_Upload_List_accountName}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_birthday}    ${Get_Checkup_Data_Upload_List_birthday}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_resvDate}    ${Get_Checkup_Data_Upload_List_resvDate}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_finishDate}    ${Get_Checkup_Data_Upload_List_finishDate}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_reservationAttachment}    ${Get_Checkup_Data_Upload_List_reservationAttachment}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_consultAttachment}    ${Get_Checkup_Data_Upload_List_consultAttachment}
    Should Be Equal    ${Verify_Checkup_Data_Upload_List_trackingFlag}    ${Get_Checkup_Data_Upload_List_trackingFlag}
    [Teardown]    Close Browser

*** Keywords ***
Checkup_Data_Uploaded_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Checkup_Data_Upload_Page}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Data_Upload_Page}
    Sleep    1
