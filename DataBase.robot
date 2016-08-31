*** Variables ***
${DBModuleName}    pymssql
${DBName}         CRM_Jenkins
${DBUser}         autotester
${DBPassword}     autotester
${DBHost}         192.168.2.11
${DBPort}         1433
${Charset}        utf8

*** Keywords ***
Connect Database
    Connect To Database Using Custom Params    ${DBModuleName}    database='${DBName}', user='${DBUser}', password='${DBPassword}', host='${DBHost}', port=${DBPort}, charset='${Charset}'
