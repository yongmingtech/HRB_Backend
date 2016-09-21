*** Settings ***
Test Teardown     Close Browser
Resource          ../Login.robot
Resource          ../DataBase.robot
Resource          ../Library.robot

*** Test Cases ***
Check Menu
    [Documentation]    登入後主要驗證左邊的Menu是否跟資料庫一樣
    Open Broser and Login automatically
    Connect Database
    Click Basic File Maintain Menu
    Verify Basic File Maintain Main
    Click Checkup Mgnt Menu
    Verify Checkup Mgnt
    [Teardown]    Close Browser

*** Keywords ***
Verify Basic File Maintain Main
    #Verify 基本檔維護
    ${Query_Basic_File_MainTain}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='BasicMgr' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Basic_File_MainTain}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_Basic_File_MainTain}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_Basic_File_MainTain}    ${Temp}
    #預期的資料
    ${List_Basic_File_MainTain}    Create List
    Append To List    ${List_Basic_File_MainTain}    醫療機構維護
    Append To List    ${List_Basic_File_MainTain}    健檢項目
    Append To List    ${List_Basic_File_MainTain}    標準值設定
    Append To List    ${List_Basic_File_MainTain}    器官系統
    Log Many    ${List_Basic_File_MainTain}
    #先跟DB驗證
    Lists Should Be Equal    ${List_Basic_File_MainTain}    ${Get_Basic_File_MainTain}
    #抓取網頁資料準備驗證
    ${Get_Basic_File_MainTain_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[8]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[8]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_Basic_File_MainTain_From_Web}    ${Temp}
    Lists Should Be Equal    ${List_Basic_File_MainTain}    ${Get_Basic_File_MainTain_From_Web}

Verify Checkup Mgnt
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='CheckupMgr' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_Checkup_Mgnt}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_Checkup_Mgnt}    ${Temp}
    ${List_Checkup_Mgnt}    Create List
    #預期的資料
    Append To List    ${List_Checkup_Mgnt}    客戶健檢資格維護
    Append To List    ${List_Checkup_Mgnt}    健檢方案維護
    Append To List    ${List_Checkup_Mgnt}    預約量維護
    Append To List    ${List_Checkup_Mgnt}    健檢預約審核
    Append To List    ${List_Checkup_Mgnt}    已健檢資料上傳
    Append To List    ${List_Checkup_Mgnt}    健檢請款作業
    Append To List    ${List_Checkup_Mgnt}    請款審核作業
    Append To List    ${List_Checkup_Mgnt}    付款管理
    Append To List    ${List_Checkup_Mgnt}    健檢資料維護
    Lists Should Be Equal    ${List_Checkup_Mgnt}    ${Get_Checkup_Mgnt}
    #抓取網頁資料準備驗證
    ${Get_Checkup_Mgnt_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[9]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[9]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_Checkup_Mgnt_From_Web}    ${Temp}
    Lists Should Be Equal    ${List_Checkup_Mgnt}    ${Get_Checkup_Mgnt_From_Web}

Click Basic File Maintain Menu
    Wait Until Element Is Visible    ${G_Basic_File_MainTain_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Basic_File_MainTain_Menu}
    Click Element    ${G_Basic_File_MainTain_Menu}
    Wait Until Element Is Visible    menuitem-1016-textEl    ${G_Wait_For_Element_Timeout}

Click Checkup Mgnt Menu
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}
