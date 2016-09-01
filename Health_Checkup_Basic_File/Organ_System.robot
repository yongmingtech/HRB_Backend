*** Setting ***
Documentation     主要測試健檢基本檔的基本項目
...               1. Check Page 主要測試裡面所有的字型和文字的位置，另外也檢查跳窗的文字和相關物件是否存在
Suite Setup
Suite Teardown
Test Setup        Click Organ System
Test Teardown
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
${TestData_Organ_Code_TextBox}    _A123456
${TestData_Organ_Name_TextBox}    _測試

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
    Input Text    ${PopupWindow_Organ_Code_TextBox}    ${TestData_Organ_Code_TextBox}
    Input Text    ${PopupWindow_Organ_Name_TextBox}    ${TestData_Organ_Name_TextBox}
    Click Element    ${PopupWindow_Organ_Display_Y_RadioButton}
    Click Element    ${PopupWindow_Organ_Limit_Sex_Dropdown}
    Click Element    xpath=html/body/div[17]/div/ul/li[3]
    Click Element    ${PopupWindow_Organ_System_Refill_Button}
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

*** Keywords ***
Click Organ System
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Health_Checkup_Basic_File_ID}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Health_Checkup_Basic_File_ID}
    Click Element    ${Health_Checkup_Basic_File_ID}
    Wait Until Element Is Visible    ${Organ_System_Item_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Organ_System_Item_ID}
