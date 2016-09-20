*** Settings ***
Library           DateTime

*** Variables ***

*** Keywords ***
year_start
    ${Get_Year}    Get Current Date    result_format=%Y
    ${ap_Start_date}    Set Variable    ${Get_Year}/01/01
    [Return]    ${ap_Start_date}

year_end
    ${Get_Year}    Get Current Date    result_format=%Y
    ${ap_End_date}    Set Variable    ${Get_Year}/12/31
    [Return]    ${ap_End_date}

year_range
    ${Get_Year}    Get Current Date    result_format=%Y
    ${ap_Start_date}    Set Variable    ${Get_Year}/01/01
    ${ap_End_date}    Set Variable    ${Get_Year}/12/31
    [Return]    ${ap_Start_date}    ${ap_End_date}
