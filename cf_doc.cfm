
<cfsavecontent variable="whatever">
<cfcontent type="application/msword">
<cfoutput>#WordDoc#</cfoutput>
</cfsavecontent>
<cffile action="write"
file="#application.AbsPath#\media\quotes\Quote_#arguments.QuoteNumber#_#arguments.Revision#.doc"
output="#whatever#" /> 