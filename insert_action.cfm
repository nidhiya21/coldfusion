<html> 
    <head> 
    <title>Input form</title> 
    </head> 
    <body> 

<cfquery name="AddEmployee" datasource="company_insert"> 
    INSERT INTO company_details 
    (Emp_ID,FirstName,LastName, 
    Dept_ID) 
    VALUES 
    (#Form.Emp_ID#,'#Form.FirstName#','#Form.LastName#', 
    #Form.Dept_ID#) 
    </cfquery>

    <h1>Employee Added</h1> 
    <cfoutput>You have added #Form.FirstName# #Form.Lastname# to the employee database. 
    </cfoutput> 
    </body> 
    </html>