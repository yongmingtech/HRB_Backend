*** Settings ***
Documentation     健檢基本檔 -> 標準異常值
Suite Setup
Suite Teardown
Test Setup        Click Stand Exception Item Buttton
Test Teardown
Force Tags
Metadata          Version    0.1
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Health_Checkup_Basic_File_ID}    button-1022-btnIconEl
${Standard_Exception_Value_ID}    menuitem-1017-textEl    #Menu ID
${Tab_XPATH}      html/body/div[5]/div[1]/div[1]/div[2]/div/div/div/a/span[1]    #TAB ID
${Hospital_Organization_DropdownList}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/input    #醫療機構-下拉式選單
${Health_Checkup_DropdownList}    html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[2]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/input    #健檢大項-下拉式選單
${Query_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[1]/div/a/span[1]    #查詢-按鈕
${Refill_Button}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[2]/div/a/span[1]    #重填-按鈕
${Standard_Value_Insert_Button}    html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[2]/div/div/div[1]/div/a/span[1]    #標準值 新增-按鈕
${Standard_Value_Delete_Button}    html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[2]/div/div/div[3]/div/a/span[1]    #標準值 刪除-按鈕
${Exception_Value_Insert_Button}    html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[2]/div/div/div[1]/div/a/span[1]    #異常值 新增-按鈕
${Exception_Value_Delete_Button}    html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[2]/div/div/div[3]/div/a/span[1]    #異常值 刪除-按鈕

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
    ${Verify_Tab}    Convert To String    標準值設定
    ${Get_Tab}    Get Text    xpath=${Tab_XPATH}
    Should Be Equal    ${Verify_Tab}    ${Get_Tab}
    #驗證 標準異常值查詢DIV
    ${Verify_Standard_Exception_DIV}    Convert To String    標準/異常值查詢
    ${Verify_hospital_organization}    Convert To String    *醫療機構:
    ${Verfiy_Checkup_Big_Item}    Convert To String    健檢大項:
    ${Get_Standard_Exception_DIV}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[1]/div/div/div/div/span
    ${Get_hospital_organization_Label}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td[1]/label
    ${Get_Checkup_Big_Item_Label}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[1]/div[2]/table/tbody/tr/td[2]/table/tbody/tr/td[1]/label
    Should Be Equal    ${Verify_Standard_Exception_DIV}    ${Get_Standard_Exception_DIV}
    Should Be Equal    ${Verify_hospital_organization}    ${Get_hospital_organization_Label}
    Should Be Equal    ${Verfiy_Checkup_Big_Item}    ${Get_Checkup_Big_Item_Label}
    Element Should Be Visible    xpath=${Hospital_Organization_DropdownList}    #Check component exist
    Element Should Be Visible    xpath=${Health_Checkup_DropdownList}    #Check component exist
    Element Should Be Visible    xpath=${Query_Button}    #Check component exist
    Element Should Be Visible    xpath=${Refill_Button}    #Check component exist
    #驗證 健檢項目 DIV
    ${Verify_Health_Checkup_Tab}    Convert To String    健檢項目
    ${Verify_Detail_Code_Column}    Convert To String    細項代碼
    ${Verify_Detail_Name_Column}    Convert To String    細項名稱
    ${Get_Health_Checkup_Tab}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[1]/div/div/div/div
    ${Get_Detail_Code_Column}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[3]/div/span
    ${Get_Detail_Name_Column}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[3]/div[2]/div/div/div[4]/div/span
    Should Be Equal    ${Verify_Health_Checkup_Tab}    ${Get_Health_Checkup_Tab}
    Should Be Equal    ${Verify_Detail_Code_Column}    ${Get_Detail_Code_Column}
    Should Be Equal    ${Verify_Detail_Name_Column}    ${Get_Detail_Name_Column}
    #驗證 標準值 DIV
    ${Verify_NO}    Convert To String    No
    ${Verify_Hospital_Standard_Value}    Convert To String    醫療機構標準值
    ${Verify_Unit}    Convert To String    單位
    ${Verify_Valid_Start_Date}    Convert To String    有效日期(起)
    ${Verify_Valid_End_Date}    Convert To String    有效日期(迄)
    ${Get_NO}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[3]/div/div/div[1]/div
    ${Get_Hospital_Standard_Value}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[3]/div/div/div[6]/div/span
    ${Get_Unit}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[3]/div/div/div[7]/div/span
    ${Get_Valid_Start_Date}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[3]/div/div/div[8]/div/span
    ${Get_Valid_End_Date}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[1]/div[3]/div/div/div[9]/div/span
    Should Be Equal    ${Verify_NO}    ${Get_NO}
    Should Be Equal    ${Verify_Hospital_Standard_Value}    ${Get_Hospital_Standard_Value}
    Should Be Equal    ${Verify_Unit}    ${Get_Unit}
    Should Be Equal    ${Verify_Valid_Start_Date}    ${Get_Valid_Start_Date}
    Should Be Equal    ${Verify_Valid_End_Date}    ${Get_Valid_End_Date}
    Element Should Be Visible    xpath=${Standard_Value_Insert_Button}    #Check component exist
    Element Should Be Visible    xpath=${Standard_Value_Delete_Button}    #Check component exist
    #驗證 異常值 DIV
    ${Verify_Expcetion_Tab}    Convert To String    異常值
    ${Verify_NO}    Convert To String    No
    ${Verify_Expcetion_Description}    Convert To String    異常值描述
    ${Verify_Expcetion_Suggestion_Description}    Convert To String    建議描述
    ${Get_Expcetion_Tab}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[1]/div/div/div/div/span
    ${Get_NO}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[3]/div/div/div[1]/div/span
    ${Get_Expcetion_Description}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[3]/div/div/div[7]/div/span
    ${Get_Expcetion_Suggestion_Description}    Get Text    xpath=html/body/div[5]/div[2]/div/div/div[5]/div/div/div/div[2]/div[3]/div/div/div[8]/div/span
    Should Be Equal    ${Verify_Expcetion_Tab}    ${Get_Expcetion_Tab}
    Should Be Equal    ${Verify_NO}    ${Get_NO}
    Should Be Equal    ${Verify_Expcetion_Description}    ${Get_Expcetion_Description}
    Should Be Equal    ${Get_Expcetion_Suggestion_Description}    ${Verify_Expcetion_Suggestion_Description}
    Element Should Be Visible    xpath=${Exception_Value_Insert_Button}
    Element Should Be Visible    xpath=${Exception_Value_Delete_Button}
    [Teardown]    Close Browser

*** Keywords ***
Click Stand Exception Item Buttton
    Open Broser and Login automatically
    Wait Until Element Is Visible    ${G_Basic_File_MainTain_Tab}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Basic_File_MainTain_Tab}
    Click Element    ${G_Basic_File_MainTain_Tab}
    Wait Until Element Is Visible    ${Standard_Exception_Value_ID}    ${G_Wait_For_Element_Timeout}
    Click Element    ${Standard_Exception_Value_ID}
    Wait Until Element Is Visible    xpath=${Tab_XPATH}    ${G_Wait_For_Element_Timeout}
