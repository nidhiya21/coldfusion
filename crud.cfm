


<CFQUERY NAME="GetEmployeeInfo" DATASOURCE="testing1">
    SELECT emp_name, emp_id, JOB_NAME, GENDER, HIRE_DATE, SALARY
    FROM  employees
</CFQUERY>

<HTML>
<HEAD>
<TITLE>Outputting Query Results</TITLE>

</HEAD>

<BODY>

<H2>Employee Records</H2>
<CFOUTPUT><h1>#GetEmployeeInfo.RecordCount#</h1></CFOUTPUT>


<TABLE CELLPADDING="3" CELLSPACING="0"> 
<TR BGCOLOR="#888888">
<TH>EMP_NAME</TH>
<TH>EMP_ID</TH>
<TH>job_name</TH>
<TH>gender</TH>
<TH>hire_date</TH>
<TH>salary</TH>
</TR>
 
<CFOUTPUT QUERY="GetEmployeeInfo">
<TR BGCOLOR="##C0C0C0">
<TD>#emp_name#</TD>
<TD>#emp_id#</TD>
<TD>#job_name#</TD>
<TD>#gender#</TD>
<TD><A HREF="Mailto:#hire_date#">#hire_date#</A></TD>
<TD>#salary#</TD>
</TR>    
</CFOUTPUT>
</TABLE>

</BODY>
</HTML>