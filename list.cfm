<cfset coldfusion_list = "ColdFusion Lists,ColdFusion Arrays,ColdFusion Structures">
<cfset coldfusion_listAPPEND  =listAppend(coldfusion_list, "ColdFusion Functions",",")>
<cfloop list="#coldfusion_listAPPEND#" index="i">
    <cfoutput> #i#</cfoutput>
</cfloop>
<cfoutput> #listLen(coldfusion_listAPPEND)#</cfoutput><br>


<cfscript>
    myList="John,Paul,George,Ringo";
    myListAppended=ListAppend(myList,"George Martin"); // Delimiter is comma
    WriteOutput(myListAppended);
</cfscript>

<cfscript> //prepend
    myList ="apple,orange,grape";
    myPreList = ListPrepend(myList,"mango");
    WriteOutput(myPreList); 

</cfscript>


<cfscript>
    myList ="apple,orange,grape";
    myArrList = ListToArray(myList,",",false,true)
    WriteDump(myArrList); 

</cfscript>


<cfscript>
    myList="ten;twenty;thirty;fort;fifty;sixty;;seventy;;;eighty"; // list contains empty elements
    myArray=listToArray(myList,";",false,true); 
    WriteDump(myArray);
</cfscript>


<cfscript>
    myList = "doctor,engineer,teacher";
    //check elemt in list
    WriteOutput(listContains(myList, "doctor") & "<br>"); 
    WriteOutput(listContains(myList, "ColdFusion"));
    WriteOutput(listContains(myList, "doctor") & "<br>"); 
    //get an elemnt
    WriteOutput(listGetAt(myList,2));

</cfscript>


<cfscript>
    // case 1
    myList1="12,23,107,19,1,65"
    sortedNums=ListSort(myList1,"Numeric","asc",",")
    writeOutput(sortedNums & "<br/>");
    // case 2
    myList2="23.75;-34,471:100,-9745"
    sortedNums2=ListSort(myList2,"Numeric","asc",";:,")
    writeOutput(sortedNums2 & "<br/>") ;
    // case 3
    myList3="hello;123,HELLO:jeans,-345,887;ColdFusion:coldfusion"
    sortedMix=ListSort(myList3,"TextNoCase","asc",";,:")
    writeOutput(sortedMix);
</cfscript>

<cfscript> 
    listToSort = "d,C,b,A" 
    sortedList = listToSort.listSort(compareNoCase) 
    writeDump(sortedList); 
</cfscript>        