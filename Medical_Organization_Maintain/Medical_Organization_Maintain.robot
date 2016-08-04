*** Setting ***
Documentation     主要測試醫療機構維護
...               1. Check Page 主要測試裡面所有的字型和字型的位置，另外也檢查跳窗的文字和相關下拉式選單是否存在
...               2. Refill Form 主要是在新增資料時，測試重填按鈕是否生效
Test Setup        Click Medical Organization Maintain Button
Test Teardown     Close All Browsers
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          DB_Query.robot

*** Variables ***
${Medical_Organization_Maintain_Button_ID}    button-1016-btnIconEl
${Organization_Maintain_Tab_ID}    tab-1087-btnInnerEl    # 醫療機構維護 Tab
${Organization_Query_Div_ID}    basicHospitalSearchForm-1050_header_hd-textEl    # 醫療機構查詢 Div
${Organization_Code_Lable_ID}    nhiCodeComboBox-1051-labelEl    # 機構代碼 label
${Organization_Code_Dropdown_ID}    nhiCodeComboBox-1051-inputEl    # 機構代碼 Dropdown
${Organization_CodeName_Lable_ID}    hospitalNameComboBox-1052-labelEl    # 機構名稱 label
${Organization_CodeName_Dropdown_ID}    hospitalNameComboBox-1052-inputEl    #機構名稱 Dropdown
${Query_Button_ID}    button-1054-btnInnerEl    #查詢按鈕
${Refill_Button_ID}    button-1055-btnInnerEl    #重填按鈕
${Medical_Organization_Div}    basicHospitalGrid-1056_header_hd-textEl    #醫療機構 Div
${Insert_Button}    button-1083-btnInnerEl    #新增按鈕
${Delete_Button}    button-1085-btnInnerEl    #刪除按鈕
${System_Code_Column}    gridcolumn-1075-textEl    #系統內碼
${Organization_Code_Column}    gridcolumn-1076-textEl    #機構代碼
${Organization_Name_Column}    gridcolumn-1077-textEl    #機構名稱
${Organization_Address_Column}    gridcolumn-1078-textEl    #機構地址
${Contact_Phone_Column}    gridcolumn-1079-textEl    #連絡電話
${Contact_Email_Column}    gridcolumn-1080-textEl    #聯絡信箱
${Click_one_Cell}    gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5
${PopupWindow_System_Code_Column}    gridcolumn-1075-textEl    #跳窗 系統內碼
${PopupWindow_Organization_Code_Column}    gridcolumn-1076-textEl    #跳窗 機構代碼
${PopupWindow_Organization_Name_Column}    gridcolumn-1077-textEl    #跳窗 機構名稱
${PopupWindow_Organization_Address_Column}    gridcolumn-1078-textEl    #跳窗 機構地址
${PopupWindow_Contact_Phone_Column}    gridcolumn-1079-textEl    #跳窗 連絡電話
${PopupWindow_Contact_Email_Column}    gridcolumn-1080-textEl    #跳窗 聯絡信箱
${PopupWindow_System_Code_TextBox}    textfield-1094-inputEl    #跳窗 系統內碼 TextBox
${PopupWindow_Organization_Code_TextBox}    textfield-1095-inputEl    #跳窗 機構代碼 TextBox
${PopupWindow_Organization_Name_TextBox}    textfield-1096-inputEl    #跳窗 機構名稱 TextBox
${PopupWindow_Organization_Address_TextBox}    textareafield-1097-inputEl    #跳窗 機構地址 TextBox
${PopupWindow_Contact_Phone_TextBox}    textareafield-1098-inputEl    #跳窗 連絡電話 TextBox
${PopupWindow_Contact_Email_TextBox}    textareafield-1099-inputEl    #跳窗 聯絡信箱 TextBox
${PopupWindow_Refill_Button}    button-1103-btnInnerEl    #跳窗 重填 Button
${PopupWindow_Insert_Button}    button-1101-btnInnerEl    #跳窗 新增 Button
${PagenationToolBar}    pagingtoolbar-1057-innerCt    # Pagenation Tool Bar
${TestData_System_Code_1}    _hlthealthy_1    # 測試資料 系統內碼
${TestData_Organization_Code_1}    012345678    # 測試資料 機構代碼
${TestData_Organization_Name_1}    (TestData_1)    # 測試資料 機構名稱    (排序)
${TestData_Organization_Address_1}    address.    # 測試資料 機構地址
${TestData_Contact_Phone_1}    7533967    # 測試資料 連絡電話
${TestData_Contact_Email_1}    test@yamail.com    # 測試資料    聯絡信箱
${TestData_System_Code_2}    _hlthealthy_2    # 測試資料 系統內碼
${TestData_Organization_Code_2}    876543210    # 測試資料 機構代碼
${TestData_Organization_Name_2}    (TestData_2)    # 測試資料 機構名稱    (排序)
${TestData_Organization_Address_2}    address    # 測試資料 機構地址
${TestData_Contact_Phone_2}    5937081    # 測試資料 連絡電話
${TestData_Contact_Email_2}    test@yamail.com    # 測試資料    聯絡信箱

*** Test Cases ***
Check Page
    Log    準備驗證參數
    ${Verify_Tab}=    Convert To String    醫療機構維護
    ${Verify_Organization_Code_Div}=    Convert To String    醫療機構查詢
    ${Verify_Organization_Code}=    Convert To String    機構代碼:
    ${Verify_Organization_Name}=    Convert To String    機構名稱:
    ${Verify_Query_Button_Name}=    Convert To String    查詢
    ${Verify_Refill_Button_Name}=    Convert To String    重填
    ${Verify_Medical_Organization_Div}=    Convert To String    醫療機構
    ${Verify_Insert_Button}=    Convert To String    新增
    ${Verify_Delete_Button}=    Convert To String    刪除
    ${Verify_System_Code_Column}=    Convert To String    系統內碼
    ${Verify_Organization_Code_Column}=    Convert To String    機構代碼
    ${Verify_Organization_Name_Column}=    Convert To String    機構名稱
    ${Verify_Organization_Address_Column}=    Convert To String    機構地址
    ${Verify_Contact_Phone_Column}=    Convert To String    連絡電話
    ${Verify_Contact_Email_Column}=    Convert To String    聯絡信箱
    ${Verify_Align_Center}    Convert To String    text-align: center;
    ${Verify_Align_Left}    Convert To String    text-align: left;
    Log    Verify 醫療機構維護裡面的Div
    Wait Until Element Is Visible    ${Organization_Maintain_Tab_ID}    ${G_Wait_For_Element_Timeout}
    ${Get_Tab}=    Get Text    ${Organization_Maintain_Tab_ID}
    ${Get_Organization_Code_Div}=    Get Text    ${Organization_Query_Div_ID}
    ${Get_Organization_Code}=    Get Text    ${Organization_Code_Lable_ID}
    ${Get_Organization_Name}=    Get Text    ${Organization_CodeName_Lable_ID}
    ${Get_Query_Button_Name}=    Get Text    ${Query_Button_ID}
    ${Get_Refill_Button_Name}=    Get Text    ${Refill_Button_ID}
    Element Should Be Visible    ${Organization_Code_Dropdown_ID}
    Element Should Be Visible    ${Organization_CodeName_Dropdown_ID}
    Element Should Be Visible    ${PagenationToolBar}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    Should Be Equal    ${Verify_Organization_Code_Div}    ${Get_Organization_Code_Div}
    Should Be Equal    ${Verify_Organization_Code}    ${Get_Organization_Code}
    Should Be Equal    ${Verify_Organization_Name}    ${Get_Organization_Name}
    Should Be Equal    ${Verify_Query_Button_Name}    ${Get_Query_Button_Name}
    Should Be Equal    ${Verify_Refill_Button_Name}    ${Get_Refill_Button_Name}
    Log    Verify 醫療機構裡面Div
    ${Get_Medical_Organization_Div}=    Get Text    ${Medical_Organization_Div}
    ${Get_Insert_Button}=    Get Text    ${Insert_Button}
    ${Get_Delete_Button}=    Get Text    ${Delete_Button}
    ${Get_System_Code_Column}=    Get Text    ${System_Code_Column}
    ${Get_Organization_Code_Column}=    Get Text    ${Organization_Code_Column}
    ${Get_Organization_Name_Column}=    Get Text    ${Organization_Name_Column}
    ${Get_Organization_Address_Column}=    Get Text    ${Organization_Address_Column}
    ${Get_Contact_Phone_Column}=    Get Text    ${Contact_Phone_Column}
    ${Get_Contact_Email_Column}=    Get Text    ${Contact_Email_Column}
    Should Be Equal    ${Verify_Medical_Organization_Div}    ${Get_Medical_Organization_Div}
    Should Be Equal    ${Verify_Insert_Button}    ${Get_Insert_Button}
    Should Be Equal    ${Verify_Delete_Button}    ${Get_Delete_Button}
    Should Be Equal    ${Verify_System_Code_Column}    ${Get_System_Code_Column}
    Should Be Equal    ${Verify_Organization_Code_Column}    ${Get_Organization_Code_Column}
    Should Be Equal    ${Verify_Organization_Name_Column}    ${Get_Organization_Name_Column}
    Should Be Equal    ${Verify_Organization_Address_Column}    ${Get_Organization_Address_Column}
    Should Be Equal    ${Verify_Contact_Phone_Column}    ${Get_Contact_Phone_Column}
    Should Be Equal    ${Verify_Contact_Email_Column}    ${Get_Contact_Email_Column}
    Log    Verify 醫療機構裡面的Gridview文字對齊
    ${Get_System_Code_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[4]/div@style
    ${Get_Organization_Code_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[5]/div@style
    ${Get_Organization_Name_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[6]/div@style
    ${Get_Organization_Address_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[7]/div@style
    ${Get_Contact_Phone_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[8]/div@style
    ${Get_Contact_Email_Align}=    Get Element Attribute    xpath=//*[@id="gridview-1081-record-8a401fa1-bfba-45c4-a2e3-642f5eef67c5"]/td[9]/div@style
    Should Be Equal    ${Verify_Align_Center}    ${Get_System_Code_Align}
    Should Be Equal    ${Verify_Align_Center}    ${Get_Organization_Code_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Organization_Name_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Organization_Address_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Contact_Phone_Align}
    Should Be Equal    ${Verify_Align_Left}    ${Get_Contact_Email_Align}
    Log    Verify 醫療機構維護跳窗
    Double Click Element    ${Click_one_Cell}
    Wait Until Element Is Visible    ${PopupWindow_System_Code_Column}    ${G_Wait_For_Element_Timeout}
    ${Get_System_Code_Column}=    Get Text    ${PopupWindow_System_Code_Column}
    ${Get_Organization_Code_Column}=    Get Text    ${PopupWindow_Organization_Code_Column}
    ${Get_Organization_Name_Column}=    Get Text    ${PopupWindow_Organization_Name_Column}
    ${Get_Organization_Address_Column}=    Get Text    ${PopupWindow_Organization_Address_Column}
    ${Get_Contact_Phone_Column}=    Get Text    ${PopupWindow_Contact_Phone_Column}
    ${Get_Contact_Email_Column}=    Get Text    ${PopupWindow_Contact_Email_Column}
    Should Be Equal    ${Verify_System_Code_Column}    ${Get_System_Code_Column}
    Should Be Equal    ${Verify_Organization_Code_Column}    ${Get_Organization_Code_Column}
    Should Be Equal    ${Verify_Organization_Name_Column}    ${Get_Organization_Name_Column}
    Should Be Equal    ${Verify_Organization_Address_Column}    ${Get_Organization_Address_Column}
    Should Be Equal    ${Verify_Contact_Phone_Column}    ${Get_Contact_Phone_Column}
    Should Be Equal    ${Verify_Contact_Email_Column}    ${Get_Contact_Email_Column}

Refill Form
    Wait Until Element Is Visible    ${Organization_Maintain_Tab_ID}    ${G_Wait_For_Element_Timeout}
    Click Insert Button
    Input Text    ${PopupWindow_System_Code_TextBox}    ${TestData_System_Code_1}
    Input Text    ${PopupWindow_Organization_Code_TextBox}    ${TestData_Organization_Code_1}
    Input Text    ${PopupWindow_Organization_Name_TextBox}    ${TestData_Organization_Name_1}
    Input Text    ${PopupWindow_Organization_Address_TextBox}    ${TestData_Organization_Address_1}
    Input Text    ${PopupWindow_Contact_Phone_TextBox}    ${TestData_Contact_Phone_1}
    Input Text    ${PopupWindow_Contact_Email_TextBox}    ${TestData_Contact_Email_1}
    Click Element    ${PopupWindow_Refill_Button}
    Log    Verify 跳窗重新填的資料是否清空
    ${Get_System_Code_TextBox}=    Get Text    ${PopupWindow_System_Code_TextBox}
    ${Get_Organization_Code_TextBox}=    Get Text    ${PopupWindow_Organization_Code_TextBox}
    ${Get_Organization_Name_TextBox}=    Get Text    ${PopupWindow_Organization_Name_TextBox}
    ${Get_Organization_Address_TextBox}=    Get Text    ${PopupWindow_Organization_Address_TextBox}
    ${Get_Contact_Phone_TextBox}=    Get Text    ${PopupWindow_Contact_Phone_TextBox}
    ${Get_Contact_Email_TextBox}=    Get Text    ${PopupWindow_Contact_Email_TextBox}
    Should Be Empty    ${Get_System_Code_TextBox}
    Should Be Empty    ${Get_Organization_Code_TextBox}
    Should Be Empty    ${Get_Organization_Name_TextBox}
    Should Be Empty    ${Get_Organization_Address_TextBox}
    Should Be Empty    ${Get_Contact_Phone_TextBox}
    Should Be Empty    ${Get_Contact_Email_TextBox}

Insert Two Records
    Connect Database
    Add Two Record In DB
    ${queryBasic_Hospital_TestData_1}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_1}' and addr='${TestData_Organization_Address_1}' and hospital_code='${TestData_System_Code_1}' and phone='${TestData_Contact_Phone_1}' and email='${TestData_Contact_Email_1}' and nhi_code='${TestData_Organization_Code_1}'
    ${queryBasic_Hospital_TestData_2}=    Set Variable    select * from Basic_Hospital where hospital_name ='${TestData_Organization_Name_2}' and addr='${TestData_Organization_Address_2}' and hospital_code='${TestData_System_Code_2}' and phone='${TestData_Contact_Phone_2}' and email='${TestData_Contact_Email_2}' and nhi_code='${TestData_Organization_Code_2}'
    Log    Verify 資料庫是否有剛新增的兩筆資料
    Check If Exists In DataBase    ${queryBasic_Hospital_TestData_1}
    Check If Exists In DataBase    ${queryBasic_Hospital_TestData_2}
    [Teardown]    Run Keywords    Close All Browsers    Disconnect From Database

Query Organization Code and Name
    Connect Database
    Add Two Record In DB
    Log    Verify 查詢機構代碼
    Input Text    ${Organization_Code_Dropdown_ID}    ${TestData_Organization_Code_1}
    Click Element    id=button-1054-btnInnerEl
    Sleep    2
    ${Get_Code}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[5]/div
    Should Be Equal    ${TestData_Organization_Code_1}    ${Get_Code}
    Log    Verify 查詢機構名稱
    Input Text    id=hospitalNameComboBox-1052-inputEl    ${TestData_Organization_Name_1}
    Click Element    id=button-1054-btnInnerEl
    Sleep    2
    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[6]/div
    Should Be Equal    ${TestData_Organization_Name_1}    ${Get_Name}
    Log    Verify 查詢機構代碼和名稱
    Input Text    ${Organization_Code_Dropdown_ID}    \
    Click Element    id=button-1054-btnInnerEl
    Sleep    2
    ${Get_Name}=    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[4]/div/table/tbody/tr[1]/td[6]/div
    Should Be Equal    ${TestData_Organization_Name_1}    ${Get_Name}
    [Teardown]    Run Keywords    Close All Browsers

*** Keywords ***
Click Medical Organization Maintain Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button_ID}    ${G_Wait_For_Element_Timeout}
    ${Medical_Organization_Maintain_Button}=    Set Variable    ${Medical_Organization_Maintain_Button_ID}
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Medical_Organization_Maintain_Button}
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Medical_Organization_Maintain_Button}

Click Insert Button
    Click Element    ${Insert_Button}
    Wait Until Element Is Visible    ${PopupWindow_System_Code_TextBox}

Add Two Record In DB
    Log    先清空測試資料
    Execute Sql String    ${Delete_Basic_Hospital_TestData}
    Log    加入兩筆測試資料
    Wait Until Element Is Visible    ${Organization_Maintain_Tab_ID}    ${G_Wait_For_Element_Timeout}
    Click Insert Button
    Input Text    ${PopupWindow_System_Code_TextBox}    ${TestData_System_Code_1}
    Input Text    ${PopupWindow_Organization_Code_TextBox}    ${TestData_Organization_Code_1}
    Input Text    ${PopupWindow_Organization_Name_TextBox}    ${TestData_Organization_Name_1}
    Input Text    ${PopupWindow_Organization_Address_TextBox}    ${TestData_Organization_Address_1}
    Input Text    ${PopupWindow_Contact_Phone_TextBox}    ${TestData_Contact_Phone_1}
    Input Text    ${PopupWindow_Contact_Email_TextBox}    ${TestData_Contact_Email_1}
    Click Element    ${PopupWindow_Insert_Button}
    Sleep    2
    Click Element    ${Insert_Button}
    Sleep    2
    Input Text    textfield-1110-inputEl    ${TestData_System_Code_2}
    Input Text    textfield-1111-inputEl    ${TestData_Organization_Code_2}
    Input Text    textfield-1112-inputEl    ${TestData_Organization_Name_2}
    Input Text    textareafield-1113-inputEl    ${TestData_Organization_Address_2}
    Input Text    textareafield-1114-inputEl    ${TestData_Contact_Phone_2}
    Input Text    textareafield-1115-inputEl    ${TestData_Contact_Email_2}
    Click Element    button-1117-btnInnerEl
    Sleep    1