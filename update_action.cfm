<html> 
    <head> 
        <title>Update Employee</title> 
    </head> 
    <body>  
     
        <cfquery name="company_insert" datasource="employee_records"> 
            UPDATE company_details
            SET FirstName = '#Form.Firstname#'
            WHERE `Emp_ID`= #Form.Emp_ID#
        </cfquery>   
   
     
    <h1>Employee Updated</h1> 
    <cfoutput> 
    You have updated the information for #Form.FirstName# #Form.LastName# in the employee 
        database. 
    </cfoutput> 
     
    </body> 