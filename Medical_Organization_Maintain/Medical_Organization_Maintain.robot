*** Setting ***
Documentation     主要測試醫療機構維護
...               1. Check Page 主要測試裡面所有的字型和文字的位置，另外也檢查跳窗的文字和相關下拉式選單是否存在
...               2. Refill Form 主要是在新增資料時，測試重填按鈕是否生效
...               3. Insert Two Records 主要是新增兩筆資料，最後驗證是從DB檢查
...               4. Query Organization Code and Name 主要先新增兩筆資料，然後再做機構代碼和名稱的查詢
...               5. Delete Record- 主要是先新增兩筆資料，再透過UI去刪除資料，最後在從下指令查詢資料是否還在DB
...               6. Sort By Organization Name - 主要驗證機構名稱和資料庫是否比數一樣
...               7. Update Form - 主要是測試資料能否更新
Suite Teardown    Disconnect From Database
Test Setup        Click Medical Organization Maintain Button
Test Teardown
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          DB_Query.robot

*** Variables ***
${Basic_File_MainTain_Tab}    button-1019-btnIconEl    #左邊Menu的基本檔維護
${Medical_Organization_Maintain_Button_ID}    menuitem-1015-textEl    #基本檔維護中的醫療機構維護Menu的選項
#Begin 醫療機構維護 項目
${Organization_Maintain_Tab_XPATH}    html/body/div[5]/div[1]/div[1]/div[2]/div/div/div/a/span[1]    # 醫療機構維護 Tab
${Organization_Query_Div_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[1]/div/div/div/div[1]/span    # 醫療機構查詢 Div
${Organization_Code_Lable_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td[1]/label    # 機構代碼 label
${Organization_Code_Dropdown_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/input    # 機構代碼 Dropdown
${Organization_CodeName_Lable_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/label    # 機構名稱 label
${Organization_CodeName_Dropdown_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[2]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/input    #機構名稱 Dropdown
${Query_Button_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[1]/div/a/span[1]    #查詢按鈕
${Refill_Button_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[2]/div/a/span[1]    #重填按鈕
#End 醫療機構維護 項目
#Begin 醫療機構
${Medical_Organization_Div_XPATH}    html/body/div[5]/div[2]/div/div/div[3]/div[1]/div/div/div/div/span    #醫療機構 Div
${Insert_Button_XPATH}    html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[1]/div/a/span[1]    #新增按鈕
${Delete_Button_XPATH}    html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[3]/div/a/span[1]    #刪除按鈕
${System_Code_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[4]/div/span    #系統內碼
${Organization_Code_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[5]/div/span    #機構代碼
${Organization_Name_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[6]/div/span    #機構名稱
${Organization_Address_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[7]/div/span    #機構地址
${Contact_Phone_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[8]/div/span    #連絡電話
${Contact_Email_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[9]/div/span    #聯絡信箱
${Support_Check_Health_Column}    html/body/div[5]/div[2]/div/div/div[3]/div[3]/div/div/div[10]/div/span    #提供健檢服務
${Pagination_Bar}    html/body/div[5]/div[2]/div/div/div[3]/div[5]/div    #分頁檢查
#End 醫療機構
#Begin 醫療機構維護 跳窗
${PopupWindow_Support_Check_Healty_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[1]/tbody/tr/td[1]/label    #跳窗 提供健檢
${PopupWindow_System_Code_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[2]/tbody/tr/td[1]/label    #跳窗 系統內碼
${PopupWindow_Organization_Code_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[3]/tbody/tr/td[1]/label    #跳窗 機構代碼
${PopupWindow_Organization_Name_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[4]/tbody/tr/td[1]/label    #跳窗 機構名稱
${PopupWindow_Organization_Address_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[5]/tbody/tr/td[1]/label    #跳窗 機構地址
${PopupWindow_Contact_Phone_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[6]/tbody/tr/td[1]/label    #跳窗 連絡電話
${PopupWindow_Contact_Email_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[7]/tbody/tr/td[1]/label    #跳窗 聯絡信箱
${PopupWindow_Kanban_XPATH}    html/body/div[11]/div[2]/div/div/span/div/table[8]/tbody/tr/td[1]/label    #跳窗 公告訊息
${PopupWindow_Support_Check_Healty_Checkobx}    html/body/div[11]/div[2]/div/div/span/div/table[1]/tbody/tr/td[2]/input    #跳窗 提供健檢 Checkbox
${PopupWindow_System_Code_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[2]/tbody/tr/td[2]/input    #跳窗 系統內碼 TextBox
${PopupWindow_Organization_Code_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[3]/tbody/tr/td[2]/input    #跳窗 機構代碼 TextBox
${PopupWindow_Organization_Name_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[4]/tbody/tr/td[2]/input    #跳窗 機構名稱 TextBox
${PopupWindow_Organization_Address_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[5]/tbody/tr/td[2]/textarea    #跳窗 機構地址 TextBox
${PopupWindow_Contact_Phone_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[6]/tbody/tr/td[2]/textarea    #跳窗 連絡電話 TextBox
${PopupWindow_Contact_Email_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[7]/tbody/tr/td[2]/textarea    #跳窗 聯絡信箱 TextBox
${PopupWindow_Kanban_TextBox}    html/body/div[11]/div[2]/div/div/span/div/table[8]/tbody/tr/td[2]/textarea    #跳窗 公告訊息 TextBox
${PopupWindow_Refill_Button}    html/body/div[11]/div[3]/div/div/div[3]/div/a/span[1]    #跳窗 重填 Button
${PopupWindow_Insert_Button}    html/body/div[11]/div[3]/div/div/div[1]/div/a/span[1]    #跳窗 新增 Button
#End 醫療機構維護 跳窗
${PagenationToolBar}    pagingtoolbar-1057-innerCt    # Pagenation Tool Bar
${TestData_System_Code_1}    _hlthealthy_1    # 測試資料 系統內碼
${TestData_Organization_Code_1}    012345678    # 測試資料 機構代碼
${TestData_Organization_Name_1}    (TestData_1)    # 測試資料 機構名稱    (排序)
${TestData_Organization_Address_1}    address.    # 測試資料 機構地址
${TestData_Contact_Phone_1}    7533967    # 測試資料 連絡電話
${TestData_Contact_Email_1}    test@yamail.com    # 測試資料    聯絡信箱
${TestData_Kanban_1}    123    # 測試資料    公告訊息
${TestData_System_Code_2}    _hlthealthy_2    # 測試資料 系統內碼
${TestData_Organization_Code_2}    876543210    # 測試資料 機構代碼
${TestData_Organization_Name_2}    (TestData_2)    # 測試資料 機構名稱    (排序)
${TestData_Organization_Address_2}    address    # 測試資料 機構地址
${TestData_Contact_Phone_2}    5937081    # 測試資料 連絡電話
${TestData_Contact_Email_2}    test@yamail.com    # 測試資料    聯絡信箱
${TestData_Kanban_2}    456    # 測試資料    公告訊息
${TestData_System_Code_3}    _hlthealthy_3    # 測試資料 系統內碼
${TestData_Organization_Code_3}    876543211    # 測試資料 機構代碼
${TestData_Organization_Name_3}    (TestData_3)    # 測試資料 機構名稱    (排序)
${TestData_Organization_Address_3}    address    # 測試資料 機構地址
${TestData_Contact_Phone_3}    5937081    # 測試資料 連絡電話
${TestData_Contact_Email_3}    test@yamail.com    # 測試資料    聯絡信箱
${TestData_Kanban_3}    777    # 測試資料    公告訊息

*** Test Cases ***
Check Page
    [Documentation]    Test case Description :
    ...    主要測試醫療機構整個頁面的文字對齊和文字是否按造規格顯示
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者在醫療機構裡面點選其中一筆資料
    ...
    ...    Verify :
    ...    機構整個頁面和跳窗的文字對齊和文字是否按造規格顯示
    #準備驗證參數
    ${Verify_Tab}    Convert To String    醫療機構維護
    ${Verify_Organization_Code_Div}    Convert To String    醫療機構查詢
    ${Verify_Organization_Code}    Convert To String    機構代碼:
    ${Verify_Organization_Name}    Convert To String    機構名稱:
    ${Verify_Query_Button_Name}    Convert To String    查詢
    ${Verify_Refill_Button_Name}    Convert To String    重填
    ${Verify_Medical_Organization_Div}    Convert To String    醫療機構
    ${Verify_Insert_Button}    Convert To String    新增
    ${Verify_Delete_Button}    Convert To String    刪除
    ${Verify_Support_Check_Healty_Column}    Convert To String    提供健檢服務:
    ${Verify_System_Code_Column}    Convert To String    系統內碼
    ${Verify_Organization_Code_Column}    Convert To String    機構代碼
    ${Verify_Organization_Name_Column}    Convert To String    機構名稱
    ${Verify_Organization_Address_Column}    Convert To String    機構地址
    ${Verify_Contact_Phone_Column}    Convert To String    聯絡電話
    ${Verify_Contact_Email_Column}    Convert To String    聯絡信箱
    ${Verify_Support_Checkup_Service_Column}    Convert To String    提供健檢服務
    ${Verify_Kanban_Column}    Convert To String    公告訊息:
    ${Verify_Align_Center}    Convert To String    text-align: center;
    ${Verify_Align_Left}    Convert To String    text-align: left;
    ${Verify_System_Code_PuponWindow}    Convert To String    *系統內碼:    #驗證跳窗
    ${Verify_Organization_Code_PuponWindow}    Convert To String    機構代碼:    #驗證跳窗
    ${Verify_Organization_Name_PuponWindow}    Convert To String    *機構名稱:    #驗證跳窗
    ${Verify_Organization_Address_PuponWindow}    Convert To String    機構地址:
    ${Verify_Contact_Phone_PuponWindow}    Convert To String    聯絡電話:
    ${Verify_Contact_Email_PuponWindow}    Convert To String    聯絡信箱:
    ${Verify_Kanban_PuponWindow}    Convert To String    公告訊息:
    #Verify 醫療機構維護裡面的Div
    Wait Until Element Is Visible    xpath=${Organization_Maintain_Tab_XPATH}    ${G_Wait_For_Element_Timeout}
    ${Get_Tab}    Get Text    xpath=${Organization_Maintain_Tab_XPATH}    #Get Tab
    ${Get_Organization_Code_Div}    Get Text    xpath=${Organization_Query_Div_XPATH}    #醫療機構查詢 DIV
    ${Get_Organization_Code}    Get Text    xpath=${Organization_Code_Lable_XPATH}
    ${Get_Organization_Name}    Get Text    xpath=${Organization_CodeName_Lable_XPATH}
    ${Get_Query_Button_Name}    Get Text    xpath=${Query_Button_XPATH}    # 查詢 按鈕
    ${Get_Refill_Button_Name}    Get Text    xpath=${Refill_Button_XPATH}    # 重填 按鈕
    Element Should Be Visible    xpath=${Organization_Code_Dropdown_XPATH}
    Element Should Be Visible    xpath=${Organization_CodeName_Dropdown_XPATH}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    Should Be Equal    ${Verify_Organization_Code_Div}    ${Get_Organization_Code_Div}
    Should Be Equal    ${Verify_Organization_Code}    ${Get_Organization_Code}
    Should Be Equal    ${Verify_Organization_Name}    ${Get_Organization_Name}
    Should Be Equal    ${Verify_Query_Button_Name}    ${Get_Query_Button_Name}
    Should Be Equal    ${Verify_Refill_Button_Name}    ${Get_Refill_Button_Name}
    #Verify 醫療機構裡面Div
    ${Get_Medical_Organization_Div}    Get Text    xpath=${Medical_Organization_Div_XPATH}
    ${Get_Insert_Button}    Get Text    xpath=${Insert_Button_XPATH}
    ${Get_Delete_Button}    Get Text    xpath=${Delete_Button_XPATH}
    ${Get_System_Code_Column}    Get Text    xpath=${System_Code_Column}
    ${Get_Organization_Code_Column}    Get Text    xpath=${Organization_Code_Column}
    ${Get_Organization_Name_Column}    Get Text    xpath=${Organization_Name_Column}
    ${Get_Organization_Address_Column}    Get Text    xpath=${Organization_Address_Column}
    ${Get_Contact_Phone_Column}    Get Text    xpath=${Contact_Phone_Column}
    ${Get_Contact_Email_Column}    Get Text    xpath=${Contact_Email_Column}
    ${Get_Check_Health_Column}    Get Text    xpath=${Support_Check_Health_Column}
    Should Be Equal    ${Verify_Medical_Organization_Div}    ${Get_Medical_Organization_Div}
    Should Be Equal    ${Verify_Insert_Button}    ${Get_Insert_Button}
    Should Be Equal    ${Verify_Delete_Button}    ${Get_Delete_Button}
    Should Be Equal    ${Verify_System_Code_Column}    ${Get_System_Code_Column}
    Should Be Equal    ${Verify_Organization_Code_Column}    ${Get_Organization_Code_Column}
    Should Be Equal    ${Verify_Organization_Name_Column}    ${Get_Organization_Name_Column}
    Should Be Equal    ${Verify_Organization_Address_Column}    ${Get_Organization_Address_Column}
    Should Be Equal    ${Verify_Contact_Phone_Column}    ${Get_Contact_Phone_Column}
    Should Be Equal    ${Verify_Contact_Email_Column}    ${Get_Contact_Email_Column}
    Should Be Equal    ${Verify_Support_Checkup_Service_Column}    ${Get_Check_Health_Column}
    Element Should Be Visible    xpath=${Pagination_Bar}
    #Verify 醫療機構裡面的Gridview文字對齊
    Wait Until Element Is Visible    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div    #等待第一行出現
    ${Get_System_Code_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[4]/div@style
    ${Get_Organization_Code_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div@style
    ${Get_Organization_Name_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[6]/div@style
    ${Get_Organization_Address_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[7]/div@style
    ${Get_Contact_Phone_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[8]/div@style
    ${Get_Contact_Email_Align}=    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[9]/div@style
    ${Get_Check_Health_Align}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[10]/div@style
    Should Be Equal    ${Verify_Align_Center}    ${Get_System_Code_Align}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Organization_Code_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Organization_Name_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Organization_Address_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Contact_Phone_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Contact_Email_Align}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Check_Health_Align}
    #Verify 醫療機構維護跳窗
    Click Element    xpath=${Insert_Button_XPATH}
    Wait Until Element Is Visible    xpath=${PopupWindow_System_Code_XPATH}    ${G_Wait_For_Element_Timeout}
    ${Get_Support_Check_Healty_Column}    Get Text    xpath=${PopupWindow_Support_Check_Healty_XPATH}
    ${Get_System_Code_Column}    Get Text    xpath=${PopupWindow_System_Code_XPATH}
    ${Get_Organization_Code_Column}    Get Text    xpath=${PopupWindow_Organization_Code_XPATH}
    ${Get_Organization_Name_Column}    Get Text    xpath=${PopupWindow_Organization_Name_XPATH}
    ${Get_Organization_Address_Column}    Get Text    xpath=${PopupWindow_Organization_Address_XPATH}
    ${Get_Contact_Phone_Column}    Get Text    xpath=${PopupWindow_Contact_Phone_XPATH}
    ${Get_Contact_Email_Column}    Get Text    xpath=${PopupWindow_Contact_Email_XPATH}
    ${Get_Kanbann_Column}    Get Text    xpath=${PopupWindow_Kanban_XPATH}
    Should Be Equal    ${Verify_Support_Check_Healty_Column}    ${Get_Support_Check_Healty_Column}
    Should Be Equal    ${Verify_System_Code_PuponWindow}    ${Get_System_Code_Column}
    Should Be Equal    ${Verify_Organization_Code_PuponWindow}    ${Get_Organization_Code_Column}
    Should Be Equal    ${Verify_Organization_Name_PuponWindow}    ${Get_Organization_Name_Column}
    Should Be Equal    ${Verify_Organization_Address_PuponWindow}    ${Get_Organization_Address_Column}
    Should Be Equal    ${Verify_Contact_Phone_PuponWindow}    ${Get_Contact_Phone_Column}
    Should Be Equal    ${Verify_Contact_Email_PuponWindow}    ${Get_Contact_Email_Column}
    Should Be Equal    ${Verify_Kanban_PuponWindow}    ${Get_Kanbann_Column}
    [Teardown]    Close Browser

Refill Form
    [Documentation]    Test case Description :
    ...    主要測試醫療機構整在新增一筆資料時如果按下重填是否能清空
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下重填按鈕
    ...
    ...    Verify :
    ...    醫療機構維護跳窗必須全部清空
    Wait Until Element Is Visible    xpath=${Organization_Maintain_Tab_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Insert Button
    Input Text    xpath=${PopupWindow_System_Code_TextBox}    ${TestData_System_Code_1}
    Input Text    xpath=${PopupWindow_Organization_Code_TextBox}    ${TestData_Organization_Code_1}
    Input Text    xpath=${PopupWindow_Organization_Name_TextBox}    ${TestData_Organization_Name_1}
    Input Text    xpath=${PopupWindow_Organization_Address_TextBox}    ${TestData_Organization_Address_1}
    Input Text    xpath=${PopupWindow_Contact_Phone_TextBox}    ${TestData_Contact_Phone_1}
    Input Text    xpath=${PopupWindow_Contact_Email_TextBox}    ${TestData_Contact_Email_1}
    Input Text    xpath=${PopupWindow_Kanban_TextBox}    ${TestData_Kanban_1}
    Click Element    xpath=${PopupWindow_Refill_Button}
    Sleep    1
    #Verify 跳窗重新填的資料是否清空
    ${Get_System_Code_TextBox}    Get Text    xpath=${PopupWindow_System_Code_TextBox}
    ${Get_Organization_Code_TextBox}    Get Text    xpath=${PopupWindow_Organization_Code_TextBox}
    ${Get_Organization_Name_TextBox}    Get Text    xpath=${PopupWindow_Organization_Name_TextBox}
    ${Get_Organization_Address_TextBox}    Get Text    xpath=${PopupWindow_Organization_Address_TextBox}
    ${Get_Contact_Phone_TextBox}    Get Text    xpath=${PopupWindow_Contact_Phone_TextBox}
    ${Get_Contact_Email_TextBox}    Get Text    xpath=${PopupWindow_Contact_Email_TextBox}
    ${Get_Kanban_TextBox}    Get Text    xpath=${PopupWindow_Kanban_TextBox}
    Should Be Empty    ${Get_System_Code_TextBox}
    Should Be Empty    ${Get_Organization_Code_TextBox}
    Should Be Empty    ${Get_Organization_Name_TextBox}
    Should Be Empty    ${Get_Organization_Address_TextBox}
    Should Be Empty    ${Get_Contact_Phone_TextBox}
    Should Be Empty    ${Get_Contact_Email_TextBox}
    Should Be Empty    ${Get_Kanban_TextBox}
    [Teardown]    Close Browser

Insert Two Records
    [Documentation]    Test case Description :
    ...    主要測試醫療機構新增兩筆資料
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下新增按鈕
    ...    6. 重複步驟 3 ~ 6
    ...
    ...    Verify :
    ...    新增的資料是否已存在在資料庫
    Connect Database
    Add Two Record In DB
    ${queryBasic_Hospital_TestData_1}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_1}' and addr='${TestData_Organization_Address_1}' and hospital_code='${TestData_System_Code_1}' and phone='${TestData_Contact_Phone_1}' and email='${TestData_Contact_Email_1}' and nhi_code='${TestData_Organization_Code_1}' and active_flag=1 and announcement='${TestData_Kanban_1}' and is_chk_hosp= 'Y'
    ${queryBasic_Hospital_TestData_2}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_2}' and addr='${TestData_Organization_Address_2}' and hospital_code='${TestData_System_Code_2}' and phone='${TestData_Contact_Phone_2}' and email='${TestData_Contact_Email_2}' and nhi_code='${TestData_Organization_Code_2}' and active_flag=1 and announcement='${TestData_Kanban_2}' and is_chk_hosp= 'N'
    #Verify 資料庫是否有剛新增的兩筆資料
    Check If Exists In DataBase    ${queryBasic_Hospital_TestData_1}
    Check If Exists In DataBase    ${queryBasic_Hospital_TestData_2}
    [Teardown]    Close Browser

Query Organization Code and Name
    [Documentation]    Test case Description :
    ...    主要測試醫療機構新增兩筆資料
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下新增按鈕
    ...    6. 重複步驟 3 ~ 6
    ...    7. 查詢機構代碼用測試資料
    ...    8. 查詢機構代碼和機構名稱用測試資料
    ...
    ...    Verify :
    ...    查詢時是否能正常顯示
    Connect Database
    Add Two Record In DB
    ${Organization_Code_XPATH}    Convert To String    html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div
    # Verify 查詢機構代碼
    Input Text    xpath=${Organization_Code_Dropdown_XPATH}    ${TestData_Organization_Code_1}
    Click Element    xpath=${Query_Button_XPATH}
    Sleep    5
    ${Get_Code}    Get Text    xpath=${Organization_Code_XPATH}
    Should Be Equal    ${TestData_Organization_Code_1}    ${Get_Code}
    Input Text    xpath=${Organization_CodeName_Dropdown_XPATH}    ${TestData_Organization_Name_1}
    Click Element    xpath=${Query_Button_XPATH}
    Sleep    2
    ${Get_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[6]/div
    Should Be Equal    ${TestData_Organization_Name_1}    ${Get_Name}
    # Verify 查詢機構代碼和名稱
    Input Text    xpath=${Organization_Code_Dropdown_XPATH}    ${EMPTY}
    Click Element    xpath=${Query_Button_XPATH}
    Sleep    2
    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[6]/div
    Should Be Equal    ${TestData_Organization_Name_1}    ${Get_Name}
    [Teardown]    Close Browser

Delete Record
    [Documentation]    Test case Description :
    ...    主要測試醫療機構新增兩筆資料
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下新增按鈕
    ...    6. 重複步驟 3 ~ 6
    ...    7. 回到醫療機構畫面，點選測試資料第一和第二筆
    ...    8. 按下刪除
    ...
    ...    Verify :
    ...    1. 刪除時是否有顯是刪除兩筆資料資訊
    ...    2. 檢查刪除的資料的active_flag是否為0
    Log    Verify 測試刪除
    Connect Database
    Add Two Record In DB
    ${Verify_Message}    Convert To String    是否確定刪除 2 筆資料 ?
    Sleep    1
    Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[2]/div/img
    Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[2]/td[2]/div/img
    Click Element    xpath=${Delete_Button_XPATH}
    Wait Until Element Is Visible    id=messagebox-1001-displayfield-inputEl    ${G_Wait_For_Element_Timeout}
    ${Get_Message}    Get Text    id=messagebox-1001-displayfield-inputEl
    Should Be Equal    ${Verify_Message}    ${Get_Message}    #驗證刪除訊息
    Click Element    button-1006-btnIconEl
    Sleep    2    #等待資料刪除
    ${queryBasic_Hospital_TestData_1}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_1}' and addr='${TestData_Organization_Address_1}' and hospital_code='${TestData_System_Code_1}' and phone='${TestData_Contact_Phone_1}' and email='${TestData_Contact_Email_1}' and nhi_code='${TestData_Organization_Code_1}' and active_flag=1
    ${queryBasic_Hospital_TestData_2}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_2}' and addr='${TestData_Organization_Address_2}' and hospital_code='${TestData_System_Code_2}' and phone='${TestData_Contact_Phone_2}' and email='${TestData_Contact_Email_2}' and nhi_code='${TestData_Organization_Code_2}' and active_flag=1
    Log    Verify 資料庫是否有剛新增的兩筆資料
    Check If Not Exists In Database    ${queryBasic_Hospital_TestData_1}
    Check If Not Exists In Database    ${queryBasic_Hospital_TestData_2}
    [Teardown]    Close Browser

Sort By Organization Name
    [Documentation]    Test case Description :
    ...    主要測試醫療機構新增兩筆資料
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下新增按鈕
    ...    6. 重複步驟 3 ~ 6
    ...
    ...
    ...    Verify :
    ...    驗證機溝名稱的下拉選單筆數是否和DB查詢出來的筆數一致
    #Verify 組織名稱排序
    Connect Database
    Add Two Record In DB
    Sleep    1
    ${Get_Organization_Count}    Get Matching Xpath Count    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr    #取得機構代碼的Dropdlown數量
    ${Organization_Name_List}    Create List
    : FOR    ${Index}    IN RANGE    1    ${Get_Organization_Count}+1
    \    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[${Index}]/td[6]/div    #把構代碼的Dropdlown一筆一筆放入到List
    \    Append To List    ${Organization_Name_List}    ${Get_Name}
    ${Query_Basic_hospital}    Set Variable    select Top ${Get_Organization_Count} hospital_name from Basic_Hospital where active_flag = 1 order by hospital_name
    ${Result}    Query    ${Query_Basic_hospital}
    #Verify 網頁資料和資料庫比較
    : FOR    ${Index}    IN RANGE    0    ${Get_Organization_Count}
    \    ${Verify_from_DB}    Convert To String    ${Result[${Index}][0]}
    \    ${Get_from_Web}    Convert To String    ${Organization_Name_List[${Index}]}
    \    Should Be Equal    ${Verify_from_DB}    ${Get_from_Web}
    [Teardown]    Close Browser

Update Form
    [Documentation]    Test case Description :
    ...    主要測試醫療機構新增兩筆資料
    ...    1. 使用者點擊左上角醫療機構維護
    ...    2. 使用者按下新增按鈕
    ...    3. 畫面上顯示醫療機構維護跳窗
    ...    4. 使用者在跳窗中的欄位填寫所有資料
    ...    5. 使用者按下新增按鈕
    ...    6. 重複步驟 3 ~ 6
    ...    7. 回到醫療機構畫面，點選測試資料第二筆
    ...    8. 顯示出跳窗
    ...    9. 全部資料全部更新
    ...    10. 按下確定按鈕
    ...
    ...    Verify :
    ...    更新後的資料是否能正確存在DB中
    #Verify 驗證醫療機構維護跳窗是否能更新
    Connect Database
    Add Two Record In DB
    Double Click Element    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[2]/td[4]/div    #點擊第一筆資料
    Sleep    1
    Click Element    xpath=html/body/div[12]/div[2]/div/div/span/div/table[1]/tbody/tr/td[2]/input    #提供健檢服務
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[3]/tbody/tr/td[2]/input    ${TestData_System_Code_3}    #系統內碼
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[4]/tbody/tr/td[2]/input    ${TestData_Organization_Code_3}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[5]/tbody/tr/td[2]/input    ${TestData_Organization_Name_3}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[6]/tbody/tr/td[2]/textarea    ${TestData_Organization_Address_3}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[7]/tbody/tr/td[2]/textarea    ${TestData_Contact_Phone_3}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[8]/tbody/tr/td[2]/textarea    ${TestData_Contact_Email_3}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[9]/tbody/tr/td[2]/textarea    ${TestData_Kanban_3}
    Click Element    xpath=html/body/div[12]/div[3]/div/div/div[2]/div/a/span[1]    #修改按鈕
    Sleep    2    #讓資料寫入到DB
    ${queryBasic_Hospital_TestData_3}    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_3}' and addr='${TestData_Organization_Address_3}' and hospital_code='${TestData_System_Code_3}' and phone='${TestData_Contact_Phone_3}' and email='${TestData_Contact_Email_3}' and nhi_code='${TestData_Organization_Code_3}' and active_flag=1 and announcement='${TestData_Kanban_3}' and is_chk_hosp= 'Y'
    Check If Exists In DataBase    ${queryBasic_Hospital_TestData_3}
    [Teardown]    Close Browser

Query Not Found
    [Documentation]    Test case Description :
    ...    主要測試醫療機構在查詢機構代碼和機構名稱必須都要顯示 無符合條件紀錄
    ...    1. 機構代碼欄位中輸入測試資料
    ...    2. 機構名稱欄位中輸入測試資料
    ...
    ...
    ...    Verify :
    ...    1. 在查詢機構代碼應該要顯示無符合條件紀錄
    ...    2. 在查詢機構名稱應該要顯示無符合條件紀錄
    ${Verify_Data_Not_Found}    Convert To String    無符合條件紀錄
    ${Test_Data}    Convert To String    _這是測試資料
    ${Data_Not_Fount_XPATH}    Convert To String    html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/div
    #驗證機構代碼輸入無效value，查詢後應該無資料
    INPUT TEXT    xpath=${Organization_Code_Dropdown_XPATH}    ${Test_Data}
    Click Element    xpath=${Query_Button_XPATH}
    Wait Until Element Is Visible    xpath=${Data_Not_Fount_XPATH}    ${G_Wait_For_Element_Timeout}
    ${Get_Data_Not_Found}    Get Text    xpath=${Data_Not_Fount_XPATH}
    Should Be Equal    ${Verify_Data_Not_Found}    ${Get_Data_Not_Found}
    Click Element    xpath=${Refill_Button_XPATH}    #按下重填
    #驗證機構名稱輸入無效value，查詢後應該無資料
    INPUT TEXT    xpath=${Organization_CodeName_Dropdown_XPATH}    ${Test_Data}
    Click Element    xpath=${Query_Button_XPATH}
    Wait Until Element Is Visible    xpath=${Data_Not_Fount_XPATH}    ${G_Wait_For_Element_Timeout}
    ${Get_Data_Not_Found}    Get Text    xpath=${Data_Not_Fount_XPATH}
    Should Be Equal    ${Verify_Data_Not_Found}    ${Get_Data_Not_Found}
    [Teardown]    Close Browser

*** Keywords ***
Click Medical Organization Maintain Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Basic_File_MainTain_Tab}    ${G_Wait_For_Element_Timeout}    #Menu的基本檔維護
    Mouse Over    ${Basic_File_MainTain_Tab}
    Click Element    ${Basic_File_MainTain_Tab}    #點擊 基本檔維護
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Medical_Organization_Maintain_Button_ID}    #點擊 醫療機構維護

Click Insert Button
    Click Element    xpath=${Insert_Button_XPATH}
    Wait Until Element Is Visible    xpath=${PopupWindow_System_Code_TextBox}    ${G_Wait_For_Element_Timeout}

Add Two Record In DB
    #先清空測試資料
    Execute Sql String    ${Delete_Basic_Hospital_TestData}
    #加入兩筆測試資料
    Wait Until Element Is Visible    xpath=${Organization_Maintain_Tab_XPATH}    ${G_Wait_For_Element_Timeout}
    Click Insert Button
    Click Element    xpath=${PopupWindow_Support_Check_Healty_Checkobx}
    Input Text    xpath=${PopupWindow_System_Code_TextBox}    ${TestData_System_Code_1}
    Input Text    xpath=${PopupWindow_Organization_Code_TextBox}    ${TestData_Organization_Code_1}
    Input Text    xpath=${PopupWindow_Organization_Name_TextBox}    ${TestData_Organization_Name_1}
    Input Text    xpath=${PopupWindow_Organization_Address_TextBox}    ${TestData_Organization_Address_1}
    Input Text    xpath=${PopupWindow_Contact_Phone_TextBox}    ${TestData_Contact_Phone_1}
    Input Text    xpath=${PopupWindow_Contact_Email_TextBox}    ${TestData_Contact_Email_1}
    Input Text    xpath=${PopupWindow_Kanban_TextBox}    ${TestData_Kanban_1}
    Click Element    xpath=${PopupWindow_Insert_Button}
    Sleep    2
    Click Element    xpath=${Insert_Button_XPATH}
    Wait Until Element Is Visible    xpath=html/body/div[12]/div[2]/div/div/span/div/table[2]/tbody/tr/td[2]/input
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[2]/tbody/tr/td[2]/input    ${TestData_System_Code_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[3]/tbody/tr/td[2]/input    ${TestData_Organization_Code_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[4]/tbody/tr/td[2]/input    ${TestData_Organization_Name_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[5]/tbody/tr/td[2]/textarea    ${TestData_Organization_Address_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[6]/tbody/tr/td[2]/textarea    ${TestData_Contact_Phone_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[7]/tbody/tr/td[2]/textarea    ${TestData_Contact_Email_2}
    Input Text    xpath=html/body/div[12]/div[2]/div/div/span/div/table[8]/tbody/tr/td[2]/textarea    ${TestData_Kanban_2}
    Click Element    xpath=html/body/div[12]/div[3]/div/div/div[1]/div/a/span[1]    #新增 元素
    Sleep    1
