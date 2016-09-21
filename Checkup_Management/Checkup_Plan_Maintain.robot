*** Settings ***
Documentation     健檢管理 -> 健檢方案維護
Test Setup        Checkup_Plan_Maintain_Page
Resource          ../DataBase.robot
Resource          ../Login.robot
Resource          Checkup_Manage_Resource.robot

*** Variables ***
${Checkup_Plan_XPATH}    //div[2]/a/span    # 健檢管理
${Checkup_Plan_ID1_XPATH}    //div[3]/div/a/span[2]    # 健檢管理
${Tab_Checkup_Plan_List_XPATH}    //div[2]/div/div/div/a/span    # 健檢方案維護
${Checkup_Plan_List_sch_XPATH}    //div/div/div/span    # 健檢方案搜尋
${Checkup_Plan_List_XPATH}    //div[3]/div/div/div/div/div/span    # 健檢方案
${Head_Checkup_Plan_Content_XPATH}    //div[5]/div/div/div/div/div/span    # 方案內容
${Head_Checkup_Plan_Package_XPATH}    //div[2]/div/div/div/div/div/span    # 健檢套餐
${Checkup_Plan_Search_hospital_XPATH}    //label    # *醫療機構
${Checkup_Plan_Search_year_XPATH}    //td[2]/table/tbody/tr/td/label    # 方案年度
${Checkup_Plan_Search_checkupType_XPATH}    //td[3]/table/tbody/tr/td/label    # 方案類型
${Checkup_Plan_Search_cr_level_XPATH}    //td[4]/table/tbody/tr/td/label    # 健檢類別
${Checkup_Plan_Search_activity_XPATH}    //tr[2]/td/table/tbody/tr/td/label    # 狀態
${Checkup_Plan_btn_add_XPATH}    //div[2]/div/div/div/div/a/span    # 新增
${Checkup_Plan_btn_delete_XPATH}    //div[2]/div/div/div[3]/div/a/span    # 刪除
${Checkup_Plan_btn_config_XPATH}    //div[2]/div/div/div[5]/div/a/span    # 資料設定
${Checkup_Plan_btn_inpert_XPATH}    //div[2]/div/div/div[7]    # 整批匯入
${Checkup_Plan_btn_inpertex_XPATH}    //div[2]/div/div/div[9]/div/a/span    # 整批匯入範本
${Checkup_Plan_List_cr_level_XPATH}    //div[3]/div/span    # 類別
${Checkup_Plan_List_prog_code_XPATH}    //div[7]/div/span    # 方案代碼
${Checkup_Plan_List_prog_name_XPATH}    //div[8]/div/span    # 方案名稱
${Checkup_Plan_List_price_XPATH}    //div[11]/div/span    # 單價
${Checkup_Plan_List_UploadFile_XPATH}    //div[3]/div/div/div[13]/div    # 附件
${Checkup_Plan_List_resv_cnt_XPATH}    //div[14]/div/span    # 預約量
${Checkup_Plan_List_status_XPATH}    //div[15]/div/span    # 狀態
${Checkup_Plan_Content_contact_XPATH}    html/body/div[5]/div[2]/div/div/div[5]/div[2]/div/div/div[1]/div[1]/div/div/div/div/span    # 聯繫方式
${Checkup_Plan_Package_sub_seq_XPATH}    //div[2]/div[3]/div/div/div[5]/div/span    # 項次
${Checkup_Plan_Package_sub_name_XPATH}    //div[2]/div[3]/div/div/div[6]/div/span    # 套餐描述
${Checkup_Plan_Package_upload_XPATH}    //div[2]/div[3]/div/div/div[8]/div/span    # 附件

*** Test Cases ***
Check Page
    ${Verify_Tab_Checkup_Plan_List}=    Convert To String    健檢方案維護
    ${Verify_Checkup_Plan_List_sch}=    Convert To String    健檢方案搜尋
    ${Verify_Checkup_Plan_List}=    Convert To String    健檢方案
    ${Verify_Head_Checkup_Plan_Content}=    Convert To String    方案內容
    ${Verify_Head_Checkup_Plan_Content_contact}=    Convert To String    聯繫方式
    ${Verify_Head_Checkup_Plan_Package}=    Convert To String    健檢套餐
    ${Verify_Checkup_Plan_Search_hospital}=    Convert To String    *醫療機構:
    ${Verify_Checkup_Plan_Search_year}=    Convert To String    方案年度:
    ${Verify_Checkup_Plan_Search_checkupType}=    Convert To String    方案類型:
    ${Verify_Checkup_Plan_Search_cr_level}=    Convert To String    健檢類別:
    ${Verify_Checkup_Plan_Search_activity}=    Convert To String    狀態:
    ${Verify_Checkup_Plan_btn_add}=    Convert To String    新增
    ${Verify_Checkup_Plan_btn_delete}=    Convert To String    刪除
    ${Verify_Checkup_Plan_btn_config}=    Convert To String    資料設定
    ${Verify_Checkup_Plan_btn_inpert}=    Convert To String    整批匯入
    ${Verify_Checkup_Plan_btn_inpertex}=    Convert To String    整批匯入範本
    ${Verify_Checkup_Plan_List_cr_level}=    Convert To String    類別
    ${Verify_Checkup_Plan_List_prog_code}=    Convert To String    方案代碼
    ${Verify_Checkup_Plan_List_prog_name}=    Convert To String    方案名稱
    ${Verify_Checkup_Plan_List_price}=    Convert To String    單價
    ${Verify_Checkup_Plan_List_UploadFile}=    Convert To String    附件
    ${Verify_Checkup_Plan_List_resv_cnt}=    Convert To String    預約量
    ${Verify_Checkup_Plan_List_status}=    Convert To String    狀態
    ${Verify_Checkup_Plan_Content_contact}=    Convert To String    聯繫方式
    ${Verify_Checkup_Plan_Package_sub_seq}=    Convert To String    項次
    ${Verify_Checkup_Plan_Package_sub_name}=    Convert To String    套餐描述
    ${Verify_Checkup_Plan_Package_upload}=    Convert To String    附件
    ${Get_Tab_Checkup_Plan_List}=    Get Text    xpath=${Tab_Checkup_Plan_List_XPATH}
    ${Get_Checkup_Plan_List_sch}=    Get Text    xpath=${Checkup_Plan_List_sch_XPATH}
    ${Get_Checkup_Plan_List}=    Get Text    xpath=${Checkup_Plan_List_XPATH}
    ${Get_Head_Checkup_Plan_Content}=    Get Text    xpath=${Head_Checkup_Plan_Content_XPATH}
    ${Get_Head_Checkup_Plan_Package}=    Get Text    xpath=${Head_Checkup_Plan_Package_XPATH}
    ${Get_Checkup_Plan_Search_hospital}=    Get Text    xpath=${Checkup_Plan_Search_hospital_XPATH}
    ${Get_Checkup_Plan_Search_year}=    Get Text    xpath=${Checkup_Plan_Search_year_XPATH}
    ${Get_Checkup_Plan_Search_checkupType}=    Get Text    xpath=${Checkup_Plan_Search_checkupType_XPATH}
    ${Get_Checkup_Plan_Search_cr_level}=    Get Text    xpath=${Checkup_Plan_Search_cr_level_XPATH}
    ${Get_Checkup_Plan_Search_activity}=    Get Text    xpath=${Checkup_Plan_Search_activity_XPATH}
    ${Get_Checkup_Plan_btn_add}=    Get Text    xpath=${Checkup_Plan_btn_add_XPATH}
    ${Get_Checkup_Plan_btn_delete}=    Get Text    xpath=${Checkup_Plan_btn_delete_XPATH}
    ${Get_Checkup_Plan_btn_config}=    Get Text    xpath=${Checkup_Plan_btn_config_XPATH}
    ${Get_Checkup_Plan_btn_inpert}=    Get Text    xpath=${Checkup_Plan_btn_inpert_XPATH}
    ${Get_Checkup_Plan_btn_inpertex}=    Get Text    xpath=${Checkup_Plan_btn_inpertex_XPATH}
    ${Get_Checkup_Plan_List_cr_level}=    Get Text    xpath=${Checkup_Plan_List_cr_level_XPATH}
    ${Get_Checkup_Plan_List_prog_code}=    Get Text    xpath=${Checkup_Plan_List_prog_code_XPATH}
    ${Get_Checkup_Plan_List_prog_name}=    Get Text    xpath=${Checkup_Plan_List_prog_name_XPATH}
    ${Get_Checkup_Plan_List_price}=    Get Text    xpath=${Checkup_Plan_List_price_XPATH}
    ${Get_Checkup_Plan_List_UploadFile}=    Get Text    xpath=${Checkup_Plan_List_UploadFile_XPATH}
    ${Get_Checkup_Plan_List_resv_cnt}=    Get Text    xpath=${Checkup_Plan_List_resv_cnt_XPATH}
    ${Get_Checkup_Plan_List_status}=    Get Text    xpath=${Checkup_Plan_List_status_XPATH}
    ${Get_Checkup_Plan_Content_contact}=    Get Text    xpath=${Checkup_Plan_Content_contact_XPATH}
    ${Get_Checkup_Plan_Package_sub_seq}=    Get Text    xpath=${Checkup_Plan_Package_sub_seq_XPATH}
    ${Get_Checkup_Plan_Package_sub_name}=    Get Text    xpath=${Checkup_Plan_Package_sub_name_XPATH}
    ${Get_Checkup_Plan_Package_upload}=    Get Text    xpath=${Checkup_Plan_Package_upload_XPATH}
    Should Be Equal    ${Verify_Tab_Checkup_Plan_List}    ${Get_Tab_Checkup_Plan_List}
    Should Be Equal    ${Verify_Checkup_Plan_List_sch}    ${Get_Checkup_Plan_List_sch}
    Should Be Equal    ${Verify_Checkup_Plan_List}    ${Get_Checkup_Plan_List}
    Should Be Equal    ${Verify_Head_Checkup_Plan_Content}    ${Get_Head_Checkup_Plan_Content}
    Should Be Equal    ${Verify_Head_Checkup_Plan_Package}    ${Get_Head_Checkup_Plan_Package}
    Should Be Equal    ${Verify_Checkup_Plan_Search_hospital}    ${Get_Checkup_Plan_Search_hospital}
    Should Be Equal    ${Verify_Checkup_Plan_Search_year}    ${Get_Checkup_Plan_Search_year}
    Should Be Equal    ${Verify_Checkup_Plan_Search_checkupType}    ${Get_Checkup_Plan_Search_checkupType}
    Should Be Equal    ${Verify_Checkup_Plan_Search_cr_level}    ${Get_Checkup_Plan_Search_cr_level}
    Should Be Equal    ${Verify_Checkup_Plan_Search_activity}    ${Get_Checkup_Plan_Search_activity}
    Should Be Equal    ${Verify_Checkup_Plan_btn_add}    ${Get_Checkup_Plan_btn_add}
    Should Be Equal    ${Verify_Checkup_Plan_btn_delete}    ${Get_Checkup_Plan_btn_delete}
    Should Be Equal    ${Verify_Checkup_Plan_btn_config}    ${Get_Checkup_Plan_btn_config}
    #Should Be Equal    ${Verify_Checkup_Plan_btn_inpert}    ${Get_Checkup_Plan_btn_inpert}
    Should Be Equal    ${Verify_Checkup_Plan_btn_inpertex}    ${Get_Checkup_Plan_btn_inpertex}
    Should Be Equal    ${Verify_Checkup_Plan_List_cr_level}    ${Get_Checkup_Plan_List_cr_level}
    Should Be Equal    ${Verify_Checkup_Plan_List_prog_code}    ${Get_Checkup_Plan_List_prog_code}
    Should Be Equal    ${Verify_Checkup_Plan_List_prog_name}    ${Get_Checkup_Plan_List_prog_name}
    Should Be Equal    ${Verify_Checkup_Plan_List_price}    ${Get_Checkup_Plan_List_price}
    Should Be Equal    ${Verify_Checkup_Plan_List_UploadFile}    ${Get_Checkup_Plan_List_UploadFile}
    Should Be Equal    ${Verify_Checkup_Plan_List_resv_cnt}    ${Get_Checkup_Plan_List_resv_cnt}
    Should Be Equal    ${Verify_Checkup_Plan_List_status}    ${Get_Checkup_Plan_List_status}
    Should Be Equal    ${Verify_Checkup_Plan_Content_contact}    ${Get_Checkup_Plan_Content_contact}
    Should Be Equal    ${Verify_Checkup_Plan_Package_sub_seq}    ${Get_Checkup_Plan_Package_sub_seq}
    Should Be Equal    ${Verify_Checkup_Plan_Package_sub_name}    ${Get_Checkup_Plan_Package_sub_name}
    Should Be Equal    ${Verify_Checkup_Plan_Package_upload}    ${Get_Checkup_Plan_Package_upload}
    [Teardown]    Close Browser

*** Keywords ***
Checkup_Plan_Maintain_Page
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Checkup_Management_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
    Wait Until Element Is Visible    xpath=${Checkup_Plan_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Checkup_Plan_XPATH}
    Sleep    1
