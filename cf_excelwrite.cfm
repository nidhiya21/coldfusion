<cfscript>
result = [ ["First Name", "Last Name", "Address"]   
, ["John", "Doe", "123 Anywhere Ave"]    
, ["Mary", "Smith", "456 Somewhere Street"]  
, ["Charles", "Doe", "789 Anywhere Court"]   
];

xlsx = SpreadSheetNew("The Results", true);
SpreadSheetAddRows( xlsx, result ); 
SpreadSheetWrite( xlsx, "C:/web/test.xlsx", true );  
</cfscript>

