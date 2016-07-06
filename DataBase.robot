*** Variables ***
${DBModuleName}    pymssql
${DBName}         HRB_DEV
${DBUser}         hrb_sit
${DBPassword}     1qaz2wsx
${DBHost}         10.32.86.132
${DBPort}         443

*** Keywords ***
Connect Database
    Connect To Database    ${DBModuleName}    ${DBName}    ${DBUser}    ${DBPassword}    ${DBHost}    ${DBPort}
