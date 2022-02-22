<cfset mydatasource = "csvdata">
<cfquery name="daily" datasource="#mydatasource#"  >
   SELECT *
   FROM customers
   Where company <> ''
    </cfquery>
   <Cfset thisPath = ExpandPath("*.*")>
   <cfset f_dir = GetDirectoryFromPath(thisPath)>
   <cfset f_name = "#dateformat(now(), 'mmddyy')##timeformat(now(), 'hhmm')#.doc">
   <cffile action="WRITE" file="#f_dir##f_name#"
   output="Company,  Sales Person,  Contact Phone, Contact Email" addnewline="Yes">
 
   <cfloop query="daily">
   <cffile action="APPEND" file="#f_dir##f_name#"
   output="#REPLACE(company, ",", "","AlL")#, #firstname# #lastname#, #contactphone#, #contactsemail#"
   addnewline="Yes">
   </cfloop>
   <br>
   <cfset theLink = "/cf_demo/" & f_name>

<cfoutput>
   <a href="#theLink#">Here is the file</a>
</cfoutput>