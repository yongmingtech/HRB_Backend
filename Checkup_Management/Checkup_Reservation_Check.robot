*** Settings ***
Documentation     健檢管理 -> 健檢預約審核
Test Setup        Health_Check_Reservatioin_Review_page
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${Reservatioin_review_btn1}    html/body/div[3]/div[1]/div/div/div[3]/div/a/span[2]    # 健檢管理
${Reservatioin_review_btn2}    html/body/div[8]/div/div[2]/div[2]/div[4]/a/span    # 健檢管理
${Tab_Reservatioin_review_XPATH}    //div[2]/div/div/div/a/span    # 健檢預約審核
${Head_Reservatioin_review_Inquire_XPATH}    //div/div/div/span    # 預約審核查詢
${Head_Reservatioin_review_List_XPATH}    //div[3]/div/div/div/div/div/span    # 預約清單
${Reservatioin_Review_Inquire_hospital_name_XPATH}    //label    # 醫療機構:
${Reservatioin_Review_Inquire_resvDate_XPATH}    //td[2]/table/tbody/tr/td/label    # 健檢日期:
${Reservatioin_Review_Inquire_resvDatef_value_XPATH}    //div/table/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/01/01
${Reservatioin_Review_Inquire_resvDatet_value_XPATH}    //table[3]/tbody/tr/td[2]/table/tbody/tr/td/input    # 2016/12/31
${Reservatioin_Review_Inquire_approveDate_XPATH}    //td[3]/table/tbody/tr/td/label    # 申請同意日期:
${Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}    //td[4]/table/tbody/tr/td/label    # 預約狀態:
${Reservatioin_Review_Inquire_custNo_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 客戶帳號:
${Reservatioin_Review_Inquire_custName_XPATH}    //tr[2]/td[2]/table/tbody/tr/td/label    # 客戶姓名:
${Reservatioin_Review_Inquire_resvNo_XPATH}    //tr[2]/td[3]/table/tbody/tr/td/label    # 預約單號:
${Reservatioin_Review_list_resvNo_XPATH}    //div[4]/div/span    # 預約單號
${Reservatioin_Review_list_deptName_XPATH}    //div[5]/div/span    # 法人
${Reservatioin_Review_list_accountId_XPATH}    //div[6]/div/span    # 客戶帳號
${Reservatioin_Review_list_accountName_XPATH}    //div[7]/div/span    # 客戶姓名
${Reservatioin_Review_list_birthday_XPATH}    //div[8]/div/span    # 出生日期
${Reservatioin_Review_list_hospitalName_XPATH}    //div[9]/div/span    # 健檢方案
${Reservatioin_Review_list_applyDate_XPATH}    //div[10]/div/span    # 申請日期
${Reservatioin_Review_list_resvDate_XPATH}    //div[11]/div/span    # 健檢日期
${Reservatioin_Review_list_progName_XPATH}    //div[12]/div/span    # 方案名稱
${Reservatioin_Review_list_subName_XPATH}    //div[13]/div/span    # 搭配套餐
${Reservatioin_Review_list_resvMemo_XPATH}    //div[14]/div/span    # 預約留言
${Reservatioin_Review_list_approveDate_XPATH}    //div[15]/div/span    # 申請同意日期
${Reservatioin_Review_list_statusName_XPATH}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[16]/div/span    # 預約狀態

*** Test Cases ***
check page
    ${Verify_Tab_Reservatioin_review_XPATH}    Convert To String    健檢預約審核
    ${Verify_Head_Reservatioin_review_Inquire_XPATH}    Convert To String    預約審核查詢
    ${Verify_Head_Reservatioin_review_List_XPATH}    Convert To String    預約清單
    ${Verify_Reservatioin_Review_Inquire_hospital_name_XPATH}    Convert To String    *醫療機構:
    ${Verify_Reservatioin_Review_Inquire_resvDate_XPATH}    Convert To String    健檢日期:
    ${Verify_Reservatioin_Review_Inquire_resvDatef_value_XPATH}    Convert To String    2016/01/01
    ${Verify_Reservatioin_Review_Inquire_resvDatet_value_XPATH}    Convert To String    2016/12/31
    ${Verify_Reservatioin_Review_Inquire_approveDate_XPATH}    Convert To String    申請同意日期:
    ${Verify_Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}    Convert To String    預約狀態:
    ${Verify_Reservatioin_Review_Inquire_custNo_XPATH}    Convert To String    客戶帳號:
    ${Verify_Reservatioin_Review_Inquire_custName_XPATH}    Convert To String    客戶姓名:
    ${Verify_Reservatioin_Review_Inquire_resvNo_XPATH}    Convert To String    預約單號:
    ${Verify_Reservatioin_Review_list_resvNo_XPATH}    Convert To String    預約單號
    ${Verify_Reservatioin_Review_list_deptName_XPATH}    Convert To String    法人
    ${Verify_Reservatioin_Review_list_accountId_XPATH}    Convert To String    客戶帳號
    ${Verify_Reservatioin_Review_list_accountName_XPATH}    Convert To String    客戶姓名
    ${Verify_Reservatioin_Review_list_birthday_XPATH}    Convert To String    出生日期
    ${Verify_Reservatioin_Review_list_hospitalName_XPATH}    Convert To String    健檢方案
    ${Verify_Reservatioin_Review_list_applyDate_XPATH}    Convert To String    申請日期
    ${Verify_Reservatioin_Review_list_resvDate_XPATH}    Convert To String    健檢日期
    ${Verify_Reservatioin_Review_list_progName_XPATH}    Convert To String    方案名稱
    ${Verify_Reservatioin_Review_list_subName_XPATH}    Convert To String    搭配套餐
    ${Verify_Reservatioin_Review_list_resvMemo_XPATH}    Convert To String    預約留言
    ${Verify_Reservatioin_Review_list_approveDate_XPATH}    Convert To String    申請同意日期
    ${Verify_Reservatioin_Review_list_statusName_XPATH}    Convert To String    預約狀態
    ${Get_Tab_Reservatioin_review_XPATH}    Get Text    xpath=${Tab_Reservatioin_review_XPATH}
    ${Get_Head_Reservatioin_review_Inquire_XPATH}    Get Text    xpath=${Head_Reservatioin_review_Inquire_XPATH}
    ${Get_Head_Reservatioin_review_List_XPATH}    Get Text    xpath=${Head_Reservatioin_review_List_XPATH}
    ${Get_Reservatioin_Review_Inquire_hospital_name_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_hospital_name_XPATH}
    ${Get_Reservatioin_Review_Inquire_resvDate_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_resvDate_XPATH}
    ${Get_Reservatioin_Review_Inquire_resvDatef_value_XPATH}    Get Value    xpath=${Reservatioin_Review_Inquire_resvDatef_value_XPATH}
    ${Get_Reservatioin_Review_Inquire_resvDatet_value_XPATH}    Get Value    xpath=${Reservatioin_Review_Inquire_resvDatet_value_XPATH}
    ${Get_Reservatioin_Review_Inquire_approveDate_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_approveDate_XPATH}
    ${Get_Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}
    ${Get_Reservatioin_Review_Inquire_custNo_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_custNo_XPATH}
    ${Get_Reservatioin_Review_Inquire_custName_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_custName_XPATH}
    ${Get_Reservatioin_Review_Inquire_resvNo_XPATH}    Get Text    xpath=${Reservatioin_Review_Inquire_resvNo_XPATH}
    ${Get_Reservatioin_Review_list_resvNo_XPATH}    Get Text    xpath=${Reservatioin_Review_list_resvNo_XPATH}
    ${Get_Reservatioin_Review_list_deptName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_deptName_XPATH}
    ${Get_Reservatioin_Review_list_accountId_XPATH}    Get Text    xpath=${Reservatioin_Review_list_accountId_XPATH}
    ${Get_Reservatioin_Review_list_accountName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_accountName_XPATH}
    ${Get_Reservatioin_Review_list_birthday_XPATH}    Get Text    xpath=${Reservatioin_Review_list_birthday_XPATH}
    ${Get_Reservatioin_Review_list_hospitalName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_hospitalName_XPATH}
    ${Get_Reservatioin_Review_list_applyDate_XPATH}    Get Text    xpath=${Reservatioin_Review_list_applyDate_XPATH}
    ${Get_Reservatioin_Review_list_resvDate_XPATH}    Get Text    xpath=${Reservatioin_Review_list_resvDate_XPATH}
    ${Get_Reservatioin_Review_list_progName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_progName_XPATH}
    ${Get_Reservatioin_Review_list_subName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_subName_XPATH}
    ${Get_Reservatioin_Review_list_resvMemo_XPATH}    Get Text    xpath=${Reservatioin_Review_list_resvMemo_XPATH}
    ${Get_Reservatioin_Review_list_approveDate_XPATH}    Get Text    xpath=${Reservatioin_Review_list_approveDate_XPATH}
    ${Get_Reservatioin_Review_list_statusName_XPATH}    Get Text    xpath=${Reservatioin_Review_list_statusName_XPATH}
    Should Be Equal    ${Verify_Tab_Reservatioin_review_XPATH}    ${Get_Tab_Reservatioin_review_XPATH}
    Should Be Equal    ${Verify_Head_Reservatioin_review_Inquire_XPATH}    ${Get_Head_Reservatioin_review_Inquire_XPATH}
    Should Be Equal    ${Verify_Head_Reservatioin_review_List_XPATH}    ${Get_Head_Reservatioin_review_List_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_hospital_name_XPATH}    ${Get_Reservatioin_Review_Inquire_hospital_name_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_resvDate_XPATH}    ${Get_Reservatioin_Review_Inquire_resvDate_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_resvDatef_value_XPATH}    ${Get_Reservatioin_Review_Inquire_resvDatef_value_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_resvDatet_value_XPATH}    ${Get_Reservatioin_Review_Inquire_resvDatet_value_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_approveDate_XPATH}    ${Get_Reservatioin_Review_Inquire_approveDate_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}    ${Get_Reservatioin_Review_Inquire_crmSystemL1basic_status_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_custNo_XPATH}    ${Get_Reservatioin_Review_Inquire_custNo_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_custName_XPATH}    ${Get_Reservatioin_Review_Inquire_custName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_Inquire_resvNo_XPATH}    ${Get_Reservatioin_Review_Inquire_resvNo_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_resvNo_XPATH}    ${Get_Reservatioin_Review_list_resvNo_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_deptName_XPATH}    ${Get_Reservatioin_Review_list_deptName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_accountId_XPATH}    ${Get_Reservatioin_Review_list_accountId_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_accountName_XPATH}    ${Get_Reservatioin_Review_list_accountName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_birthday_XPATH}    ${Get_Reservatioin_Review_list_birthday_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_hospitalName_XPATH}    ${Get_Reservatioin_Review_list_hospitalName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_applyDate_XPATH}    ${Get_Reservatioin_Review_list_applyDate_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_resvDate_XPATH}    ${Get_Reservatioin_Review_list_resvDate_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_progName_XPATH}    ${Get_Reservatioin_Review_list_progName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_subName_XPATH}    ${Get_Reservatioin_Review_list_subName_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_resvMemo_XPATH}    ${Get_Reservatioin_Review_list_resvMemo_XPATH}
    Should Be Equal    ${Verify_Reservatioin_Review_list_approveDate_XPATH}    ${Get_Reservatioin_Review_list_approveDate_XPATH}
    #Should Be Equal    ${Verify_Reservatioin_Review_list_statusName_XPATH}    ${Get_Reservatioin_Review_list_statusName_XPATH}
    [Teardown]    Close Browser

*** Keywords ***
Health_Check_Reservatioin_Review_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Reservatioin_review_btn1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Reservatioin_review_btn1}
    Click Element    xpath=${Reservatioin_review_btn1}
    Wait Until Element Is Visible    xpath=${Reservatioin_review_btn2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Reservatioin_review_btn2}
    Sleep    1
