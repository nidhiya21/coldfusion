<cfscript>
myQues="what's your name?";
myAge=19;
halfAge=19/2;
roundAge=round(halfAge);
</cfscript>
<cfoutput>
<strong>#myQues#</strong>
<strong>Nidhiya Abraham</strong><br>
<strong>Age</strong>
#myAge#<br>
<strong>Half Age</strong>
#halfAge#<br>
<strong>Round</strong>
#roundAge#<br>
</cfoutput>

<cfset firstName ="Nidhiya">
<cfif firstName eq "Nidhiya">
<cfoutput>
i am #firstName#
</cfoutput>
<cfelse>
i am not #firstName#
</cfif>


<cfif IsDefined("firstName")>
  Hello #firstname#! 
<cfelse>
  Hello stranger!
</cfif>

