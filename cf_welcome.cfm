<CFIF NOT IsDefined("Session.loggedIn")>
<CFSET StructClear(Session)>
<CFLOCATION URL="/cf_login.cfm">
</CFIF>

<H1><CENTER>WELCOME <cfoutput>#session.FIRSTNAME#</cfoutput> !</H1></CENTER>
