<cfscript>
    myCities=["London", "New York", "Paris", "Barcelona", "Berlin", "Tokyo", "Seattle"];
    // for loop
    for (i=1;i<=ArrayLen(myCities);i++){
        writeOutput("The city is:" & myCities[i] & "<br/>")
    }
</cfscript>


<!--- filter --->
<cfscript>
    myArray=[1,2,3,4,5,6,7,8,9]
    evenArray=ArrayFilter(myArray,function(item){
        return (item mod 2==0)
    })
    writeOutput("The array of even numbers is:")
    writeDump(evenArray)
</cfscript>