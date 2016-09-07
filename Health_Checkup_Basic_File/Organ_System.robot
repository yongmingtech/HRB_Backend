*** Setting ***
Documentation     主要測試健檢基本檔的基本項目
...               1. Check Page 主要測試裡面所有的字型和文字的位置，另外也檢查跳窗的文字和相關物件是否存在
Suite Setup
Suite Teardown
Test Setup        Click Organ System
Test Teardown     Close Web Browser
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Health_Checkup_Basic_File_ID}    button-1022-btnIconEl
${Organ_System_Item_ID}    menuitem-1021-textEl
${Organ_System_Insert_Button}    button-1075-btnInnerEl    #器官系統 新增 按鈕
${PopupWindow_Organ_System_Title}    maintainFormWindow-1105_header_hd-textEl    #跳窗-器官系統維護-Title
${PopupWindow_Organ_System_Code_Label}    textfield-1107-labelEl    #跳窗-器官代碼:-Label
${PopupWindow_Organ_System_Name_Label}    textfield-1108-labelEl    #跳窗-器官名稱:-Label
${PopupWindow_Organ_System_Sex_Label}    genderComboBox-1109-labelEl    #跳窗-限定性別:-Label
${PopupWindow_Organ_System_Display_Label}    trueFalseRadioGroup-1110-labelEl    #跳窗-是否顯示:-Label
${PopupWindow_Organ_Code_TextBox}    textfield-1107-inputEl    #跳窗-器官系統 新增 按鈕
${PopupWindow_Organ_Name_TextBox}    textfield-1108-inputEl    #跳窗-器官系統 新增 按鈕
${PopupWindow_Organ_Limit_Sex_Dropdown}    genderComboBox-1109-inputEl    #跳窗-器官系統 新增 按鈕
${PopupWindow_Organ_Display_Y_RadioButton}    radiofield-1111-inputEl    #跳窗-是否顯示-Y-Radio Button
${PopupWindow_Organ_Display_N_RadioButton}    radiofield-1112-inputEl    #跳窗-是否顯示-N-Radio Button
${PopupWindow_Organ_System_DetailCode_Column}    gridcolumn-1118-textEl
${PopupWindow_Organ_System_DetailName_Column}    gridcolumn-1119-textEl
${PopupWindow_Organ_System_Refill_Button}    button-1124-btnInnerEl    #跳窗-重填-按鈕
${PopupWindow_Organ_System_Insert_Button}    button-1122-btnInnerEl    #跳窗-新增-按鈕
${TestData_Organ_Code_TextBox}    _A123456
${TestData_Organ_Name_TextBox}    _測試
${Tab}            tab-1086-btnInnerEl    #Tab
${Organ_System_DIV}    basicOrganGrid-1050_header_hd    #器官系統 Column
${Organ_System_Code_Column}    gridcolumn-1069-textEl    #器官代碼 Column
${Organ_System_Name_Column}    gridcolumn-1070-textEl    #器官名稱 Column
${Organ_System_Sexy_Column}    gridcolumn-1071-textEl    #限定性別 Column
${Organ_System_IsDisplay_Column}    gridcolumn-1072-textEl    #是否顯示 Column
${Organ_System_Insert_Button}    button-1075-btnInnerEl    #新增按鈕
${Organ_System_Delete_Button}    button-1077-btnInnerEl    #刪除按鈕

*** Test Cases ***
Sort By Organ Code
    [Documentation]    Test case Description :
    ...    主要驗證器官系統的器官代碼是否有小到大排列
    ...
    ...    Verify :
    ...    器官代碼應該由小到大排列
    Connect Database
    ${Get_Organ_Code_Count}    Get Matching Xpath Count    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr
    ${Get_Organ_Code_List}    Create List
    : FOR    ${Index}    IN RANGE    1    ${Get_Organ_Code_Count}+1
    \    ${Get_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[${Index}]/td[4]/div
    \    Append To List    ${Get_Organ_Code_List}    ${Get_Name}
    ${Query_Basic_Organ}    Set Variable    select Top ${Get_Organ_Code_Count} organ_code from Basic_Organ \ where active_flag=1 order by organ_code
    ${Result}    Query    ${Query_Basic_Organ}
    : FOR    ${Index}    IN RANGE    0    ${Get_Organ_Code_Count}
    \    ${Verify_From_DB}    Convert To String    ${Result[${Index}][0]}
    \    ${Get_From_Web}    Convert To String    ${Get_Organ_Code_List[${Index}]}
    \    Should Be Equal    ${Verify_From_DB}    ${Get_From_Web}
    [Teardown]    Close Browser

Refill Form For Big Organ System
    [Documentation]    Test case Description :
    ...    主要驗證器官系統的新增器官維護，填完資料後，按下重填是否會清空
    ...
    ...    Verify :
    ...    資料要全部清空
    ...
    ...
    ...    Not verify yet
    ...    由於程式碼是使用套件，產生出來的Div ID 不穩定，沒有測試細項的checkbox.
    Click Element    ${Organ_System_Insert_Button}
    Wait Until Element Is Visible    ${PopupWindow_Organ_System_Title}    ${G_Wait_For_Element_Timeout}
    Log    輸入資料
    Fill Test Data In Organ System
    Click Element    ${PopupWindow_Organ_System_Refill_Button}    #點擊重填按鈕
    Log    Verify 資料
    ${Verify_Sex}    Convert To String    不限
    ${Get_Organ_Code_TextBox}    Get Text    ${PopupWindow_Organ_Code_TextBox}
    ${Get_Organ_Name_TextBox}    Get Text    ${PopupWindow_Organ_Name_TextBox}
    ${Get_Sex_TextBox}    Get Value    ${PopupWindow_Organ_Limit_Sex_Dropdown}
    ${Get_Radio_Button}    Get Value    ${PopupWindow_Organ_Display_Y_RadioButton}
    Should Be Empty    ${Get_Organ_Code_TextBox}
    Should Be Empty    ${Get_Organ_Name_TextBox}
    Should Be Equal    ${Verify_Sex}    ${Get_Sex_TextBox}
    Should Be Empty    ${Get_Radio_Button}
    [Teardown]    Close Browser

Check Page
    [Documentation]    Test case Description :
    ...    主要驗證器官所有頁面的文字對齊和文字
    ...
    ...    Verify :
    ...    1. 文字和欄位的對齊模式
    ...    2. 驗證跳窗文字是否跟規格一樣
    Log    Declare the Variable
    ${Verify_Align_Center}    Convert To String    text-align: center;
    ${Verify_Align_Left}    Convert To String    text-align: left;
    Log    驗證Tab
    ${Verify_Tab}    Convert To String    器官系統
    ${Get_Tab_Name}    Get Text    ${Tab}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab_Name}
    Log    驗證器官系統 Div
    ${Get_Organ_System_DIV}    Get Text    ${Organ_System_DIV}
    Should Be Equal    ${Verify_Tab}    ${Get_Organ_System_DIV}
    ${Verify_Organ_System_Code}    Convert To String    器官代碼
    ${Verify_Organ_System_Name}    Convert To String    器官名稱
    ${Verify_Organ_System_Sexy}    Convert To String    限定性別
    ${Verify_Organ_System_IsDisplay}    Convert To String    是否顯示
    ${Get_Organ_System_Code}    Get Text    ${Organ_System_Code_Column}
    ${Get_Organ_System_Name}    Get Text    ${Organ_System_Name_Column}
    ${Get_Organ_System_Sexy}    Get Text    ${Organ_System_Sexy_Column}
    ${Get_Organ_System_IsDisplay}    Get Text    ${Organ_System_IsDisplay_Column}
    Should Be Equal    ${Verify_Organ_System_Code}    ${Get_Organ_System_Code}
    Should Be Equal    ${Verify_Organ_System_Name}    ${Get_Organ_System_Name}
    Should Be Equal    ${Verify_Organ_System_Sexy}    ${Get_Organ_System_Sexy}
    Should Be Equal    ${Verify_Organ_System_IsDisplay}    ${Get_Organ_System_IsDisplay}
    ${Get_Organ_System_Code_Align}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[4]/div@style
    ${Get_Organ_System_Name_Align}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[5]/div@style
    ${Get_Organ_System_Sexy_Align}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[6]/div@style
    ${Get_Organ_System_IsDisplay_Align}    Get Element Attribute    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[7]/div@style
    Should Be Equal    ${Verify_Align_Center}    ${Get_Organ_System_Code_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Organ_System_Name_Align}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Organ_System_Sexy_Align}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Organ_System_IsDisplay_Align}
    Element Should Be Visible    ${Organ_System_Insert_Button}    # Verify Insert Button
    Element Should Be Visible    ${Organ_System_Delete_Button}    # Verify Delete Button
    Log    Verify 健檢細項 DIV    #Start Verify 健檢細項 DIV
    ${Verify_Health_Item_Tab}    Convert To String    健檢項目
    ${Get_Health_Item_Tab}    Get Text    id=basicCheckGroupGroupingFormatGrid-1079_header_hd-textEl
    Should Be Equal    ${Verify_Health_Item_Tab}    ${Get_Health_Item_Tab}
    ${Verify_Detail_Item_Code}    Convert To String    細項代碼
    ${Verify_Detail_Item_Name}    Convert To String    細項名稱
    ${Get_Detail_Item_Code}    Get Text    id=gridcolumn-1083-textEl
    ${Get_Detail_Item_Name}    Get Text    id=gridcolumn-1084-textEl
    Should Be Equal    ${Verify_Detail_Item_Code}    ${Get_Detail_Item_Code}
    Should Be Equal    ${Verify_Detail_Item_Name}    ${Get_Detail_Item_Name}    #End Verify 健檢細項 DIV
    Log    Verify 驗證跳窗    #Start Verify 驗證跳窗
    Click Element    ${Organ_System_Insert_Button}    # Click Insert Button
    Wait Until Element Is Visible    id=maintainFormWindow-1105_header_hd-textEl    10
    ${Verify_Organ_System_MainTain_Tab}    Convert To String    器官系統維護
    ${Get_Organ_System_MainTain_Tab}    Get Text    id=maintainFormWindow-1105_header_hd-textEl
    Should Be Equal    ${Verify_Organ_System_MainTain_Tab}    ${Get_Organ_System_MainTain_Tab}
    ${Verify_Organ_System_Code}    Convert To String    *器官代碼:
    ${Verify_Organ_System_Name}    Convert To String    *器官名稱:
    ${Verify_Organ_System_Sexy}    Convert To String    限定性別
    ${Verify_Organ_System_IsDisplay}    Convert To String    *是否顯示:
    ${Get_Organ_System_Code}    Get Text    id=textfield-1107-labelEl
    ${Get_Organ_System_Name}    Get Text    id=textfield-1108-labelEl
    ${Verify_Organ_System_Sexy}    Get Text    id=genderComboBox-1109-labelEl
    ${Verify_Organ_System_IsDisplay}    Get Text    id=trueFalseRadioGroup-1110-labelEl
    Should Be Equal    ${Verify_Organ_System_Code}    ${Get_Organ_System_Code}
    Should Be Equal    ${Verify_Organ_System_Name}    ${Get_Organ_System_Name}
    Should Be Equal    ${Verify_Organ_System_Sexy}    ${Verify_Organ_System_Sexy}
    Should Be Equal    ${Verify_Organ_System_IsDisplay}    ${Verify_Organ_System_IsDisplay}
    ${Get_Detail_Item_Code}    Get Text    id=gridcolumn-1118-textEl    # 驗證 跳窗 裡面的Column
    ${Get_Detail_Item_Name}    Get Text    id=gridcolumn-1119-textEl
    Should Be Equal    ${Verify_Detail_Item_Code}    ${Get_Detail_Item_Code}
    Should Be Equal    ${Verify_Detail_Item_Name}    ${Get_Detail_Item_Name}
    Element Should Be Visible    id=textfield-1107-inputEl    # 驗證 跳窗 裡面的TextBox
    Element Should Be Visible    id=textfield-1108-inputEl    # 驗證 跳窗 裡面的TextBox
    Element Should Be Visible    id=genderComboBox-1109-inputEl    # 驗證 跳窗 裡面的限定性別Combobox
    Element Should Be Visible    id=radiofield-1111-inputEl    # 驗證 跳窗 裡面的Radio Button
    Element Should Be Visible    id=radiofield-1112-inputEl    # 驗證 跳窗 裡面的Radio Button
    [Teardown]    Close Browser

Insert Record In Organ System
    [Documentation]    Test case Description :
    ...    主要驗證器官是否可以新增
    ...
    ...    Verify :
    ...    1. 新增後會檢查Basic_Organ是否有存到DB
    ...    2. 檢查網頁資料是否和新增的吻合
    Insert One Record In Organ System
    Remove Test Data
    [Teardown]    Close Browser

Delete Record In Organ System
    Insert One Record In Organ System
    Sleep    1
    Click Element    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[2]/div/img    #Click the first checkbox
    Click Element    id=button-1077-btnInnerEl    #Click the delete button
    Wait Until Element Is Visible    id=button-1006-btnIconEl    ${G_Wait_For_Element_Timeout}    #Jump the popup windows, then click the OK button
    Click Element    id=button-1006-btnIconEl
    Sleep    2
    ${Query_Organ_System}    Set Variable    select * from Basic_Organ \ where organ_code='${TestData_Organ_Code_TextBox}'
    Check If Not Exists In Database    ${Query_Organ_System}
    Remove Test Data
    Disconnect From Database
    [Teardown]

*** Keywords ***
Click Organ System
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Health_Checkup_Basic_File_ID}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Health_Checkup_Basic_File_ID}
    Click Element    ${Health_Checkup_Basic_File_ID}
    Wait Until Element Is Visible    ${Organ_System_Item_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Organ_System_Item_ID}

Insert One Record In Organ System
    Remove Test Data
    Click Element    ${Organ_System_Insert_Button}
    Wait Until Element Is Visible    ${PopupWindow_Organ_System_Title}    ${G_Wait_For_Element_Timeout}
    Log    輸入資料
    Fill Test Data In Organ System
    Click Element    ${PopupWindow_Organ_System_Insert_Button}    #按下新增按鈕
    Sleep    1
    Log    Check DB
    ${Query_Organ_System}    Set Variable    select * from Basic_Organ \ where organ_code='${TestData_Organ_Code_TextBox}'
    Check If Exists In Database    ${Query_Organ_System}
    Log    Check WebPage
    Sleep    1
    ${Verify_Sex}    Convert To String    女
    ${Verify_IsDisply}    Convert To String    是
    ${Get_Code}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[4]/div
    ${Get_Name}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[5]/div
    ${Get_Sex}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[6]/div
    ${Get_IsDisplay}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[4]/div/table/tbody/tr[1]/td[7]/div
    Should Be Equal    ${TestData_Organ_Code_TextBox}    ${Get_Code}
    Should Be Equal    ${TestData_Organ_Name_TextBox}    ${Get_Name}
    Should Be Equal    ${Verify_Sex}    ${Get_Sex}
    Should Be Equal    ${Verify_IsDisply}    ${Get_IsDisplay}

Remove Test Data
    Connect Database
    ${Delete_Organ_System}    Set Variable    delete from Basic_Organ where organ_code ='${TestData_Organ_Code_TextBox}'
    Execute Sql String    ${Delete_Organ_System}

Fill Test Data In Organ System
    Input Text    ${PopupWindow_Organ_Code_TextBox}    ${TestData_Organ_Code_TextBox}
    Input Text    ${PopupWindow_Organ_Name_TextBox}    ${TestData_Organ_Name_TextBox}
    Click Element    ${PopupWindow_Organ_Display_Y_RadioButton}
    Click Element    ${PopupWindow_Organ_Limit_Sex_Dropdown}
    Click Element    xpath=html/body/div[17]/div/ul/li[3]

Close Web Browser
    Close Browser