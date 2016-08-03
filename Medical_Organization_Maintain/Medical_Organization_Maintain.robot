*** Setting ***
Documentation     主要測試醫療機構維護
Test Setup        Click Medical Organization Maintain Button
Test Teardown     Close All Browsers
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

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
${PopupWindow_System_Code_Column}    gridcolumn-1075-textEl    #系統內碼
${PopupWindow_Organization_Code_Column}    gridcolumn-1076-textEl    #機構代碼
${PopupWindow_Organization_Name_Column}    gridcolumn-1077-textEl    #機構名稱
${PopupWindow_Organization_Address_Column}    gridcolumn-1078-textEl    #機構地址
${PopupWindow_Contact_Phone_Column}    gridcolumn-1079-textEl    #連絡電話
${PopupWindow_Contact_Email_Column}    gridcolumn-1080-textEl    #聯絡信箱

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

*** Keywords ***
Click Medical Organization Maintain Button
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button_ID}    ${G_Wait_For_Element_Timeout}
    ${Medical_Organization_Maintain_Button}=    Set Variable    ${Medical_Organization_Maintain_Button_ID}
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Medical_Organization_Maintain_Button}
    Wait Until Element Is Visible    ${Medical_Organization_Maintain_Button}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Medical_Organization_Maintain_Button}
