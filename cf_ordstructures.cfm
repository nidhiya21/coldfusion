<cfscript>
departments = structNew("Ordered");
departments.John = "Sales";
departments.Tom = "Finance";
departments.Mike = "Education";
departments.Andrew = "Marketing";

writeOutput("<table cellpadding=""2"" cellspacing=""2"">
<tr>
<td><b>Employee</b></td>
<td><b>Department</b></td>
</tr>");
for ( person in departments ) {

writeOutput("<tr>
<td>#person#</td>
<td>#departments[person]#</td>
</tr>");
}

writeOutput("</table>");
</cfscript>