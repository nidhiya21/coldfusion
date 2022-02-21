<html> 
    <head> 
    <title>QoQ with incremental row return</title> 
    </head> 
    <body>  
    <h3>QoQ with incremental row return</h3> 
    <cfparam name = "MaxRows" default = "5"> 
    <cfparam name = "StartRow" default = "1"> 
    <cfquery name = "GetSals" datasource = "testing1"> 
    SELECT * FROM employees 
    ORDER BY emp_id 
    </cfquery> 
    <cfquery name = "GetSals2" datasource = "testing1" > 
    SELECT emp_name, JOB_NAME, SALARY 
    FROM employees 
    ORDER BY emp_id 
    </cfquery> 
      <table cellpadding = 1 cellspacing = 1> 
        <tr> 
        <td bgcolor = f0f0f0> 
        <b><i>&nbsp;</i></b> 
        </td> 
        <td bgcolor = f0f0f0> 
        <b><i>FirstName</i></b> 
        </td> 
        <td bgcolor = f0f0f0> 
        <b><i>LastName</i></b> 
        </td> 
        <td bgcolor = f0f0f0> 
        <b><i>Salary</i></b> 
        </td> 
        </tr>  
        <cfoutput query = "GetSals2" startrow = "#StartRow#" maxrows = "#MaxRows#"> 
        <tr> 
        <td valign = top bgcolor = ffffed> 
        <b>#GetSals2.currentRow#</b> 
        </td> 
        <td valign = top> 
        <font size = "-1">#emp_name#</font> 
        </td> 
        <td valign = top> 
        <font size = "-1">#JOB_NAME#</font> 
        </td> 
        <td valign = top> 
        <font size = "-1">#LSCurrencyFormat(SALARY)#</font> 
        </td> 
        </tr> 
        </cfoutput> 
       
        </table> 

    </body> 
    </html>