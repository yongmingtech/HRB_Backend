*** Settings ***
Documentation     健檢基本檔 -> 標準異常值
Suite Setup
Suite Teardown
Test Setup        Click Stand Exception Item Buttton
Test Teardown     Close Web Browser
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Health_Checkup_Basic_File_ID}    button-1022-btnIconEl
${Standard_Exception_Value_ID}    menuitem-1020-textEl    #Menu ID
${Tab_ID}         tab-1125-btnInnerEl    #TAB ID
${Hospital_Organization_DropdownList}    hospitalComboBox-1051-inputEl    #醫療機構-下拉式選單
${Health_Checkup_DropdownList}    checkGroupAllComboBox-1052-inputEl    #健檢大項-下拉式選單
${Query_Button}    button-1054-btnInnerEl    #查詢-按鈕
${Refill_Button}    button-1055-btnInnerEl    #重填-按鈕
${Standard_Value_Insert_Button}    button-1091-btnInnerEl
${Standard_Value_Delete_Button}    button-1093-btnInnerEl

*** Test Cases ***
Check Page
    [Documentation]    Test case Description :
    ...    主要測試標準異常值個頁面的文字對齊和文字是否按造規格顯示
    ...    1. 使用者點擊左上角健檢基本檔
    ...    2. 在選擇標準/異常值的選項
    ...
    ...    Verify :
    ...    整個頁面和跳窗的文字對齊和文字是否按造規格顯示
    #驗證Tab
    ${Verify_Tab}    Convert To String    標準/異常值
    ${Get_Tab}    Get Text    ${Tab_ID}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    #驗證 標準異常值查詢DIV
    ${Verify_Standard_Exception_DIV}    Convert To String    標準/異常值查詢
    ${Verify_hospital_organization}    Convert To String    *醫療機構:
    ${Verfiy_Checkup_Big_Item}    Convert To String    健檢大項:
    ${Get_Standard_Exception_DIV}    Get Text    id=chkItemSearchForm-1050_header_hd-textEl
    ${Get_hospital_organization_Label}    Get Text    id=hospitalComboBox-1051-labelEl
    ${Get_Checkup_Big_Item_Label}    Get Text    id=checkGroupAllComboBox-1052-labelEl
    Should Be Equal    ${Verify_Standard_Exception_DIV}    ${Get_Standard_Exception_DIV}
    Should Be Equal    ${Verify_hospital_organization}    ${Get_hospital_organization_Label}
    Should Be Equal    ${Verfiy_Checkup_Big_Item}    ${Get_Checkup_Big_Item_Label}
    Element Should Be Visible    ${Hospital_Organization_DropdownList}    #Check component exist
    Element Should Be Visible    ${Health_Checkup_DropdownList}    #Check component exist
    Element Should Be Visible    ${Query_Button}    #Check component exist
    Element Should Be Visible    ${Refill_Button}    #Check component exist
    #驗證 健檢項目 DIV
    ${Verify_Health_Checkup_Tab}    Convert To String    健檢項目
    ${Verify_Detail_Code_Column}    Convert To String    細項代碼
    ${Verify_Detail_Name_Column}    Convert To String    細項名稱
    ${Get_Health_Checkup_Tab}    Get Text    basicCheckItemGroupingFormatGrid-1056_header_hd-textEl
    ${Get_Detail_Code_Column}    Get Text    gridcolumn-1060-textEl
    ${Get_Detail_Name_Column}    Get Text    gridcolumn-1061-textEl
    Should Be Equal    ${Verify_Health_Checkup_Tab}    ${Get_Health_Checkup_Tab}
    Should Be Equal    ${Verify_Detail_Code_Column}    ${Get_Detail_Code_Column}
    Should Be Equal    ${Verify_Detail_Name_Column}    ${Get_Detail_Name_Column}
    #驗證 標準值 DIV
    ${Verify_NO}    Convert To String    No
    ${Verify_Hospital_Standard_Value}    Convert To String    醫療機構標準值
    ${Verify_Unit}    Convert To String    單位
    ${Verify_Valid_Start_Date}    Convert To String    有效日期(起)
    ${Verify_Valid_End_Date}    Convert To String    有效日期(迄)
    ${Get_NO}    Get Text    rownumberer-1080-textEl
    ${Get_Hospital_Standard_Value}    Get Text    gridcolumn-1085-textEl
    ${Get_Unit}    Get Text    gridcolumn-1086-textEl
    ${Get_Valid_Start_Date}    Get Text    datecolumn-1087-textEl
    ${Get_Valid_End_Date}    Get Text    datecolumn-1088-textEl
    Should Be Equal    ${Verify_NO}    ${Get_NO}
    Should Be Equal    ${Verify_Hospital_Standard_Value}    ${Get_Hospital_Standard_Value}
    Should Be Equal    ${Verify_Unit}    ${Get_Unit}
    Should Be Equal    ${Verify_Valid_Start_Date}    ${Get_Valid_Start_Date}
    Should Be Equal    ${Verify_Valid_End_Date}    ${Get_Valid_End_Date}
    Element Should Be Visible    ${Standard_Value_Insert_Button}    #Check component exist
    Element Should Be Visible    ${Standard_Value_Delete_Button}    #Check component exist
    #驗證 異常值 DIV
    ${Verify_Expcetion_Tab}    Convert To String    異常值
    ${Verify_NO}    Convert To String    No
    ${Verify_Expcetion_Description}    Convert To String    異常值描述
    ${Verify_Expcetion_Suggestion_Description}    Convert To String    建議描述
    ${Get_Expcetion_Tab}    Get Text    chkItemOutlierGrid-1095_header_hd-textEl
    ${Get_NO}    Get Text    rownumberer-1111-titleEl
    ${Get_Expcetion_Description}    Get Text    gridcolumn-1117-textEl
    ${Get_Expcetion_Suggestion_Description}    Get Text    gridcolumn-1118-textEl
    Should Be Equal    ${Verify_Expcetion_Tab}    ${Get_Expcetion_Tab}
    Should Be Equal    ${Verify_NO}    ${Get_NO}
    Should Be Equal    ${Verify_Expcetion_Description}    ${Get_Expcetion_Description}
    Should Be Equal    ${Get_Expcetion_Suggestion_Description}    ${Verify_Expcetion_Suggestion_Description}
    [Teardown]    Close Browser

*** Keywords ***
Click Stand Exception Item Buttton
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${Health_Checkup_Basic_File_ID}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${Health_Checkup_Basic_File_ID}
    Click Element    ${Health_Checkup_Basic_File_ID}
    Wait Until Element Is Visible    ${Standard_Exception_Value_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Standard_Exception_Value_ID}
    Wait Until Element Is Visible    ${Tab_ID}    ${G_Wait_For_Element_Timeout}
