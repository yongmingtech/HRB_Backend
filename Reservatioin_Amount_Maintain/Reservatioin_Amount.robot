*** Settings ***
Documentation     預約量維護
...
...               test case 1: check page, verify all show text at this page.
Suite Setup       Reservation_Amount_page
Resource          ../DataBase.robot
Resource          ../Login.robot

*** Variables ***
${Reservation_amount_page1}    html/body/div[3]/div[1]/div/div/div[3]/div/a    # 健檢管理
${Reservation_amount_page2}    html/body/div[8]/div/div[2]/div[2]/div[3]/a/span    # 預約量維護
${Tab_Reservation_amount_XPATH}    //div[2]/div/div/div/a/span    # 預約量維護
${Head_Reservation_amount_Inquire_XPATH}    //div/div/div/span    # 預約量查詢
${Head_Reservation_amount_helper_XPATH}    //div[4]/div/div/div/div/div/span    # 設定小幫手
${Head_Reservation_amount_monthly_XPATH}    //div[2]/div/div/div/div/div/span    # 整月設定
${Head_Reservation_amount_calendar_XPATH}    //div[3]/div/div/div/div/div/span    # 預約量
${Reservation_amount_Inquire_hospital_XPATH}    //label    # *醫療機構:
${Reservation_amount_Inquire_prog_name_XPATH}    //td[2]/table/tbody/tr/td/label    # *健檢方案:
${Reservation_amount_Inquire_btn_summary_XPATH}    html/body/div[5]/div[2]/div/div/div[1]/div[3]/div/div/div[1]/div/a/span[1]    # 總量設定
${Reservation_amount_Inquire_btn_inquire_XPATH}    //div[2]/div/a/span    # 查詢
${Reservation_amount_Inquire_clear_XPATH}    //div[3]/div/div/div[3]/div/a/span    # 重填
${Reservation_amount_helper_HC_package_XPATH}    //div[2]/div/div/div/div/div/div/span    # 健檢套餐
${Reservation_amount_helper_btn_data_XPATH}    //div[2]/div/div[3]/div/div/div/div/a/span    # 填入勾選日期
${Reservation_amount_monthly_Sun_XPATH}    //td[2]/label    # 星期日
${Reservation_amount_monthly_Mon_XPATH}    //table[2]/tbody/tr/td[2]/label    # 星期一
${Reservation_amount_monthly_Tue_XPATH}    //table[3]/tbody/tr/td[2]/label    # 星期二
${Reservation_amount_monthly_Wes_XPATH}    //table[4]/tbody/tr/td[2]/label    # 星期三
${Reservation_amount_monthly_Thu_XPATH}    //table[5]/tbody/tr/td[2]/label    # 星期四
${Reservation_amount_monthly_Fri_XPATH}    //table[6]/tbody/tr/td[2]/label    # 星期五
${Reservation_amount_monthly_Sat_XPATH}    //table[7]/tbody/tr/td[2]/label    # 星期六
${Reservation_amount_monthly_null_XPATH}    //div[2]/div[3]/div/div/div/div/a/span    # 填入空白
${Reservation_amount_monthly_cover_XPATH}    //div[2]/div[3]/div/div/div[2]/div/a/span    # 強制覆蓋
${Reservation_amount_calendar_month_XPATH}    //div[2]/div/div/div[3]/div/a/span    # 2016/09
${Reservation_amount_calendar_Sun_XPATH}    //th    # Sun
${Reservation_amount_calendar_Mon_XPATH}    //th[2]    # Mon
${Reservation_amount_calendar_Tue_XPATH}    //th[3]    # Tue
${Reservation_amount_calendar_Wes_XPATH}    //th[4]    # Wed
${Reservation_amount_calendar_Thu_XPATH}    //th[5]    # Thu
${Reservation_amount_calendar_Fri_XPATH}    //th[6]    # Fri
${Reservation_amount_calendar_Sat_XPATH}    //th[7]    # Sat
${Reservation_amount_calendar_btn_save_XPATH}    //div[4]/div/div/div/div/a/span    # 儲存

*** Test Cases ***
check page
    ${Verify_Tab_Reservation_amount_XPATH}    Convert To String    預約量維護
    ${Verify_Head_Reservation_amount_Inquire_XPATH}    Convert To String    預約量查詢
    ${Verify_Head_Reservation_amount_helper_XPATH}    Convert To String    設定小幫手
    ${Verify_Head_Reservation_amount_monthly_XPATH}    Convert To String    整月設定
    ${Verify_Head_Reservation_amount_calendar_XPATH}    Convert To String    預約量
    ${Verify_Reservation_amount_Inquire_hospital_XPATH}    Convert To String    *醫療機構:
    ${Verify_Reservation_amount_Inquire_prog_name_XPATH}    Convert To String    *健檢方案:
    ${Verify_Reservation_amount_Inquire_btn_summary_XPATH}    Convert To String    總量設定
    ${Verify_Reservation_amount_Inquire_btn_inquire_XPATH}    Convert To String    查詢
    ${Verify_Reservation_amount_Inquire_clear_XPATH}    Convert To String    重填
    ${Verify_Reservation_amount_helper_HC_package_XPATH}    Convert To String    健檢套餐
    ${Verify_Reservation_amount_helper_btn_data_XPATH}    Convert To String    填入勾選日期
    ${Verify_Reservation_amount_monthly_Sun_XPATH}    Convert To String    星期日
    ${Verify_Reservation_amount_monthly_Mon_XPATH}    Convert To String    星期一
    ${Verify_Reservation_amount_monthly_Tue_XPATH}    Convert To String    星期二
    ${Verify_Reservation_amount_monthly_Wes_XPATH}    Convert To String    星期三
    ${Verify_Reservation_amount_monthly_Thu_XPATH}    Convert To String    星期四
    ${Verify_Reservation_amount_monthly_Fri_XPATH}    Convert To String    星期五
    ${Verify_Reservation_amount_monthly_Sat_XPATH}    Convert To String    星期六
    ${Verify_Reservation_amount_monthly_null_XPATH}    Convert To String    填入空白
    ${Verify_Reservation_amount_monthly_cover_XPATH}    Convert To String    強制覆蓋
    ${Verify_Reservation_amount_calendar_month_XPATH}    Convert To String    2016/09
    ${Verify_Reservation_amount_calendar_Sun_XPATH}    Convert To String    Sun
    ${Verify_Reservation_amount_calendar_Mon_XPATH}    Convert To String    Mon
    ${Verify_Reservation_amount_calendar_Tue_XPATH}    Convert To String    Tue
    ${Verify_Reservation_amount_calendar_Wes_XPATH}    Convert To String    Wed
    ${Verify_Reservation_amount_calendar_Thu_XPATH}    Convert To String    Thu
    ${Verify_Reservation_amount_calendar_Fri_XPATH}    Convert To String    Fri
    ${Verify_Reservation_amount_calendar_Sat_XPATH}    Convert To String    Sat
    ${Verify_Reservation_amount_calendar_btn_save_XPATH}    Convert To String    儲存
    ${Get_Tab_Reservation_amount_XPATH}    Get Text    xpath=${Tab_Reservation_amount_XPATH}
    ${Get_Head_Reservation_amount_Inquire_XPATH}    Get Text    xpath=${Head_Reservation_amount_Inquire_XPATH}
    ${Get_Head_Reservation_amount_helper_XPATH}    Get Text    xpath=${Head_Reservation_amount_helper_XPATH}
    ${Get_Head_Reservation_amount_monthly_XPATH}    Get Text    xpath=${Head_Reservation_amount_monthly_XPATH}
    ${Get_Head_Reservation_amount_calendar_XPATH}    Get Text    xpath=${Head_Reservation_amount_calendar_XPATH}
    ${Get_Reservation_amount_Inquire_hospital_XPATH}    Get Text    xpath=${Reservation_amount_Inquire_hospital_XPATH}
    ${Get_Reservation_amount_Inquire_prog_name_XPATH}    Get Text    xpath=${Reservation_amount_Inquire_prog_name_XPATH}
    ${Get_Reservation_amount_Inquire_btn_summary_XPATH}    Get Text    xpath=${Reservation_amount_Inquire_btn_summary_XPATH}
    ${Get_Reservation_amount_Inquire_btn_inquire_XPATH}    Get Text    xpath=${Reservation_amount_Inquire_btn_inquire_XPATH}
    ${Get_Reservation_amount_Inquire_clear_XPATH}    Get Text    xpath=${Reservation_amount_Inquire_clear_XPATH}
    ${Get_Reservation_amount_helper_HC_package_XPATH}    Get Text    xpath=${Reservation_amount_helper_HC_package_XPATH}
    ${Get_Reservation_amount_helper_btn_data_XPATH}    Get Text    xpath=${Reservation_amount_helper_btn_data_XPATH}
    ${Get_Reservation_amount_monthly_Sun_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Sun_XPATH}
    ${Get_Reservation_amount_monthly_Mon_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Mon_XPATH}
    ${Get_Reservation_amount_monthly_Tue_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Tue_XPATH}
    ${Get_Reservation_amount_monthly_Wes_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Wes_XPATH}
    ${Get_Reservation_amount_monthly_Thu_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Thu_XPATH}
    ${Get_Reservation_amount_monthly_Fri_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Fri_XPATH}
    ${Get_Reservation_amount_monthly_Sat_XPATH}    Get Text    xpath=${Reservation_amount_monthly_Sat_XPATH}
    ${Get_Reservation_amount_monthly_null_XPATH}    Get Text    xpath=${Reservation_amount_monthly_null_XPATH}
    ${Get_Reservation_amount_monthly_cover_XPATH}    Get Text    xpath=${Reservation_amount_monthly_cover_XPATH}
    ${Get_Reservation_amount_calendar_month_XPATH}    Get Text    xpath=${Reservation_amount_calendar_month_XPATH}
    ${Get_Reservation_amount_calendar_Sun_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Sun_XPATH}
    ${Get_Reservation_amount_calendar_Mon_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Mon_XPATH}
    ${Get_Reservation_amount_calendar_Tue_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Tue_XPATH}
    ${Get_Reservation_amount_calendar_Wes_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Wes_XPATH}
    ${Get_Reservation_amount_calendar_Thu_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Thu_XPATH}
    ${Get_Reservation_amount_calendar_Fri_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Fri_XPATH}
    ${Get_Reservation_amount_calendar_Sat_XPATH}    Get Text    xpath=${Reservation_amount_calendar_Sat_XPATH}
    ${Get_Reservation_amount_calendar_btn_save_XPATH}    Get Text    xpath=${Reservation_amount_calendar_btn_save_XPATH}
    Should Be Equal    ${Verify_Tab_Reservation_amount_XPATH}    ${Get_Tab_Reservation_amount_XPATH}
    Should Be Equal    ${Verify_Head_Reservation_amount_Inquire_XPATH}    ${Get_Head_Reservation_amount_Inquire_XPATH}
    Should Be Equal    ${Verify_Head_Reservation_amount_helper_XPATH}    ${Get_Head_Reservation_amount_helper_XPATH}
    Should Be Equal    ${Verify_Head_Reservation_amount_monthly_XPATH}    ${Get_Head_Reservation_amount_monthly_XPATH}
    Should Be Equal    ${Verify_Head_Reservation_amount_calendar_XPATH}    ${Get_Head_Reservation_amount_calendar_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_Inquire_hospital_XPATH}    ${Get_Reservation_amount_Inquire_hospital_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_Inquire_prog_name_XPATH}    ${Get_Reservation_amount_Inquire_prog_name_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_Inquire_btn_summary_XPATH}    ${Get_Reservation_amount_Inquire_btn_summary_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_Inquire_btn_inquire_XPATH}    ${Get_Reservation_amount_Inquire_btn_inquire_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_Inquire_clear_XPATH}    ${Get_Reservation_amount_Inquire_clear_XPATH}
    #Should Be Equal    ${Verify_Reservation_amount_helper_HC_package_XPATH}    ${Get_Reservation_amount_helper_HC_package_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_helper_btn_data_XPATH}    ${Get_Reservation_amount_helper_btn_data_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Sun_XPATH}    ${Get_Reservation_amount_monthly_Sun_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Mon_XPATH}    ${Get_Reservation_amount_monthly_Mon_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Tue_XPATH}    ${Get_Reservation_amount_monthly_Tue_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Wes_XPATH}    ${Get_Reservation_amount_monthly_Wes_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Thu_XPATH}    ${Get_Reservation_amount_monthly_Thu_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Fri_XPATH}    ${Get_Reservation_amount_monthly_Fri_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_Sat_XPATH}    ${Get_Reservation_amount_monthly_Sat_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_null_XPATH}    ${Get_Reservation_amount_monthly_null_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_monthly_cover_XPATH}    ${Get_Reservation_amount_monthly_cover_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_month_XPATH}    ${Get_Reservation_amount_calendar_month_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Sun_XPATH}    ${Get_Reservation_amount_calendar_Sun_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Mon_XPATH}    ${Get_Reservation_amount_calendar_Mon_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Tue_XPATH}    ${Get_Reservation_amount_calendar_Tue_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Wes_XPATH}    ${Get_Reservation_amount_calendar_Wes_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Thu_XPATH}    ${Get_Reservation_amount_calendar_Thu_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Fri_XPATH}    ${Get_Reservation_amount_calendar_Fri_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_Sat_XPATH}    ${Get_Reservation_amount_calendar_Sat_XPATH}
    Should Be Equal    ${Verify_Reservation_amount_calendar_btn_save_XPATH}    ${Get_Reservation_amount_calendar_btn_save_XPATH}
    [Teardown]    close browser

*** Keywords ***
Reservation_Amount_page
    Open Broser and Login automatically
    Wait Until Element Is Visible    xpath=${Reservation_amount_page1}    ${G_Wait_For_Element_Timeout}
    Mouse Over    xpath=${Reservation_amount_page1}
    Click Element    xpath=${Reservation_amount_page1}
    Wait Until Element Is Visible    xpath=${Reservation_amount_page2}    ${G_Wait_For_Element_Timeout}
    Click Element    xpath=${Reservation_amount_page2}
    Sleep    1
