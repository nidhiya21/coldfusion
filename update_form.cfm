<html> 
    <head> 
    <title>Update Form</title> 
    </head> 
     
    <body> 
    <cfquery name="GetRecordtoUpdate" datasource="employee_records"> 
      SELECT * FROM company_details
        WHERE Emp_ID = #URL.Emp_ID#     
    </cfquery>     
     

    <table> 
        
    <form action="update_action.cfm" method="Post"> 
        <input type="hidden" name="Emp_ID" value="#URL.Emp_ID#"><br>  
    <tr> 
        <td>First Name:</td>   
        <td><input type="text" name="FirstName" ></td> 
    </tr> 
    <tr> 
        <td>Last Name:</td> 
        <td><input type="text" name="LastName" ></td> 
    </tr> 
    <tr> 
        <td>Department Number:</td> 
        <td><input type="text" name="Dept_ID" ></td> 
    </tr> 
    <tr> 
        <td>Start Date:</td> 
        <td><input type="text" name="StartDate" ></td> 
    </tr> 
    <tr> 
        <td>Salary:</td> 
        <td><input type="text" name="Salary" ></td> 
    </tr> 

    <tr> 
        <td>&nbsp;</td> 
        <td><input type="Submit" value="Update Information"></td> 
    </tr> 
    </form> 
    </table> 
 
    </body> 
    </html>