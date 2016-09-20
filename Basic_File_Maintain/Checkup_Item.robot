*** Setting ***
Documentation     基本檔維護 -> 健檢項目
...
...               主要測試健檢基本檔的基本項目
...               1. Check Page 主要測試裡面所有的字型和文字的位置，另外也檢查跳窗的文字和相關物件是否存在.
Suite Setup
Suite Teardown
Test Setup        Click Health Checkup Item Button
Test Teardown
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Checkup_Item_ID}    menuitem-1016-textEl    # menu id
#TAB
${Checkup_Item_Tab_XPATH}    html/body/div[5]/div[1]/div[1]/div[2]/div/div/div/a/span[1]    # 健檢項目 Tab
#Begin 健檢大項查詢 DIV
${Checkup_Item_DIV}    html/body/div[5]/div[2]/div/div/div[1]/div[1]/div/div/div/div[1]/span    # 健檢大項查詢    DIV
${Checkup_Name_Label}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td/table/tbody/tr/td[1]/label    # 健檢細項名稱 Label
${Checkup_Name_Dropdown}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td/table/tbody/tr/td[2]/table/tbody/tr/td[1]/input    # 健檢細項名稱 Dropdown
${Query_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[1]/div/a/span[1]    # 查詢按鈕 Button
${Refill_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[2]/div/a/span[1]    # 重填按鈕 Button
#End 健檢大項查詢 DIV
#Begin 健檢大項 DIV
${Checkup_Big_Item_DIV}    html/body/div[5]/div[2]/div/div/div[3]/div[1]/div/div/div/div/span    # 健檢大項 DIV
${Checkup_Big_Item_Insert_Button}    html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[1]/div/a/span[1]    #新增按鈕 Button
${Checkup_Big_Item_Delete_Button}    html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[3]/div/a/span[1]    #刪除按鈕 Button
${Checkup_Big_Item_Code_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[4]/div/span    #大項代碼 Column
${Checkup_Big_Item_Name_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[5]/div/span    #大項名稱 Column
#End 健檢大項 DIV
#Begin 健檢細項 DIV
${Checkup_Detail_Item_DIV}    html/body/div[5]/div[2]/div/div/div[5]/div[1]/div/div/div/div/span    # 健檢細項 DIV
${Checkup_Detail_Item_Insert_Button}    html/body/div[5]/div[2]/div/div/div[5]/div[2]/div/div/div[1]/div/a/span[1]    #健檢細項 DIV 下的 新增按鈕 Button
${Checkup_Detail_Item_Delete_Button}    html/body/div[5]/div[2]/div/div/div[5]/div[2]/div/div/div[3]/div/a/span[1]    #健檢細項 DIV 下的 刪除按鈕 Button
${Checkup_Detail_Item_LOINC_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[4]/div/span    #健檢細項 DIV 下的 LOINC    Column
${Checkup_Detail_Item_Code_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[5]/div/span    #健檢細項 DIV 下的 健保碼    Column
${Checkup_Detail_Item_DetailCode_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[6]/div/span    #健檢細項 DIV 下的 細項代碼    Column
${Checkup_Detail_Item_DetailName_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[7]/div/span    #健檢細項 DIV 下的 細項名稱    Column
${Checkup_Detail_Item_WorkerItem_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[8]/div/span    #健檢細項 DIV 下的 勞檢項目    Column
${Checkup_Detail_Item_DataType_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[9]/div/span    #健檢細項 DIV 下的 資料類型    Column
${Checkup_Detail_Item_OrgSystem_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[10]/div/span    #健檢細項 DIV 下的 器官系統    Column
${Checkup_Detail_Item_Description_Column}    html/body/div[5]/div[2]/div/div/div[5]/div[3]/div/div/div[11]/div/span    #健檢細項 DIV 下的 說明
#End 健檢細項 DIV
#Begin 跳窗-健檢大項
${PopupWindow_BigItem_Code_Title}    html/body/div[13]/div[1]/div/div/div/div[1]/span    #跳窗    健檢大項維護的Tile
${PopupWindow_BigItem_Code_Label}    html/body/div[13]/div[2]/div/div/span/div/table[1]/tbody/tr/td[1]/label    #跳窗    健檢大項維護 代碼
${PopupWindow_BigItem_Name_English_Label}    html/body/div[13]/div[2]/div/div/span/div/table[2]/tbody/tr/td[1]/label    #跳窗    健檢大項維護 大項名稱(英文)
${PopupWindow_BigItem_Name_Tranditional_Chinese_Label}    html/body/div[13]/div[2]/div/div/span/div/table[3]/tbody/tr/td[1]/label    #跳窗    健檢大項維護 大項名稱(繁中)
${PopupWindow_BigItem_Name_Simple_Chinese_Label}    html/body/div[13]/div[2]/div/div/span/div/table[4]/tbody/tr/td[1]/label    #跳窗    健檢大項維護 大項名稱(簡中)
${PopupWindow_BigItem_Code_TextBox}    html/body/div[13]/div[2]/div/div/span/div/table[1]/tbody/tr/td[2]/input    #跳窗    健檢大項維護 代碼 TextBox
${PopupWindow_BigItem_Name_English_TextBox}    html/body/div[13]/div[2]/div/div/span/div/table[2]/tbody/tr/td[2]/input    #跳窗    健檢大項維護 大項名稱(英文) TextBox
${PopupWindow_BigItem_Name_Tranditional_Chinese_TextBox}    html/body/div[13]/div[2]/div/div/span/div/table[3]/tbody/tr/td[2]/input    #跳窗    健檢大項維護 大項名稱(繁中) TextBox
${PopupWindow_BigItem_Name_Simple_Chinese_TextBox}    html/body/div[13]/div[2]/div/div/span/div/table[4]/tbody/tr/td[2]/input    #跳窗    健檢大項維護 大項名稱(簡中) TextBox
${PopupWindow_BigItem_Insert_Button}    html/body/div[13]/div[3]/div/div/div[1]/div/a/span[1]    #跳窗    健檢大項維護 新增按鈕 Button
${PopupWindow_BigItem_Close_Button}    html/body/div[13]/div[3]/div/div/div[4]/div/a/span[1]    #跳窗    健檢大項維護的關閉按鈕 Button
${PopupWindow_BigItem_Refill_Button}    html/body/div[13]/div[3]/div/div/div[3]/div/a/span[1]    #跳窗    健檢大項維護的重填按鈕 Button
${PopupWindow_BigItem_OK_Button}    html/body/div[14]/div[3]/div/div/div[2]/div/a/span[2]    #跳窗    健檢大項維護的警告確認按鈕 Button (必填欄位未填)
#End 跳窗-健檢大項
#Begin 跳窗-健檢細項
${PopupWindow_Detail_Title}    html/body/div[14]/div[1]/div/div/div/div[1]/span    #跳窗 健檢細項維護的Tile
${PopupWindow_Detail_Big_Item_Category_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[2]/tbody/tr/td[1]/label    #跳窗-大項分類
${PopupWindow_Detail_Laber_Item_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[3]/tbody/tr/td[1]/label    #跳窗-勞檢項目
${PopupWindow_Detail_LOINC_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[4]/tbody/tr/td[1]/label    #跳窗-LONINC
${PopupWindow_Detail_Healthcare_Code_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[5]/tbody/tr/td[1]/label    #跳窗-健保碼
${PopupWindow_Detail_Detail_Code_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[6]/tbody/tr/td[1]/label    #跳窗- 細項代碼
${PopupWindow_Detail_English_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[7]/tbody/tr/td[1]/label    #跳窗- 英文
${PopupWindow_Detail_Tranditional_Chinese_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[8]/tbody/tr/td[1]/label    #跳窗- 繁中
${PopupWindow_Detail_Simple_Chinese_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[9]/tbody/tr/td[1]/label    #跳窗- 簡中
${PopupWindow_Detail_DataType_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[10]/tbody/tr/td[1]/label    #跳窗- 資料類行
${PopupWindow_Detail_Description_Label}    html/body/div[14]/div[2]/div[1]/div/span/div/table[11]/tbody/tr/td[1]/label    #跳窗- 細項說明
${PopupWindow_Detail_Own_Organ_Div}    html/body/div[14]/div[2]/div[3]/div[1]/div/div/div/div/span    #跳窗-所屬器官DIV
${PopupWindow_Detail_Own_Organ_Column}    html/body/div[14]/div[2]/div[3]/div[2]/div/div/div[3]/div/span    #跳窗- 器官名稱
${PopupWindow_Detail_Laber_Item_CheckBox}    html/body/div[14]/div[2]/div[1]/div/span/div/table[3]/tbody/tr/td[2]/input    #跳窗    勞檢項目的Checkbox
${PopupWindow_Detail_LOINC_TextBox}    //table[4]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的 LOINC TextBox
${PopupWindow_Detail_HCode_TextBox}    //table[5]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的健保碼: TextBox
${PopupWindow_Detail_DCode_TextBox}    //table[6]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的 細項代碼 TextBox
${PopupWindow_Detail_English_TextBox}    //table[7]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的細項名稱(英文) TextBox
${PopupWindow_Detail_Tranditional_Chinese_TextBox}    //table[8]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的細項名稱(繁中) TextBox
${PopupWindow_Detail_Simple_Chinese_TextBox}    //table[9]/tbody/tr/td[2]/input    #跳窗    健檢細項維護的細項名稱(簡中)TextBox
${PopupWindow_Detail_DataType_Number_CheckBox}    //td/table/tbody/tr/td[2]/input    #跳窗 | #健檢細項維護的資料類型(數字)
${PopupWindow_Detail_DataType_writing_CheckBox}    //td[2]/table/tbody/tr/td[2]/input    #跳窗 | #健檢細項維護的資料類型(數字)
${PopupWindow_Detail_DataType_writingblock_CheckBox}    //td[3]/table/tbody/tr/td[2]/input    #跳窗 | #健檢細項維護的資料類型(數字)
${PopupWindow_Detail_Description_TextArea}    html/body/div[14]/div[2]/div[1]/div/span/div/table[11]/tbody/tr/td[2]/textarea    #跳窗    健檢細項維護的說明 TextArea
${PopupWindow_Detail_Refill_Button}    html/body/div[14]/div[3]/div/div/div[3]/div/a/span[1]    #跳窗    健檢細項維護的重填按鈕 Button
${PopupWindow_Detail_Insert_Button}    html/body/div[14]/div[3]/div/div/div[1]/div/a/span[1]    #跳窗 健檢細項維護的新增按鈕 Button
#end 跳窗-健檢細項
${Test_Query_Detail_Name}    1JR    # 查詢的測試資料
${Test_ItemCode}    (A01)
${Test_Item_Name_English}    Test
${Test_Item_Name_Simply_Chinese}    Test_1
${Test_Item_Name_Tranditional_Chinese}    Test_2
${Test_ItemCode_2}    (A02)
${Test_Item_Name_English_2}    Test2
${Test_Item_Name_Simply_Chinese_2}    Test_A
${Test_Item_Name_Tranditional_Chinese_2}    Test_B
${Test_PopupWindow_Detail_LOINC}    TEST_LOINC
${Test_PopupWindow_Detail_HCode}    ABC123
${Test_PopupWindow_Detail_DCode}    123456
${Test_PopupWindow_Detail_English}    Health
${Test_PopupWindow_Detail_Tranditional_Chinese}    健康
${Test_PopupWindow_Detail_Simple_Chinese}    健康管理
${Test_PopupWindow_Detail_Description}    主要測試健檢細項
${Test_Temp}      _Test

*** Test Cases ***
Check Page
    [Documentation]    Test case Description :
    ...    主要測試健檢基本檔下的健檢項目，測試整個頁面的文字對齊和文字是否按造規格顯示
    ...    1. 使用者點擊健檢基本檔
    ...    2. 使用者選擇健檢項目
    ...
    ...    Verify :
    ...    機構整個頁面和跳窗的文字對齊和文字是否按造規格顯示
    Remove Test Data
    #宣告共用變數
    ${Verify_Align_Center}    Convert To String    text-align: center;
    ${Verify_Align_Left}    Convert To String    text-align: left;
    ${Verify_Insert_Button}    Convert To String    新增
    ${Verify_Delete_Button}    Convert To String    刪除
    #Verify Tab
    ${Verify_Tab}    Convert To String    健檢項目
    ${Get_Tab}    Get Text    xpath=${Checkup_Item_Tab_XPATH}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    #Verify 健檢大項查詢 DIV
    ${Verify_Health_Checkup_Item_DIV}    Convert To String    健檢大項查詢
    ${Verify_Health_Checkup_Name_Label}    Convert To String    健檢細項名稱:
    ${Verify_Query_Button}    Convert To String    查詢
    ${Verify_Refill_Button}    Convert To String    重填
    ${Get_Health_Checkup_Item_DIV}    Get Text    xpath=${Checkup_Item_DIV}
    ${Get_Health_Checkup_Name_Label}    Get Text    xpath=${Checkup_Name_Label}
    ${Get_Query_Button}    Get Text    xpath=${Query_Button}
    ${Get_Refill_Button}    Get Text    xpath=${Refill_Button}
    Should Be Equal    ${Verify_Health_Checkup_Item_DIV}    ${Get_Health_Checkup_Item_DIV}
    Should Be Equal    ${Verify_Health_Checkup_Name_Label}    ${Get_Health_Checkup_Name_Label}
    Should Be Equal    ${Verify_Query_Button}    ${Get_Query_Button}
    Should Be Equal    ${Verify_Refill_Button}    ${Get_Refill_Button}
    #Verify 健檢大項 Div
    ${Verify_Health_Checkup_Big_Item_DIV}    Convert To String    健檢大項
    ${Verify_Health_Checkup_Big_Item_Insert_Button}    Convert To String    新增
    ${Verify_Health_Checkup_Big_Item_Delete_Button}    Convert To String    刪除
    ${Verify_Health_Checkup_Big_Item_Code_Column}    Convert To String    大項代碼
    ${Verify_Health_Checkup_Big_Item_Name_Column}    Convert To String    大項名稱
    ${Get_Health_Checkup_Big_Item_DIV}    Get Text    xpath=${Checkup_Big_Item_DIV}
    ${Get_Health_Checkup_Big_Item_Insert_Button}    Get Text    xpath=${Checkup_Big_Item_Insert_Button}
    ${Get_Health_Checkup_Big_Item_Delete_Button}    Get Text    xpath=${Checkup_Big_Item_Delete_Button}
    ${Get_Health_Checkup_Big_Item_Code_Column}    Get Text    xpath=${Checkup_Big_Item_Code_Column}
    ${Get_Health_Checkup_Big_Item_Name_Column}    Get Text    xpath=${Checkup_Big_Item_Name_Column}
    ${Get_Health_Checkup_Big_Item_Insert_Button}    Get Text    xpath=${Checkup_Big_Item_Insert_Button}
    ${Get_Health_Checkup_Big_Item_Delete_Button}    Get Text    xpath=${Checkup_Big_Item_Delete_Button}
    ${Get_Health_Checkup_Big_Item_Code_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div@style
    ${Get_Health_Checkup_Big_Item_Name_Style}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div@style
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_DIV}    ${Get_Health_Checkup_Big_Item_DIV}
    Should Be Equal    ${Verify_Insert_Button}    ${Get_Health_Checkup_Big_Item_Insert_Button}
    Should Be Equal    ${Verify_Delete_Button}    ${Get_Health_Checkup_Big_Item_Delete_Button}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Code_Column}    ${Get_Health_Checkup_Big_Item_Code_Column}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Name_Column}    ${Get_Health_Checkup_Big_Item_Name_Column}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Insert_Button}    ${Get_Health_Checkup_Big_Item_Insert_Button}
    Should Be Equal    ${Verify_Health_Checkup_Big_Item_Delete_Button}    ${Get_Health_Checkup_Big_Item_Delete_Button}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Health_Checkup_Big_Item_Code_Style}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Health_Checkup_Big_Item_Name_Style}
    #Verify 健檢細項 DIV
    ${Verify_Health_Checkup_Detail_Item_DIV}    Convert To String    健檢細項
    ${Verify_Health_Checkup_Detail_Item_LOINC_Column}    Convert To String    LOINC
    ${Verify_Health_Checkup_Detail_Item_Code_Column}    Convert To String    健保碼
    ${Verify_Health_Checkup_Detail_Item_DetailCode_Column}    Convert To String    細項代碼
    ${Verify_Health_Checkup_Detail_Item_DetailName_Column}    Convert To String    細項名稱
    ${Verify_Health_Checkup_Detail_Item_WorkerItem_Column}    Convert To String    勞檢項目
    ${Verify_Health_Checkup_Detail_Item_DataType_Column}    Convert To String    資料類型
    ${Verify_Health_Checkup_Detail_Item_OrgSystem_Column}    Convert To String    器官系統
    ${Verify_Health_Checkup_Detail_Item_Description_Column}    Convert To String    細項說明
    ${Get_Health_Checkup_Detail_Item_DIV}    Get Text    xpath=${Checkup_Detail_Item_DIV}
    ${Get_Health_Checkup_Detail_Item_Insert_Button}    Get Text    xpath=${Checkup_Detail_Item_Insert_Button}
    ${Get_Health_Checkup_Detail_Item_Delete_Button}    Get Text    xpath=${Checkup_Detail_Item_Delete_Button}
    ${Get_Health_Checkup_Detail_Item_LOINC_Column}    Get Text    xpath=${Checkup_Detail_Item_LOINC_Column}
    ${Get_Health_Checkup_Detail_Item_Code_Column}    Get Text    xpath=${Checkup_Detail_Item_Code_Column}
    ${Get_Health_Checkup_Detail_Item_DetailCode_Column}    Get Text    xpath=${Checkup_Detail_Item_DetailCode_Column}
    ${Get_Health_Checkup_Detail_Item_DetailName_Column}    Get Text    xpath=${Checkup_Detail_Item_DetailName_Column}
    ${Get_Health_Checkup_Detail_Item_WorkerItem_Column}    Get Text    xpath=${Checkup_Detail_Item_WorkerItem_Column}
    ${Get_Health_Checkup_Detail_Item_DataType_Column}    Get Text    xpath=${Checkup_Detail_Item_DataType_Column}
    ${Get_Health_Checkup_Detail_Item_OrgSystem_Column}    Get Text    xpath=${Checkup_Detail_Item_OrgSystem_Column}
    ${Get_Health_Checkup_Detail_Item_Description_Column}    Get Text    xpath=${Checkup_Detail_Item_Description_Column}
    Log    Check align
    Sleep    3
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
    #Verify 健檢大項 跳窗
    Click Element    xpath=${Checkup_Big_Item_Insert_Button}
    ${Verify_Big_Item_Title}    Get Text    xpath=${PopupWindow_BigItem_Code_Title}
    ${Verify_Big_Item_Title}    Convert To String    健檢大項維護
    ${Verify_Big_Item_Code}    Convert To String    *大項代碼:
    ${Verify_Big_Name_Code_English}    Convert To String    *大項名稱(英文):
    ${Verify_Big_Name_Code_Simple_Chinese}    Convert To String    *大項名稱(簡中):
    ${Verify_Big_Name_Code_Tranditional_Chinese}    Convert To String    *大項名稱(繁中):
    ${Get_PopupWindow_BigItem_Code_Label}    Get Text    xpath=${PopupWindow_BigItem_Code_Label}
    ${Get_PopupWindow_BigItem_Name_English_Label}    Get Text    xpath=${PopupWindow_BigItem_Name_English_Label}
    ${Get_PopupWindow_BigItem_Name_Simple_Chinese_Label}    Get Text    xpath=${PopupWindow_BigItem_Name_Simple_Chinese_Label}
    ${Get_PopupWindow_BigItem_Name_Tranditional_Chinese_Label}    Get Text    xpath=${PopupWindow_BigItem_Name_Tranditional_Chinese_Label}
    Should Be Equal    ${Verify_Big_Item_Title}    ${Verify_Big_Item_Title}
    Should Be Equal    ${Verify_Big_Item_Code}    ${Get_PopupWindow_BigItem_Code_Label}
    Should Be Equal    ${Verify_Big_Name_Code_English}    ${Get_PopupWindow_BigItem_Name_English_Label}
    Should Be Equal    ${Verify_Big_Name_Code_Simple_Chinese}    ${Get_PopupWindow_BigItem_Name_Simple_Chinese_Label}
    Should Be Equal    ${Verify_Big_Name_Code_Tranditional_Chinese}    ${Get_PopupWindow_BigItem_Name_Tranditional_Chinese_Label}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Code_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Name_English_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Name_Tranditional_Chinese_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Name_Simple_Chinese_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Insert_Button}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Close_Button}
    Element Should Be Visible    xpath=${PopupWindow_BigItem_Refill_Button}
    Click Element    xpath=${PopupWindow_BigItem_Close_Button}    #Click close button
    #Verify 健檢細項 跳窗
    Click Element    xpath=${Checkup_Detail_Item_Insert_Button}
    Wait Until Element Is Visible    xpath=${PopupWindow_Detail_Title}    ${G_Wait_For_Element_Timeout}    #跳窗
    ${Verify_Detail_Title}    Convert To String    健檢細項維護
    ${Verify_Detail_Name_Label}    Convert To String    大項分類:
    ${Verify_Detail_Item_Label}    Convert To String    勞檢項目:
    ${Verify_Detail_LOINC_Label}    Convert To String    LOINC:
    ${Verify_Detail_HCode_Label}    Convert To String    健保碼:
    ${Verify_Detail_DCode_Label}    Convert To String    *細項代碼:
    ${Verify_Detail_English_Label}    Convert To String    *細項名稱(英文):
    ${Verify_Detail_Tranditional_Chinese_Label}    Convert To String    *細項名稱(繁中):
    ${Verify_Detail_Simple_Chinese_Label}    Convert To String    *細項名稱(簡中):
    ${Verify_Detail_DataType_Label}    Convert To String    *資料類型:
    ${Verify_Detail_Description_Label}    Convert To String    細項說明:
    ${Verify_Detail_OwnOrg_Div}    Convert To String    所屬器官系統
    ${Verify_Detail_OwnOrg_Column}    Convert To String    器官名稱
    ${Get_Detail_Title}    Get Text    xpath=${PopupWindow_Detail_Title}
    ${Get_Detail_Name_Label}    Get Text    xpath=${PopupWindow_Detail_Big_Item_Category_Label}
    ${Get_Detail_Item_Label}    Get Text    xpath=${PopupWindow_Detail_Laber_Item_Label}
    ${Get_Detail_LOINC_Label}    Get Text    xpath=${PopupWindow_Detail_LOINC_Label}
    ${Get_Detail_HCode_Label}    Get Text    xpath=${PopupWindow_Detail_Healthcare_Code_Label}
    ${Get_Detail_DCode_Label}    Get Text    xpath=${PopupWindow_Detail_Detail_Code_Label}
    ${Get_Detail_English_Label}    Get Text    xpath=${PopupWindow_Detail_English_Label}
    ${Get_Detail_Tranditional_Chinese_Label}    Get Text    xpath=${PopupWindow_Detail_Tranditional_Chinese_Label}
    ${Get_Detail_Simple_Chinese_Label}    Get Text    xpath=${PopupWindow_Detail_Simple_Chinese_Label}
    ${Get_Detail_DataType_Label}    Get Text    xpath=${PopupWindow_Detail_DataType_Label}
    ${Get_Detail_Description_Label}    Get Text    xpath=${PopupWindow_Detail_Description_Label}
    ${Get_Detail_OwnOrg_Div}    Get Text    xpath=${PopupWindow_Detail_Own_Organ_Div}
    ${Get_Detail_OwnOrg_Column}    Get Text    xpath=${PopupWindow_Detail_Own_Organ_Column}
    ${Get_Detail_OwnOrg_Style}    Get Element Attribute    xpath=html/body/div[14]/div[2]/div[3]/div[3]/div/table/tbody/tr[1]/td[3]/div@style
    Should Be Equal    ${Verify_Detail_Title}    ${Get_Detail_Title}
    Should Be Equal    ${Verify_Detail_Name_Label}    ${Get_Detail_Name_Label}
    Should Be Equal    ${Verify_Detail_Item_Label}    ${Get_Detail_Item_Label}
    Should Be Equal    ${Verify_Detail_LOINC_Label}    ${Get_Detail_LOINC_Label}
    Should Be Equal    ${Verify_Detail_HCode_Label}    ${Get_Detail_HCode_Label}
    Should Be Equal    ${Verify_Detail_DCode_Label}    ${Get_Detail_DCode_Label}
    Should Be Equal    ${Verify_Detail_English_Label}    ${Get_Detail_English_Label}
    Should Be Equal    ${Verify_Detail_Tranditional_Chinese_Label}    ${Get_Detail_Tranditional_Chinese_Label}
    Should Be Equal    ${Verify_Detail_Simple_Chinese_Label}    ${Get_Detail_Simple_Chinese_Label}
    Should Be Equal    ${Verify_Detail_DataType_Label}    ${Get_Detail_DataType_Label}
    Should Be Equal    ${Verify_Detail_Description_Label}    ${Get_Detail_Description_Label}
    Should Be Equal    ${Verify_Detail_OwnOrg_Div}    ${Get_Detail_OwnOrg_Div}
    Should Be Equal    ${Verify_Detail_OwnOrg_Column}    ${Get_Detail_OwnOrg_Column}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Detail_OwnOrg_Style}
    #Check Conponent
    Element Should Be Visible    xpath=${PopupWindow_Detail_Laber_Item_CheckBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_LOINC_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_HCode_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_DCode_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_English_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_Tranditional_Chinese_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_Simple_Chinese_TextBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_DataType_Number_CheckBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_DataType_writing_CheckBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_DataType_writingblock_CheckBox}
    Element Should Be Visible    xpath=${PopupWindow_Detail_Description_TextArea}
    Element Should Be Visible    xpath=${PopupWindow_Detail_Refill_Button}
    Element Should Be Visible    xpath=${PopupWindow_Detail_Insert_Button}
    [Teardown]    Close Browser

Sort By Item Code
    [Documentation]    Test case Description :
    ...    主要驗證健檢大項的大項代碼是否由小到大排列
    ...
    ...    Verify :
    ...    大項代碼應該由小到大排列
    Connect Database
    ${Get_Item_Code_Count}    Get Matching Xpath Count    html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr
    ${Get_Item_Code_List}    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Item_Code_Count}+1
    \    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[${INDEX}]/td[4]/div
    \    Append To List    ${Get_Item_Code_List}    ${Get_Name}
    ${Query_Basic_CheckGroup}=    Set Variable    select Top ${Get_Item_Code_Count} group_code from Basic_CheckGroup where active_flag=1 order by group_code asc
    ${Result}    Query    ${Query_Basic_CheckGroup}
    : FOR    ${Index}    IN RANGE    0    ${Get_Item_Code_Count}
    \    ${Verify_From_DB}    Convert To String    ${Result[${Index}][0]}
    \    ${Get_From_Web}    Convert To String    ${Get_Item_Code_List[${Index}]}
    \    Should Be Equal    ${Verify_From_DB}    ${Get_From_Web}
    [Teardown]    Close Browser

Sort By Detail Code
    [Documentation]    Test case Description :
    ...    主要驗證健檢細項的細項代碼是否由小到大排列
    ...
    ...    Verify :
    ...    細項代碼應該由小到大排列
    Connect Database
    ${Get_Big_Item_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div
    ${Get_Detail_Count}    Get Matching Xpath Count    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr
    ${Get_Detail_List}    Create List
    : FOR    ${Index}    IN RANGE    1    ${Get_Detail_Count}+1
    \    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr[${Index}]/td[6]/div
    \    Append To List    ${Get_Detail_List}    ${Get_Name}
    ${Query_Basic_Item}    Set Variable    select item_code from Basic_CheckItem where group_id = (select id from Basic_CheckGroup where group_code='${Get_Big_Item_Code}' ) and active_flag=1 order by item_code asc
    ${Result}    Query    ${Query_Basic_Item}
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Detail_Count}
    \    ${Verify_From_DB}    Convert To String    ${Result[${index}][0]}
    \    ${Verify_From_Web}    Convert To String    ${Get_Detail_List[${INDEX}]}
    \    Should Be Equal    ${Verify_From_DB}    ${Verify_From_Web}
    [Teardown]    Close Browser

Sort By Organ Name
    [Documentation]    Test case Description :
    ...    1. 使用者點擊健檢細項裡面的第一筆資料
    ...    2. 跳出健檢細項維護的視窗
    ...    3. 驗證所屬器官系統的器官名稱是否由小到大排序
    ...
    ...    Verify :
    ...    器官名稱應該由小到大排序
    Connect Database
    Click Element    xpath=${Checkup_Detail_Item_Insert_Button}    #點擊 健檢細項新增按鈕
    ${Get_Organ_Name_Count}    Get Matching Xpath Count    html/body/div[13]/div[2]/div[3]/div[3]/div/table/tbody/tr
    ${Get_Organ_Name_List}    Create List
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Organ_Name_Count}+1
    \    ${Get_Name}=    Get Text    xpath=html/body/div[13]/div[2]/div[3]/div[3]/div/table/tbody/tr[${INDEX}]/td[3]/div
    \    Append To List    ${Get_Organ_Name_List}    ${Get_Name}
    ${Query_Basic_Organ}=    Set Variable    select TOP ${Get_Organ_Name_Count} Organ_name from Basic_Organ where active_flag=1 order by organ_code asc
    ${Result}    Query    ${Query_Basic_Organ}
    : FOR    ${Index}    IN RANGE    0    ${Get_Organ_Name_Count}
    \    ${Verify_From_DB}    Convert To String    ${Result[${Index}][0]}
    \    ${Get_From_Web}    Convert To String    ${Get_Organ_Name_List[${Index}]}
    \    Should Be Equal    ${Verify_From_DB}    ${Get_From_Web}
    [Teardown]    Close Browser

Refill Form For Big Item
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢大項中點擊新增按鈕
    ...    2. 視窗會跳出健檢大項維護的相關資訊
    ...    3. 在所有欄位中輸入資料
    ...    4. 按下重填按鈕
    ...
    ...    Verify :
    ...    所有欄位應該要被清空
    Click Element    xpath=${Checkup_Big_Item_Insert_Button}
    Wait Until Element Is Visible    xpath=${PopupWindow_BigItem_Code_TextBox}    ${G_Wait_For_Element_Timeout}
    #輸入資料
    Input Text    xpath=${PopupWindow_BigItem_Code_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_BigItem_Name_English_TextBox}    ${Test_Item_Name_English}
    Input Text    xpath=${PopupWindow_BigItem_Name_Simple_Chinese_TextBox}    ${Test_Item_Name_Simply_Chinese}
    Input Text    xpath=${PopupWindow_BigItem_Name_Tranditional_Chinese_TextBox}    ${Test_Item_Name_Tranditional_Chinese}
    Click Element    xpath=${PopupWindow_BigItem_Refill_Button}
    ${Get_BigItem_Code}    Get Text    xpath=${PopupWindow_BigItem_Code_TextBox}
    ${Get_BigItem_Name_English}    Get Text    xpath=${PopupWindow_BigItem_Name_English_TextBox}
    ${Get_BigItem_Name_Simple_Chinese}    Get Text    xpath=${PopupWindow_BigItem_Name_Simple_Chinese_TextBox}
    ${Get_BigItem_Name_Tranditional_Chinese}    Get Text    xpath=${PopupWindow_BigItem_Name_Tranditional_Chinese_TextBox}
    Should Be Empty    ${Get_BigItem_Code}
    Should Be Empty    ${Get_BigItem_Name_English}
    Should Be Empty    ${Get_BigItem_Name_Simple_Chinese}
    Should Be Empty    ${Get_BigItem_Name_Tranditional_Chinese}
    [Teardown]    Close Browser

Refill Form For Detail Item
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢細項中點擊新增按鈕
    ...    2. 視窗會跳出健檢細項維護的相關資訊
    ...    3. 在所有欄位中輸入資料
    ...    4. 按下重填按鈕
    ...
    ...    Verify :
    ...    所有欄位應該要被清空
    Insert One Record In Big Item
    Click Element    xpath=${Checkup_Detail_Item_Insert_Button}
    Wait Until Element Is Visible    xpath=${PopupWindow_Detail_Title}    ${G_Wait_For_Element_Timeout}
    ${Get_CheckBox_Count}    Get Matching Xpath Count    xpath=html/body/div[14]/div[2]/div[3]/div[3]/div/table/tbody/tr
    Log    輸入資料
    : FOR    ${Index}    IN RANGE    1    ${Get_CheckBox_Count}
    \    Click Element    xpath=html/body/div[14]/div[2]/div[3]/div[3]/div/table/tbody/tr[${Index}]/td[1]/div
    Click Element    xpath=${PopupWindow_Detail_Laber_Item_CheckBox}
    Input Text    xpath=${PopupWindow_Detail_LOINC_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_Detail_HCode_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_Detail_DCode_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_Detail_English_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_Detail_Tranditional_Chinese_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_Detail_Simple_Chinese_TextBox}    ${Test_ItemCode}
    Click Element    xpath=${PopupWindow_Detail_DataType_Number_CheckBox}
    Input Text    xpath=${PopupWindow_Detail_Description_TextArea}    ${Test_ItemCode}
    Click Element    xpath=${PopupWindow_Detail_Refill_Button}    #點擊重填
    #取得資料
    ${Get_Detail_LOINC_TextBox}    Get Text    xpath=${PopupWindow_Detail_LOINC_TextBox}
    ${Get_Detail_HCode_TextBox}    Get Text    xpath=${PopupWindow_Detail_HCode_TextBox}
    ${Get_Detail_DCode_TextBox}    Get Text    xpath=${PopupWindow_Detail_DCode_TextBox}
    ${Get_Detail_English_TextBox}    Get Text    xpath=${PopupWindow_Detail_English_TextBox}
    ${Get_Detail_Tranditional_Chinese_TextBox}    Get Text    xpath=${PopupWindow_Detail_Tranditional_Chinese_TextBox}
    ${Get_Detail_Simple_Chinese_TextBox}    Get Text    xpath=${PopupWindow_Detail_Simple_Chinese_TextBox}
    ${Get_Detail_Description_TextArea}    Get Text    xpath=${PopupWindow_Detail_Description_TextArea}
    #驗證欄位
    CheckBox Should Not Be Selected    xpath=${PopupWindow_Detail_Laber_Item_CheckBox}
    Should Be Empty    ${Get_Detail_LOINC_TextBox}
    Should Be Empty    ${Get_Detail_HCode_TextBox}
    Should Be Empty    ${Get_Detail_DCode_TextBox}
    Should Be Empty    ${Get_Detail_English_TextBox}
    Should Be Empty    ${Get_Detail_Tranditional_Chinese_TextBox}
    Should Be Empty    ${Get_Detail_Simple_Chinese_TextBox}
    CheckBox Should Not Be Selected    xpath=${PopupWindow_Detail_DataType_Number_CheckBox}
    Should Be Empty    ${Get_Detail_Description_TextArea}
    Sleep    1
    ${None_Value}    Convert To String    None
    : FOR    ${Index}    IN RANGE    1    ${Get_CheckBox_Count}
    \    ${Get_CheckBox}    Get Text    xpath=html/body/div[14]/div[2]/div[3]/div[3]/div/table/tbody/tr[${Index}]/td[1]/div/img
    \    Should Be Empty    ${Get_CheckBox}
    Remove Test Data
    [Teardown]    Close Browser

Query Detail Name
    [Documentation]    Test case Description :
    ...    1. 使用者點擊健檢細項裡面的第一筆資料
    ...    2. 跳出健檢細項維護的視窗
    ...    3. 驗證所屬器官系統的器官名稱是否由小到大排序
    ...
    ...    Verify :
    ...    器官名稱應該由小到大排序
    Connect Database
    Insert One Record In Big Item
    Insert One Record In Detail Item
    Input Text    xpath=${Checkup_Name_Dropdown}    ${Test_PopupWindow_Detail_Tranditional_Chinese}
    Click Element    xpath=${Query_Button}
    Sleep    3
    Log    Verify 健檢大項是否有資料
    ${Query_Basic_CheckGroup}    Set Variable    select group_code,group_name_zh_tw from Basic_CheckGroup where group_name_zh_tw='${Test_Item_Name_Tranditional_Chinese}'
    ${Query_Item_Result}    Query    ${Query_Basic_CheckGroup}
    ${Get_Item_Code_From_Web}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div
    ${Get_Item_Name_From_Web}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div
    ${Get_Item_Code_From_DB}    Convert To String    ${Query_Item_Result[0][0]}
    ${Get_Item_Name_From_DB}    Convert To String    ${Query_Item_Result[0][1]}
    Should Be Equal    ${Get_Item_Code_From_Web}    ${Get_Item_Code_From_DB}
    Should Be Equal    ${Get_Item_Name_From_Web}    ${Get_Item_Name_From_DB}
    Log    Verify 健檢細項是否有資料
    [Teardown]    Close Browser

Insert Record in Big Item
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢大項中點擊新增按鈕
    ...    2. 視窗會跳出健檢大項維護的相關資訊
    ...    3. 輸入資料後並按下確定
    ...    4. 驗證資料是否有在資料庫中
    ...    5. 驗證資料在網頁中的值跟輸入的是否一樣
    ...    6. 在畫面中刪除資料
    ...    7. 檢查資料是否在DB中有被成功移除
    ...
    ...    Verify :
    ...    新增是和刪除和網頁是否正確
    Insert One Record In Big Item
    Log    UI 作刪除
    Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[2]/div/img
    Click Element    xpath=${Checkup_Big_Item_Delete_Button}
    Wait Until Element Is Visible    xpath=${PopupWindow_BigItem_OK_Button}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${PopupWindow_BigItem_OK_Button}
    Sleep    2
    Check Big Item Record IS NOT IN DB
    Remove Test Data    #移除測試資料
    [Teardown]    Close Browser

Alert Big Item Form
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢大項中點擊新增按鈕
    ...    2. 視窗會跳出健檢大項維護的相關資訊
    ...    3. 輸入資料後並按下確定
    ...    4. 驗證資料是否有在資料庫中
    ...    5. 驗證資料在網頁中的值跟輸入的是否一樣
    ...    6. 點擊第一筆資料並做修改
    ...    7. 驗證資料是否有在資料庫中
    ...    8. 驗證資料在網頁中的值跟輸入的是否一樣
    ...    9. 在畫面中刪除資料
    ...    10. 檢查資料是否在DB中有被成功移除
    ...
    ...    Verify :
    ...    新增是和刪除和網頁是否正確
    Insert One Record In Big Item
    Log    點擊第一筆資料準備做修改
    Double Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[1]/div
    Sleep    1
    Input Text    xpath=html/body/div[14]/div[2]/div/div/span/div/table[2]/tbody/tr/td[2]/input    ${Test_ItemCode_2}
    Input Text    xpath=html/body/div[14]/div[2]/div/div/span/div/table[3]/tbody/tr/td[2]/input    ${Test_Item_Name_English_2}
    Input Text    xpath=html/body/div[14]/div[2]/div/div/span/div/table[4]/tbody/tr/td[2]/input    ${Test_Item_Name_Tranditional_Chinese_2}
    Input Text    xpath=html/body/div[14]/div[2]/div/div/span/div/table[5]/tbody/tr/td[2]/input    ${Test_Item_Name_Simply_Chinese_2}
    Click Element    xpath=html/body/div[14]/div[3]/div/div/div[2]/div/a/span[1]
    Sleep    2
    Log    驗證資料庫是否正確
    ${Query_Big_Item}    Set Variable    select * from Basic_CheckGroup where group_code='${Test_ItemCode_2}' and group_name_en='${Test_Item_Name_English_2}' and group_name_zh_cn='${Test_Item_Name_Simply_Chinese_2}' and group_name_zh_tw='${Test_Item_Name_Tranditional_Chinese_2}' and active_flag=1
    Check If Exists In Database    ${Query_Big_Item}
    Log    驗證修改後的網頁是否正確
    ${Get_Big_Item_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div
    ${Get_Item_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div
    Should Be Equal    ${Test_ItemCode_2}    ${Get_Big_Item_Code}
    Should Be Equal    ${Test_Item_Name_Tranditional_Chinese_2}    ${Get_Item_Name}
    Log    UI 作刪除
    Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[2]/div/img
    Click Element    xpath=${Checkup_Big_Item_Delete_Button}
    Sleep    2
    Click Element    xpath=${PopupWindow_BigItem_OK_Button}
    Sleep    2
    Log    驗正輸入資料不應該再DB
    Check If Not Exists In Database    ${Query_Big_Item}
    [Teardown]    Close Browser

Insert Record In Detail Item
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢大項中點擊新增按鈕
    ...    2. 視窗會跳出健檢大項維護的相關資訊
    ...    3. 輸入資料後並按下確定
    ...    4. 驗證資料是否有在資料庫中
    ...    5. 驗證資料在網頁中的值跟輸入的是否一樣
    ...    6. 使用者在健檢細項中點擊新增按鈕
    ...    7. 輸入資料後並按下新增
    ...
    ...    Verify :
    ...    健檢細項應該和輸入的值一樣
    Insert One Record In Big Item
    Insert One Record In Detail Item
    [Teardown]    Close Browser

Alter Detail Item Form
    [Documentation]    Test case Description :
    ...    1. 使用者在健檢大項中點擊新增按鈕
    ...    2. 視窗會跳出健檢大項維護的相關資訊
    ...    3. 輸入資料後並按下確定
    ...    4. 驗證資料是否有在資料庫中
    ...    5. 驗證資料在網頁中的值跟輸入的是否一樣
    ...    6. 使用者在健檢細項中點擊新增按鈕
    ...    7. 輸入資料後並按下新增
    ...    8. 點擊健檢細項
    ...    9. 重新編集資料
    ...    10. 按下確認
    ...
    ...    Verify :
    ...    健檢細項應該和重新輸入的值一樣
    Insert One Record In Big Item
    Insert One Record In Detail Item
    Sleep    1
    Double Click Element    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[5]/div
    Sleep    1
    Click Element    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[3]/tbody/tr/td[2]/input
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[4]/tbody/tr/td[2]/input    ${Test_Temp}
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[5]/tbody/tr/td[2]/input    ${Test_Temp}
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[6]/tbody/tr/td[2]/input    ${Test_Temp}
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[7]/tbody/tr/td[2]/input    ${Test_Temp}
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[8]/tbody/tr/td[2]/input    ${Test_Temp}
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[9]/tbody/tr/td[2]/input    ${Test_Temp}
    Click Element    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[10]/tbody/tr/td[2]/div/table/tbody/tr/td[2]/table/tbody/tr/td[2]/input
    Input Text    xpath=html/body/div[14]/div[2]/div[1]/div/span/div/table[11]/tbody/tr/td[2]/textarea    ${Test_Temp}
    Click Element    xpath=html/body/div[14]/div[3]/div/div/div[2]/div/a/span[1]
    Sleep    2
    Log    驗證網頁資料
    ${Verify_DataType}    Convert To String    文字
    ${Get_LOINC}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[4]/div
    ${Get_Health_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[5]/div
    ${Get_Detail_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[6]/div
    ${Get_Detail_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[7]/div
    ${Get_Label_Item}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[8]/div
    ${Get_DataType}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[9]/div
    ${Get_Description}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[11]/div
    Should Be Equal    ${Test_Temp}    ${Get_LOINC}
    Should Be Equal    ${Test_Temp}    ${Get_Health_Code}
    Should Be Equal    ${Test_Temp}    ${Get_Detail_Code}
    Should Be Equal    ${Test_Temp}    ${Get_Detail_Name}
    Should Be Equal    ${Verify_DataType}    ${Get_DataType}
    Should Be Equal    ${Test_Temp}    ${Get_Description}
    Sleep    1
    Remove Test Data
    [Teardown]    Close Browser

*** Keywords ***
Click Health Checkup Item Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Basic_File_MainTain_Tab}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Basic_File_MainTain_Tab}
    Click Element    ${G_Basic_File_MainTain_Tab}
    Wait Until Element Is Visible    ${Checkup_Item_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Checkup_Item_ID}
    Wait Until Element Is Visible    xpath=${Checkup_Item_Tab_XPATH}    ${G_Wait_For_Element_Timeout}    #等待Tab出現就算完成

Insert One Record In Detail Item
    Click Element    xpath=${Checkup_Detail_Item_Insert_Button}
    Sleep    1
    Click Element    xpath=${PopupWindow_Detail_Laber_Item_CheckBox}
    Input Text    xpath=${PopupWindow_Detail_LOINC_TextBox}    ${Test_PopupWindow_Detail_LOINC}
    Input Text    xpath=${PopupWindow_Detail_HCode_TextBox}    ${Test_PopupWindow_Detail_HCode}
    Input Text    xpath=${PopupWindow_Detail_DCode_TextBox}    ${Test_PopupWindow_Detail_DCode}
    Input Text    xpath=${PopupWindow_Detail_English_TextBox}    ${Test_PopupWindow_Detail_English}
    Input Text    xpath=${PopupWindow_Detail_Tranditional_Chinese_TextBox}    ${Test_PopupWindow_Detail_Tranditional_Chinese}
    Input Text    xpath=${PopupWindow_Detail_Simple_Chinese_TextBox}    ${Test_PopupWindow_Detail_Simple_Chinese}
    Click Element    xpath=${PopupWindow_Detail_DataType_Number_CheckBox}
    Input Text    xpath=${PopupWindow_Detail_Description_TextArea}    ${Test_PopupWindow_Detail_Description}
    Click Element    xpath=${PopupWindow_Detail_Insert_Button}
    Sleep    1
    Log    驗證網頁資料
    ${Verify_DataType}    Convert To String    數字
    ${Verify_Label_Item}    Convert To String    Y
    ${Get_LOINC}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[4]/div
    ${Get_Health_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[5]/div
    ${Get_Detail_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[6]/div
    ${Get_Detail_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[7]/div
    ${Get_Label_Item}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[8]/div
    ${Get_DataType}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[9]/div
    ${Get_Description}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div[4]/div/table/tbody/tr/td[11]/div
    Should Be Equal    ${Test_PopupWindow_Detail_LOINC}    ${Get_LOINC}
    Should Be Equal    ${Test_PopupWindow_Detail_HCode}    ${Get_Health_Code}
    Should Be Equal    ${Test_PopupWindow_Detail_DCode}    ${Get_Detail_Code}
    Should Be Equal    ${Test_PopupWindow_Detail_Tranditional_Chinese}    ${Get_Detail_Name}
    Should Be Equal    ${Verify_Label_Item}    ${Get_Label_Item}
    Should Be Equal    ${Verify_DataType}    ${Get_DataType}
    Should Be Equal    ${Test_PopupWindow_Detail_Description}    ${Get_Description}

Insert One Record In Big Item
    Remove Test Data    #移除測試資料
    Click Element    xpath=${Checkup_Big_Item_Insert_Button}
    Wait Until Element Is Visible    xpath=${PopupWindow_BigItem_Code_TextBox}    ${G_Wait_For_Element_Timeout}
    #輸入測試資料
    Input Text    xpath=${PopupWindow_BigItem_Code_TextBox}    ${Test_ItemCode}
    Input Text    xpath=${PopupWindow_BigItem_Name_English_TextBox}    ${Test_Item_Name_English}
    Input Text    xpath=${PopupWindow_BigItem_Name_Simple_Chinese_TextBox}    ${Test_Item_Name_Simply_Chinese}
    Input Text    xpath=${PopupWindow_BigItem_Name_Tranditional_Chinese_TextBox}    ${Test_Item_Name_Tranditional_Chinese}
    Click Element    xpath=${PopupWindow_BigItem_Insert_Button}    #點擊 新增按鈕
    #驗正輸入資料是否存在DB
    Sleep    2
    ${Query_Big_Item}    Set Variable    select * from Basic_CheckGroup where group_code='${Test_ItemCode}' and group_name_en='${Test_Item_Name_English}' and group_name_zh_cn='${Test_Item_Name_Simply_Chinese}' and group_name_zh_tw='${Test_Item_Name_Tranditional_Chinese}' and active_flag=1
    Check If Exists In Database    ${Query_Big_Item}
    #檢查網頁資料是否正確
    ${Get_Big_Item_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div
    ${Get_Item_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div
    Should Be Equal    ${Test_ItemCode}    ${Get_Big_Item_Code}
    Should Be Equal    ${Test_Item_Name_Tranditional_Chinese}    ${Get_Item_Name}

Check Big Item Record IS NOT IN DB
    Log    驗正輸入資料不應該再DB
    ${Query_Big_Item}    Set Variable    select * from Basic_CheckGroup where group_code='${Test_ItemCode}' and group_name_en='${Test_Item_Name_English}' and group_name_zh_cn='${Test_Item_Name_Simply_Chinese}' and group_name_zh_tw='${Test_Item_Name_Tranditional_Chinese}' and active_flag=1
    Check If Not Exists In Database    ${Query_Big_Item}

Remove Test Data
    Connect Database
    ${Delete_Detail_Item}    Set Variable    delete from Basic_CheckItem where ID=( select id from Basic_CheckItem where group_id=(select id from Basic_CheckGroup where group_code='${Test_ItemCode}')) \
    ${Delete_Big_Item}    Set Variable    delete from Basic_CheckGroup where group_code='${Test_ItemCode}'
    Execute Sql String    ${Delete_Detail_Item}
    Execute Sql String    ${Delete_Big_Item}
