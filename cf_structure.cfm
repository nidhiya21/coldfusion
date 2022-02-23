<cfscript>
myStruct=StructNew();
myStruct.key1="A new structure with a new key";
WriteDump(myStruct);
myStruct.key2="Now I've added a second key";
WriteDump(myStruct);
</cfscript>
<!--- is struc --->
<cfoutput>
#isStruct( structNew() )#
</cfoutput>

<!--- append --->
<cfscript>
config = {a:0, b:0};
options= {b:1, c:1};
structAppend(config, options, false);
writeOutput( serializeJSON( config ) );
</cfscript>

<!--- append with overwrite--->
<cfscript>
config = {a:0, b:0};
options= {b:1, c:1};
structAppend(config, options);
writeOutput( serializeJSON( config ) );
</cfscript>
<!--- clear --->
<cfset profile = {name:'John', instrument:'guitar', occupation:'singer'} />
<cfset structClear(profile) />
<cfdump var="#profile#" />

<cfscript>
myStruct=StructNew();
myStruct.item1="JPG";
myStruct.item2="BMP";
myStruct.item3="PNG";
WriteOutput("The input struct is:");
WriteDump(myStruct);
myAnotherStruct=StructNew();
myAnotherStruct=StructCopy(myStruct);
WriteOutput("The copied struct is:");
WriteDump(myAnotherStruct);
StructClear(myAnotherStruct);
WriteOutput("The deleted struct is:");
WriteDump(myAnotherStruct);
</cfscript>


<!--- count --->
<cfscript>
myStruct={a:1,b:2,c:3,d:4,e:5}; 
myCount=StructCount(myStruct); 
WriteOutput(#myCount#); 
</cfscript>

<!--- delete --->
<cfscript>
someStruct = {a=1,b=2};
structDelete(someStruct, "a");
writeDump(someStruct);
</cfscript>

<!--- struct each --->
<cfscript>
someStruct = {a=1,b=2,c=3};
structEach(someStruct,function(key,value) {
writeOutput('Key ' & key & ' is ' & value & ';<br /> ');
});
</cfscript>
<cfscript>
statusCodes = {
OK = 200,
CREATED = 201,
NOT_MODIFIED = 304,
BAD_REQUEST = 400,
NOT_FOUND = 404
};

statusCodes.each(function(key, value) {
writeOutput("#key# => #value#<br />");
});
</cfscript>

<!--- key list --->
<cfscript>
myStruct=StructNew();
myStruct = {a:1,b=2,c=3,d=4,e=5};
myKeyList=StructKeyList(myStruct);
</cfscript>

<cfscript>
myStruct=StructNew();
myStruct.key1="Bugatti";
myStruct.key2="Lamborghini";
myStruct.key3="Maserati";
WriteOutput("The input struct is:");
WriteDump(myStruct);
WriteOutput("struct has " & StructCount(myStruct) & " keys: " & StructKeyList(myStruct) & "");
</cfscript>
<!--- copy stucture --->

<cfscript>
myStruct=StructNew();
myStruct.key1="Bugatti";
myStruct.key2="Lamborghini";
myStruct.key3="Maserati";
myStruct.key4="Ferrari";
myStruct.key5="Aprilia";
myStruct.key5="Ducati";
WriteOutput("The input struct is:");
WriteDump(myStruct);
WriteOutput("struct has " & StructCount(myStruct) & " keys: " & StructKeyList(myStruct) & "");
</cfscript>

<!--- sort --->
<cfscript>
myStruct=StructNew();
myStruct.name1="Jeb";
myStruct.name2="Bernie";
myStruct.name3="Hillary";
myStruct.name4="Donald";
for ( i in StructSort(myStruct) ) {
cfoutput(  ) {

    writeOutput("#myStruct[i]#");
}
}
</cfscript>
<!--- merge --->
<cfscript> 
    obj1 ={ foo: 'bar', x: 42 }; 
    obj2 ={ foo: 'baz', y: 13 }; 
      
    mergedObj = {...obj1, ...obj2, "key1":"23"}; 
    writeDump(mergedObj); 
</cfscript>


