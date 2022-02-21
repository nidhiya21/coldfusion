<cfset request.dsn = "people_data">
<cfset name="">
<cfset phone="">

<cfif IsDefined("url.id") and IsNumeric(url.id)> 
    <cfquery name="u" datasource="#request.dsn#">
    select * from people_details  where p_id=<cfqueryparam cfsqltype="cf_sql_bigint" value="#url.id#">
<!---      no quotes in where --->
    </cfquery> 
<!---      no quotes --->
    <cfset name=u.name>
    <cfset phone=u.phone>
<cfelseif IsDefined("url.did") and IsNumeric(url.did)>
    <cfquery name="del" datasource="#request.dsn#">
    delete from people_details  where p_id=<cfqueryparam cfsqltype="cf_sql_bigint" value="#url.did#">
    </cfquery>


</cfif>

<form name="form1" method="post" action="<cfoutput>#cgi.script_name# </cfoutput>">
    <table>
        <tr>
            <th>Name</th>
            <td><input type="text" name="name"  value="<cfoutput>#name# </cfoutput>"></td>
            
        </tr>
        <tr>
            <th>Phone</th>
            <td><input type="text" name="phone"  value="<cfoutput>#phone# </cfoutput>"></td>
        </tr>
    </table>
    <input type="submit" value="sumbit" name="Submit">
    <cfif IsDefined("url.id") and IsNumeric(url.id)>
    <input type ="hidden" name="id" value ="<cfoutput>#url.id#</cfoutput>">
    </cfif>
</form>
<cfif IsDefined("form.id")>
    <cfquery datasource="#request.dsn#" name="upqry">
    update people_details
    set name=  <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.name#">,
         phone=<cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.phone#">
           where p_id=<cfqueryparam cfsqltype="cf_sql_bigint" value="#form.id#">

    </cfquery>  
<cfelseif IsDefined("form.name")  and  IsDefined("form.phone")>
    <cfquery  datasource="#request.dsn#"  name="addPeople">
    insert into people_details(name,phone)
    values(
        <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.name#">,
        <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.phone#">

    )
    </cfquery> 

</cfif>
<cfquery  name="q" datasource="#request.dsn#" >
    select* from people_details;
</cfquery>
<cftable query="q" colheaders="true">
    <cfcol   header="name" text="#name#">
    <cfcol   header="phone" text="#phone#">
    <cfcol   header="actions" text="<a href='#cgi.script_name#?id=#p_id#'> edit</a>"> 
    <cfcol   header=""  text="<a href='#cgi.script_name#?did=#p_id#'>del</a>">
</cftable>
