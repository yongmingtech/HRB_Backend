*** Setting ***
Suite Teardown
Test Setup        Click Health Checkup Item Button
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Health_Checkup_Basic_File_ID}    button-1022-btnIconEl
${Health_Checkup_Item_ID}    menuitem-1019-textEl
${Health_Checkup_Item_Tab_XPATH}    html/body/div[5]/div[1]/div[1]/div[2]/div/div/div/a/span[1]    # 健檢項目 Tab
${Health_Checkup_Item_DIV}    basicCheckGroupSearchForm-1050_header_hd-textEl    # 健檢大項查詢    DIV
${Health_Checkup_Name_Label}    checkItemNameComboBox-1051-labelEl    # 健檢細項名稱 Label
${Health_Checkup_Name_Dropdown}    checkItemNameComboBox-1051-inputEl    # 健檢細項名稱 Dropdown
${Query_Button}    button-1054-btnInnerEl    # 查詢按鈕 Button
${Refill_Button}    button-1055-btnInnerEl    # 重填按鈕 Button
${Health_Checkup_Big_Item_DIV}    basicCheckGroupGrid-1056_header_hd-textEl    # 健檢大項 DIV
${Health_Checkup_Big_Item_Insert_Button}    button-1079-btnInnerEl    #新增按鈕 Button
${Health_Checkup_Big_Item_Delete_Button}    button-1081-btnInnerEl    #刪除按鈕 Button
${Health_Checkup_Big_Item_Code_Column}    gridcolumn-1075-textEl    #大項代碼 Column
${Health_Checkup_Big_Item_Name_Column}    gridcolumn-1076-textEl    #大項名稱 Column
${Health_Checkup_Detail_Item_DIV}    basicCheckItemGrid-1083_header_hd-textEl    # 健檢細項 DIV
${Health_Checkup_Detail_Item_Insert_Button}    button-1112-btnInnerEl    #健檢細項 DIV 下的 新增按鈕 Button
${Health_Checkup_Detail_Item_Delete_Button}    button-1114-btnInnerEl    #健檢細項 DIV 下的 刪除按鈕 Button
${Health_Checkup_Detail_Item_LOINC_Column}    gridcolumn-1102-textEl    #健檢細項 DIV 下的 LOINC    Column
${Health_Checkup_Detail_Item_Code_Column}    gridcolumn-1103-textEl    #健檢細項 DIV 下的 健保碼    Column
${Health_Checkup_Detail_Item_DetailCode_Column}    gridcolumn-1104-textEl    #健檢細項 DIV 下的 細項代碼    Column
${Health_Checkup_Detail_Item_DetailName_Column}    gridcolumn-1105-textEl    #健檢細項 DIV 下的 細項名稱    Column
${Health_Checkup_Detail_Item_WorkerItem_Column}    booleancolumn-1106-textEl    #健檢細項 DIV 下的 勞檢項目    Column
${Health_Checkup_Detail_Item_DataType_Column}    gridcolumn-1107-textEl    #健檢細項 DIV 下的 資料類型    Column
${Health_Checkup_Detail_Item_OrgSystem_Column}    templatecolumn-1108-textEl    #健檢細項 DIV 下的 器官系統    Column
${Health_Checkup_Detail_Item_Description_Column}    gridcolumn-1109-titleEl    #健檢細項 DIV 下的 說明

*** Test Cases ***
Check page
    [Documentation]    Test case Description :
    ...    主要測試健檢基本檔下的健檢項目，測試整個頁面的文字對齊和文字是否按造規格顯示
    ...    1. 使用者點擊健檢基本檔
    ...    2. 使用者選擇健檢項目
    ...
    ...    Verify :
    ...    機構整個頁面和跳窗的文字對齊和文字是否按造規格顯示
    Log    宣告共用變數
    ${Verify_Align_Center}    Convert To String    text-align: center;
    ${Verify_Align_Left}    Convert To String    text-align: left;
    Log    Verify Tab
    ${Verify_Tab}=    Convert To String    健檢項目
    ${Get_Tab}=    Get Text    xpath=${Health_Checkup_Item_Tab_XPATH}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    Log    Verify 健檢大項查詢 DIV
    ${Verify_Health_Checkup_Item_DIV}=    Convert To String    健檢大項查詢
    ${Verify_Health_Checkup_Name_Label}=    Convert To String    健檢細項名稱:
    ${Verify_Query_Button}=    Convert To String    查詢
    ${Verify_Refill_Button}=    Convert To String    重填
    ${Verify_Insert_Button}=    Convert To String    新增
    ${Verify_Delete_Button}=    Convert To String    刪除
    ${Get_Health_Checkup_Item_DIV}=    Get Text    ${Health_Checkup_Item_DIV}
    ${Get_Health_Checkup_Name_Label}=    Get Text    ${Health_Checkup_Name_Label}
    ${Get_Query_Button}=    Get Text    ${Query_Button}
    ${Get_Refill_Button}=    Get Text    ${Refill_Button}
    Should Be Equal    ${Verify_Health_Checkup_Item_DIV}    ${Get_Health_Checkup_Item_DIV}
    Should Be Equal    ${Verify_Health_Checkup_Name_Label}    ${Get_Health_Checkup_Name_Label}
    Should Be Equal    ${Verify_Query_Button}    ${Get_Query_Button}
    Should Be Equal    ${Verify_Refill_Button}    ${Get_Refill_Button}
    Element Should Be Visible    ${Health_Checkup_Item_DIV}
    Log    Verify 健檢大項 Div
    ${Verify_Health_Checkup_Big_Item_DIV}=    Convert To String    健檢大項
    ${Verify_Health_Checkup_Big_Item_Insert_Button}=    Convert To String    新增
    ${Verify_Health_Checkup_Big_Item_Delete_Button}=    Convert To String    刪除
    ${Verify_Health_Checkup_Big_Item_Code_Column}=    Convert To String    大項代碼
    ${Verify_Health_Checkup_Big_Item_Name_Column}=    Convert To String    大項名稱
    ${Verify_Health_Checkup_Big_Item_Insert_Button}=    Convert To String    新增
    ${Verify_Health_Checkup_Big_Item_Delete_Button}=    Convert To String    刪除
    ${Get_Health_Checkup_Big_Item_DIV}    Get Text    ${Health_Checkup_Big_Item_DIV}
    ${Get_Health_Checkup_Big_Item_Insert_Button}    Get Text    ${Health_Checkup_Big_Item_Insert_Button}
    ${Get_Health_Checkup_Big_Item_Delete_Button}    Get Text    ${Health_Checkup_Big_Item_Delete_Button}
    ${Get_Health_Checkup_Big_Item_Code_Column}    Get Text    ${Health_Checkup_Big_Item_Code_Column}
    ${Get_Health_Checkup_Big_Item_Name_Column}    Get Text    ${Health_Checkup_Big_Item_Name_Column}
    ${Get_Health_Checkup_Big_Item_Insert_Button}=    Get Text    ${Health_Checkup_Big_Item_Insert_Button}
    ${Get_Health_Checkup_Big_Item_Delete_Button}=    Get Text    ${Health_Checkup_Big_Item_Delete_Button}
    ${Get_Health_Checkup_Big_Item_Code_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div@style
    ${Get_Health_Checkup_Big_Item_Name_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div@style
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_DIV}    ${Get_Health_Checkup_Big_Item_DIV}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Insert_Button}    ${Get_Health_Checkup_Big_Item_Insert_Button}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Delete_Button}    ${Get_Health_Checkup_Big_Item_Delete_Button}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Code_Column}    ${Get_Health_Checkup_Big_Item_Code_Column}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Name_Column}    ${Get_Health_Checkup_Big_Item_Name_Column}
    Should Be Equal    ${Verify_Insert_Button}    ${Get_Health_Checkup_Big_Item_Insert_Button}
    Should Be Equal    ${Verify_Delete_Button}    ${Get_Health_Checkup_Big_Item_Delete_Button}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Big_Item_Code_Style}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Health_Checkup_Big_Item_Name_Style}
    Log    Verify 健檢細項 DIV
    ${Verify_Health_Checkup_Detail_Item_DIV}    Convert To String    健檢細項
    ${Verify_Health_Checkup_Detail_Item_LOINC_Column}    Convert To String    LOINC
    ${Verify_Health_Checkup_Detail_Item_Code_Column}    Convert To String    健保碼
    ${Verify_Health_Checkup_Detail_Item_DetailCode_Column}    Convert To String    細項代碼
    ${Verify_Health_Checkup_Detail_Item_DetailName_Column}    Convert To String    細項名稱
    ${Verify_Health_Checkup_Detail_Item_WorkerItem_Column}    Convert To String    勞檢項目
    ${Verify_Health_Checkup_Detail_Item_DataType_Column}    Convert To String    資料類型
    ${Verify_Health_Checkup_Detail_Item_OrgSystem_Column}    Convert To String    器官系統
    ${Verify_Health_Checkup_Detail_Item_Description_Column}    Convert To String    說明
    ${Get_Health_Checkup_Detail_Item_DIV}    Get Text    ${Health_Checkup_Detail_Item_DIV}
    ${Get_Health_Checkup_Detail_Item_Insert_Button}    Get Text    ${Health_Checkup_Detail_Item_Insert_Button}
    ${Get_Health_Checkup_Detail_Item_Delete_Button}    Get Text    ${Health_Checkup_Detail_Item_Delete_Button}
    ${Get_Health_Checkup_Detail_Item_LOINC_Column}    Get Text    ${Health_Checkup_Detail_Item_LOINC_Column}
    ${Get_Health_Checkup_Detail_Item_Code_Column}    Get Text    ${Health_Checkup_Detail_Item_Code_Column}
    ${Get_Health_Checkup_Detail_Item_DetailCode_Column}    Get Text    ${Health_Checkup_Detail_Item_DetailCode_Column}
    ${Get_Health_Checkup_Detail_Item_DetailName_Column}    Get Text    ${Health_Checkup_Detail_Item_DetailName_Column}
    ${Get_Health_Checkup_Detail_Item_WorkerItem_Column}    Get Text    ${Health_Checkup_Detail_Item_WorkerItem_Column}
    ${Get_Health_Checkup_Detail_Item_DataType_Column}    Get Text    ${Health_Checkup_Detail_Item_DataType_Column}
    ${Get_Health_Checkup_Detail_Item_OrgSystem_Column}    Get Text    ${Health_Checkup_Detail_Item_OrgSystem_Column}
    ${Get_Health_Checkup_Detail_Item_Description_Column}    Get Text    ${Health_Checkup_Detail_Item_Description_Column}
    Log    Check align
    ${Get_Health_Checkup_Detail_Item_LOINC_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[4]/div@style
    ${Get_Health_Checkup_Detail_Item_Code_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[5]/div@style
    ${Get_Health_Checkup_Detail_Item_DetailCode_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[6]/div@style
    ${Get_Health_Checkup_Detail_Item_DetailName_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[7]/div@style
    ${Get_Health_Checkup_Detail_Item_WorkerItem_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[8]/div@style
    ${Get_Health_Checkup_Detail_Item_DataType_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[9]/div@style
    ${Get_Health_Checkup_Detail_Item_OrgSystem_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[10]/div@style
    ${Get_Health_Checkup_Detail_Item_Description_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[1]/td[11]/div@style
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_DIV}    ${Verify_Health_Checkup_Detail_Item_DIV}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_LOINC_Column}    ${Verify_Health_Checkup_Detail_Item_LOINC_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_Code_Column}    ${Verify_Health_Checkup_Detail_Item_Code_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_DetailCode_Column}    ${Verify_Health_Checkup_Detail_Item_DetailCode_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_DetailName_Column}    ${Verify_Health_Checkup_Detail_Item_DetailName_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_WorkerItem_Column}    ${Verify_Health_Checkup_Detail_Item_WorkerItem_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_DataType_Column}    ${Verify_Health_Checkup_Detail_Item_DataType_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_OrgSystem_Column}    ${Verify_Health_Checkup_Detail_Item_OrgSystem_Column}
    Should Be Equal    ${Verify_Health_Checkup_Detail_Item_Description_Column}    ${Get_Health_Checkup_Detail_Item_Description_Column}
    Should Be Equal    ${Verify_Insert_Button}    ${Get_Health_Checkup_Detail_Item_Insert_Button}
    Should Be Equal    ${Verify_Delete_Button}    ${Get_Health_Checkup_Detail_Item_Delete_Button}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_LOINC_Style}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_Code_Style}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_DetailCode_Style}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Health_Checkup_Detail_Item_DetailName_Style}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_WorkerItem_Style}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_DataType_Style}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Detail_Item_OrgSystem_Style}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Health_Checkup_Detail_Item_Description_Style}
    Sleep    1
    [Teardown]    Close Browser

*** Keywords ***
Click Health Checkup Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Health_Checkup_Basic_File_ID}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Health_Checkup_Basic_File_ID}
    Click Element    ${Health_Checkup_Basic_File_ID}
    Wait Until Element Is Visible    ${Health_Checkup_Item_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Health_Checkup_Item_ID}
    Sleep    3
