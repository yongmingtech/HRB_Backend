*** Variables ***
${Query_Basic_Hospital}    select hospital_name,addr,hospital_code,phone,email,nhi_code from Basic_Hospital where active_flag =1 and hospital_name like '%(TestData_%' order by create_date asc
${Delete_Basic_Hospital_TestData}    delete from Basic_Hospital where hospital_name in('(TestData_1)','(TestData_2)','(TestData_3)')
${Query_organization_Name_By_ASC}    select Top 2 hospital_name from Basic_Hospital where active_flag = 1 order by hospital_name
