<cfloop from=1 to=10 index=i step=2>
    <cfoutput>
        #i#<br>
    </cfoutput>

</cfloop>


<cfset myVar=false>
<cfloop condition="myVar eq false">
  <cfoutput>
  myVar = #myVar#  (still in loop)
 </cfoutput>
  <cfif RandRange(1,10) eq 10>
    <cfset myVar="true">
  </cfif>
</cfloop>
<cfoutput>
myVar = #myVar# (loop has finished)<br>
</cfoutput>


<!--- structured loop --->
<cfset myBooks = StructNew()>
<cfset myVariable = StructInsert(myBooks,"ColdFusion","ColdFusion MX Bible")>
<cfset myVariable = StructInsert(myBooks,"HTML","HTML Visual QuickStart")>
<cfset myVariable = StructInsert(myBooks,"XML","Inside XML")>
<cfloop collection="#myBooks#" item="subject">
  <cfoutput>
 #subject#: #StructFind(myBooks,subject)#<br />
 </cfoutput>
</cfloop>

