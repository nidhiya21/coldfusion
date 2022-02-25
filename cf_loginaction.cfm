<cfif NOT IsDefined ('form.username')>
<cflocation url="cf_login.cfm" addtoken="No">
</cfif>

<cfquery name="gilwayb" datasource="upload">
SELECT *
FROM passwd
WHERE USERNAME = '#FORM.username#'
AND PASSWORD = '#FORM.password#'
</cfquery>

<CFSET Session.LoggedIn = "1">
<CFSET Session.FirstName = "#gilwayb.FirstName#">  
<CFIF gilwayb.RecordCount IS 0>
<cflocation url="cf_login.cfm" addtoken="No">
<CFSET StructClear(Session)>
<cfelse>
<CFSET Session.LoggedIn = "1">
<cflocation url="cf_welcome.cfm" addtoken="No">
</cfif>