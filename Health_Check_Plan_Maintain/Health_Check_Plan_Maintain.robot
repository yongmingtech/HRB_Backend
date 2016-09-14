*** Settings ***
Documentation     健檢方案維護 頁面
...
...               test case1 : check page , verify all show text at this page.
Test Setup        Health check plan Item Button
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${Health_check_ID1_XPATH}    //div[3]/div/a/span[2]    # 健檢管理
${Health_check_ID2_XPATH}    //div[2]/a/span    # 健檢管理
${Chk_Report_ID1_XPATH}    //div[3]/div/a/span[2]    # 健檢管理
${Tab_Health_check_plan_XPATH}    //div[2]/div/div/div/a/span    # 健檢方案維護
${Head_Health_check_plan_sch_XPATH}    //div/div/div/span    # 健檢方案搜尋
${Head_Health_check_plan_list_XPATH}    //div[3]/div/div/div/div/div/span    # 健檢方案
${Head_Health_check_plan_content_XPATH}    //div[5]/div/div/div/div/div/span    # 方案內容
${Head_Health_check_plan_Package_XPATH}    //div[2]/div/div/div/div/div/span    # 健檢套餐
${Health_check_sch_hospital_XPATH}    //label    # *醫療機構
${Health_check_sch_year_XPATH}    //td[2]/table/tbody/tr/td/label    # 方案年度
${Health_check_sch_checkupType_XPATH}    //td[3]/table/tbody/tr/td/label    # 方案類型
${Health_check_sch_cr_level_XPATH}    //td[4]/table/tbody/tr/td/label    # 健檢類別
${Health_check_sch_activity_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 狀態
${Health_check_plan_btn_add_XPATH}    //div[2]/div/div/div/div/a/span    # 新增
${Health_check_plan_btn_delete_XPATH}    //div[2]/div/div/div[3]/div/a/span    # 刪除
${Health_check_plan_btn_config_XPATH}    //div[2]/div/div/div[5]/div/a/span    # 資料設定
${Health_check_plan_btn_inpert_XPATH}    //div[2]/div/div/div[7]    # 整批匯入
${Health_check_plan_btn_inpertex_XPATH}    //div[2]/div/div/div[9]/div/a/span    # 整批匯入範本
${Health_check_plan_cr_level_XPATH}    //div[3]/div/span    # 類別
${Health_check_plan_prog_code_XPATH}    //div[7]/div/span    # 方案代碼
${Health_check_plan_prog_name_XPATH}    //div[8]/div/span    # 方案名稱
${Health_check_plan_price_XPATH}    //div[11]/div/span    # 單價
${Health_check_plan_UploadFile_XPATH}    //div[3]/div/div/div[13]/div    # 附件
${Health_check_plan_resv_cnt_XPATH}    //div[14]/div/span    # 預約量
${Health_check_plan_status_XPATH}    //div[15]/div/span    # 狀態
${Health_check_plan_content_contact_XPATH}    html/body/div[5]/div[2]/div/div/div[5]/div[2]/div/div/div[1]/div[1]/div/div/div/div/span    # 聯繫方式
${Health_check_plan_package_sub_seq_XPATH}    //div[2]/div[3]/div/div/div[5]/div/span    # 項次
${Health_check_plan_package_sub_name_XPATH}    //div[2]/div[3]/div/div/div[6]/div/span    # 套餐描述
${Health_check_plan_package_upload_XPATH}    //div[2]/div[3]/div/div/div[8]/div/span    # 附件

*** Test Cases ***
check page
    ${Verify_Tab_Health_check_plan}=    Convert To String    健檢方案維護
    ${Verify_Head_Health_check_plan_sch}=    Convert To String    健檢方案搜尋
    ${Verify_Head_Health_check_plan_list}=    Convert To String    健檢方案
    ${Verify_Head_Health_check_plan_content}=    Convert To String    方案內容
    ${Verify_Head_Health_check_plan_content_contact}=    Convert To String    聯繫方式
    ${Verify_Head_Health_check_plan_Package}=    Convert To String    健檢套餐
    ${Verify_Health_check_sch_hospital}=    Convert To String    *醫療機構:
    ${Verify_Health_check_sch_year}=    Convert To String    方案年度:
    ${Verify_Health_check_sch_checkupType}=    Convert To String    方案類型:
    ${Verify_Health_check_sch_cr_level}=    Convert To String    健檢類別:
    ${Verify_Health_check_sch_activity}=    Convert To String    狀態:
    ${Verify_Health_check_plan_btn_add}=    Convert To String    新增
    ${Verify_Health_check_plan_btn_delete}=    Convert To String    刪除
    ${Verify_Health_check_plan_btn_config}=    Convert To String    資料設定
    ${Verify_Health_check_plan_btn_inpert}=    Convert To String    整批匯入
    ${Verify_Health_check_plan_btn_inpertex}=    Convert To String    整批匯入範本
    ${Verify_Health_check_plan_cr_level}=    Convert To String    類別
    ${Verify_Health_check_plan_prog_code}=    Convert To String    方案代碼
    ${Verify_Health_check_plan_prog_name}=    Convert To String    方案名稱
    ${Verify_Health_check_plan_price}=    Convert To String    單價
    ${Verify_Health_check_plan_UploadFile}=    Convert To String    附件
    ${Verify_Health_check_plan_resv_cnt}=    Convert To String    預約量
    ${Verify_Health_check_plan_status}=    Convert To String    狀態
    ${Verify_Health_check_plan_content_contact}=    Convert To String    聯繫方式
    ${Verify_Health_check_plan_package_sub_seq}=    Convert To String    項次
    ${Verify_Health_check_plan_package_sub_name}=    Convert To String    套餐描述
    ${Verify_Health_check_plan_package_upload}=    Convert To String    附件
    ${Get_Tab_Health_check_plan}=    Get Text    xpath=${Tab_Health_check_plan_XPATH}
    ${Get_Head_Health_check_plan_sch}=    Get Text    xpath=${Head_Health_check_plan_sch_XPATH}
    ${Get_Head_Health_check_plan_list}=    Get Text    xpath=${Head_Health_check_plan_list_XPATH}
    ${Get_Head_Health_check_plan_content}=    Get Text    xpath=${Head_Health_check_plan_content_XPATH}
    ${Get_Head_Health_check_plan_Package}=    Get Text    xpath=${Head_Health_check_plan_Package_XPATH}
    ${Get_Health_check_sch_hospital}=    Get Text    xpath=${Health_check_sch_hospital_XPATH}
    ${Get_Health_check_sch_year}=    Get Text    xpath=${Health_check_sch_year_XPATH}
    ${Get_Health_check_sch_checkupType}=    Get Text    xpath=${Health_check_sch_checkupType_XPATH}
    ${Get_Health_check_sch_cr_level}=    Get Text    xpath=${Health_check_sch_cr_level_XPATH}
    ${Get_Health_check_sch_activity}=    Get Text    xpath=${Health_check_sch_activity_XPATH}
    ${Get_Health_check_plan_btn_add}=    Get Text    xpath=${Health_check_plan_btn_add_XPATH}
    ${Get_Health_check_plan_btn_delete}=    Get Text    xpath=${Health_check_plan_btn_delete_XPATH}
    ${Get_Health_check_plan_btn_config}=    Get Text    xpath=${Health_check_plan_btn_config_XPATH}
    ${Get_Health_check_plan_btn_inpert}=    Get Text    xpath=${Health_check_plan_btn_inpert_XPATH}
    ${Get_Health_check_plan_btn_inpertex}=    Get Text    xpath=${Health_check_plan_btn_inpertex_XPATH}
    ${Get_Health_check_plan_cr_level}=    Get Text    xpath=${Health_check_plan_cr_level_XPATH}
    ${Get_Health_check_plan_prog_code}=    Get Text    xpath=${Health_check_plan_prog_code_XPATH}
    ${Get_Health_check_plan_prog_name}=    Get Text    xpath=${Health_check_plan_prog_name_XPATH}
    ${Get_Health_check_plan_price}=    Get Text    xpath=${Health_check_plan_price_XPATH}
    ${Get_Health_check_plan_UploadFile}=    Get Text    xpath=${Health_check_plan_UploadFile_XPATH}
    ${Get_Health_check_plan_resv_cnt}=    Get Text    xpath=${Health_check_plan_resv_cnt_XPATH}
    ${Get_Health_check_plan_status}=    Get Text    xpath=${Health_check_plan_status_XPATH}
    ${Get_Health_check_plan_content_contact}=    Get Text    xpath=${Health_check_plan_content_contact_XPATH}
    ${Get_Health_check_plan_package_sub_seq}=    Get Text    xpath=${Health_check_plan_package_sub_seq_XPATH}
    ${Get_Health_check_plan_package_sub_name}=    Get Text    xpath=${Health_check_plan_package_sub_name_XPATH}
    ${Get_Health_check_plan_package_upload}=    Get Text    xpath=${Health_check_plan_package_upload_XPATH}
    Should Be Equal    ${Verify_Tab_Health_check_plan}    ${Get_Tab_Health_check_plan}
    Should Be Equal    ${Verify_Head_Health_check_plan_sch}    ${Get_Head_Health_check_plan_sch}
    Should Be Equal    ${Verify_Head_Health_check_plan_list}    ${Get_Head_Health_check_plan_list}
    Should Be Equal    ${Verify_Head_Health_check_plan_content}    ${Get_Head_Health_check_plan_content}
    Should Be Equal    ${Verify_Head_Health_check_plan_Package}    ${Get_Head_Health_check_plan_Package}
    Should Be Equal    ${Verify_Health_check_sch_hospital}    ${Get_Health_check_sch_hospital}
    Should Be Equal    ${Verify_Health_check_sch_year}    ${Get_Health_check_sch_year}
    Should Be Equal    ${Verify_Health_check_sch_checkupType}    ${Get_Health_check_sch_checkupType}
    Should Be Equal    ${Verify_Health_check_sch_cr_level}    ${Get_Health_check_sch_cr_level}
    Should Be Equal    ${Verify_Health_check_sch_activity}    ${Get_Health_check_sch_activity}
    Should Be Equal    ${Verify_Health_check_plan_btn_add}    ${Get_Health_check_plan_btn_add}
    Should Be Equal    ${Verify_Health_check_plan_btn_delete}    ${Get_Health_check_plan_btn_delete}
    Should Be Equal    ${Verify_Health_check_plan_btn_config}    ${Get_Health_check_plan_btn_config}
    #Should Be Equal    ${Verify_Health_check_plan_btn_inpert}    ${Get_Health_check_plan_btn_inpert}
    Should Be Equal    ${Verify_Health_check_plan_btn_inpertex}    ${Get_Health_check_plan_btn_inpertex}
    Should Be Equal    ${Verify_Health_check_plan_cr_level}    ${Get_Health_check_plan_cr_level}
    Should Be Equal    ${Verify_Health_check_plan_prog_code}    ${Get_Health_check_plan_prog_code}
    Should Be Equal    ${Verify_Health_check_plan_prog_name}    ${Get_Health_check_plan_prog_name}
    Should Be Equal    ${Verify_Health_check_plan_price}    ${Get_Health_check_plan_price}
    Should Be Equal    ${Verify_Health_check_plan_UploadFile}    ${Get_Health_check_plan_UploadFile}
    Should Be Equal    ${Verify_Health_check_plan_resv_cnt}    ${Get_Health_check_plan_resv_cnt}
    Should Be Equal    ${Verify_Health_check_plan_status}    ${Get_Health_check_plan_status}
    Should Be Equal    ${Verify_Health_check_plan_content_contact}    ${Get_Health_check_plan_content_contact}
    Should Be Equal    ${Verify_Health_check_plan_package_sub_seq}    ${Get_Health_check_plan_package_sub_seq}
    Should Be Equal    ${Verify_Health_check_plan_package_sub_name}    ${Get_Health_check_plan_package_sub_name}
    Should Be Equal    ${Verify_Health_check_plan_package_upload}    ${Get_Health_check_plan_package_upload}
    [Teardown]    close web browser

*** Keywords ***
Health check plan Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Health_check_ID1_XPATH}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Health_check_ID1_XPATH}
    Click Element    xpath=${Health_check_ID1_XPATH}
    Wait Until Element Is Visible    xpath=${Health_check_ID2_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Health_check_ID2_XPATH}
    Sleep    1

close web browser
    close browser
