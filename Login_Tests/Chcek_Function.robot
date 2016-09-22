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
    Click System Information Monitor
    Verify System Information Monitor
    Click Management Work
    Verify Management Work
    Click Equipment Management
    Verify Equipment Management
    Click Dial Service
    Verify Dial Service
    Click System Management
    Verify System Management
    [Teardown]    Close Browser

*** Keywords ***
Verify Basic File Maintain Main
    #Declare the common variable
    ${ParentCode}    Convert To String    BasicMgr    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    8    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    醫療機構維護
    Append To List    ${Expected_List}    健檢項目
    Append To List    ${Expected_List}    標準值設定
    Append To List    ${Expected_List}    器官系統
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Basic_File_MainTain}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Basic_File_MainTain}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    #跟DB驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料到Get_List_From_Web
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify Checkup Mgnt
    #Declare the common variable
    ${ParentCode}    Convert To String    CheckupMgr    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    9    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    客戶健檢資格維護
    Append To List    ${Expected_List}    健檢方案維護
    Append To List    ${Expected_List}    預約量維護
    Append To List    ${Expected_List}    健檢預約審核
    Append To List    ${Expected_List}    已健檢資料上傳
    Append To List    ${Expected_List}    健檢請款作業
    Append To List    ${Expected_List}    請款審核作業
    Append To List    ${Expected_List}    付款管理
    Append To List    ${Expected_List}    健檢資料維護
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify System Information Monitor
    #Declare the common variable
    ${ParentCode}    Convert To String    1    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    10    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    監控首頁
    Append To List    ${Expected_List}    App使用狀況
    Append To List    ${Expected_List}    量測記錄查詢
    Append To List    ${Expected_List}    PIP執行記錄
    Append To List    ${Expected_List}    異常記錄
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify Management Work
    #Declare the common variable
    ${ParentCode}    Convert To String    3    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    11    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    意見回饋
    Append To List    ${Expected_List}    跑馬燈訊息
    Append To List    ${Expected_List}    預約諮詢紀錄
    Append To List    ${Expected_List}    廣播訊息
    Append To List    ${Expected_List}    Email信件發送
    Append To List    ${Expected_List}    衛教資訊上傳
    Append To List    ${Expected_List}    食膳玩家
    Append To List    ${Expected_List}    統計報表
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify Equipment Management
    #Declare the common variable
    ${ParentCode}    Convert To String    4    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    12    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    設備基本資料
    Append To List    ${Expected_List}    設備維護紀錄
    Append To List    ${Expected_List}    異常通知
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify Dial Service
    #Declare the common variable
    ${ParentCode}    Convert To String    7    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    13    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    外撥案件查詢
    Append To List    ${Expected_List}    電訪工作清單
    Append To List    ${Expected_List}    電訪工作清單(主管)
    Append To List    ${Expected_List}    指定代理人
    Append To List    ${Expected_List}    預約名單轉檔
    Append To List    ${Expected_List}    未分派工作
    Append To List    ${Expected_List}    E級通報上傳
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Verify System Management
    #Declare the common variable
    ${ParentCode}    Convert To String    8    #SQL 查詢使用
    ${Sub_Menu_Index}    Convert To String    14    #查詢子Menu專用
    #準備預期的資料
    ${Expected_List}    Create List
    Append To List    ${Expected_List}    使用者管理
    Append To List    ${Expected_List}    休假日維護
    Append To List    ${Expected_List}    自訂項目維護
    Append To List    ${Expected_List}    操作記錄查詢
    #資料庫抓取資料到Get_List_From_DB
    ${Query_Checkup_Mgnt}    Set Variable    select CRMFunctionName from CRM_FunctionBasic where CRMFunctionCode in (select FunctionCode from AccRoleFunctionRel where AccountRole in (select AccountRole from UserAccRoleRel where UserId ='${User_Name}')) and ParentCode='${ParentCode}' order by System desc,ParentCode,ListSeq
    ${Get_Result}    Query    ${Query_Checkup_Mgnt}
    ${Get_Result_Length}    Get Length    ${Get_Result}
    ${Get_List_From_DB}    Create List
    : FOR    ${INDEX}    IN RANGE    0    ${Get_Result_Length}
    \    ${Temp}    Convert To String    ${Get_Result[${INDEX}][0]}
    \    Append To List    ${Get_List_From_DB}    ${Temp}
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_DB}
    #抓取網頁資料準備驗證
    ${Get_List_From_Web}    Create List
    ${Get_Web_Count}    Get Matching Xpath Count    html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div
    : FOR    ${INDEX}    IN RANGE    1    ${Get_Web_Count}+1
    \    ${Temp}    Get Text    xpath=html/body/div[${Sub_Menu_Index}]/div/div[2]/div[2]/div[${INDEX}]/a/span
    \    Append To List    ${Get_List_From_Web}    ${Temp}
    #跟Web驗證
    Lists Should Be Equal    ${Expected_List}    ${Get_List_From_Web}

Click Basic File Maintain Menu
    Wait Until Element Is Visible    ${G_Basic_File_MainTain_Menu}    ${G_Wait_For_Element_Timeout}
    Mouse Over    ${G_Basic_File_MainTain_Menu}
    Click Element    ${G_Basic_File_MainTain_Menu}
    Wait Until Element Is Visible    menuitem-1016-textEl    ${G_Wait_For_Element_Timeout}

Click Checkup Mgnt Menu
    Mouse Over    ${G_Checkup_Management_Menu}
    Click Element    ${G_Checkup_Management_Menu}

Click System Information Monitor
    Mouse Over    ${G_System_Information_Monitor_Menu}
    Click Element    ${G_System_Information_Monitor_Menu}

Click Management Work
    Mouse Over    ${G_Management_Work}
    Click Element    ${G_Management_Work}

Click Equipment Management
    Mouse Over    ${G_Equipment_Management}
    Click Element    ${G_Equipment_Management}

Click Dial Service
    #左邊Menu的外撥服務
    Mouse Over    ${G_Dial_Service}
    Click Element    ${G_Dial_Service}

Click System Management
    #左邊Menu的系統管理
    Mouse Over    ${G_System_Management}
    Click Element    ${G_System_Management}

Click Factory Check
    #左邊Menu的廠區看診
    Mouse Over    ${G_Factory_Check}
    Click Element    ${G_Factory_Check}

Click Activity Management
    #左邊Menu的活動管理
    Mouse Over    ${G_Activity_Management}
    Click Element    ${G_Activity_Management}
