*** Variables ***
${DBModuleName}    pymssql
${DBName}         HRB_DEV
${DBUser}         hrb_sit
${DBPassword}     1qaz2wsx
${DBHost}         10.32.86.132
${DBPort}         443
${Charset}        utf8

*** Keywords ***
Connect Database
    Connect To Database Using Custom Params    ${DBModuleName}    database='${DBName}', user='${DBUser}', password='${DBPassword}', host='${DBHost}', port=${DBPort}, charset='${Charset}'
