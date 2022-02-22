<!---
Building a spreadsheet that looks like:

+-----+-----+-----+
| FOO | BAR | BAZ |
+-----+-----+-----+
| 101 | 102 | 103 |
+-----+-----+-----+
| 201 | 202 | 203 |
+-----+-----+-----+

--->


<!--- Create a new spreadsheet. --->
<cfset objSpreadsheet = SpreadsheetNew()>

<!--- Create and format the header row. --->
<cfset SpreadsheetAddRow( objSpreadsheet, "FOO,BAR,BAZ" )>
<cfset SpreadsheetFormatRow( objSpreadsheet, {bold=TRUE, alignment="center"}, 1 )>

<!--- Populate the spreadsheet. --->
<!--- In a real situation, this would be looped programmatically; it is done cell-by-cell here for readability. --->
<cfset SpreadsheetSetCellValue( objSpreadsheet, 101, 2, 1, "NUMERIC" ) >
<cfset SpreadsheetSetCellValue( objSpreadsheet, 102, 2, 2, "NUMERIC" ) >
<cfset SpreadsheetSetCellValue( objSpreadsheet, 103, 2, 3, "NUMERIC" ) >
<cfset SpreadsheetSetCellValue( objSpreadsheet, 201, 3, 1, "NUMERIC" ) >
<cfset SpreadsheetSetCellValue( objSpreadsheet, 202, 3, 2, "NUMERIC" ) >
<cfset SpreadsheetSetCellValue( objSpreadsheet, 203, 3, 3, "NUMERIC" ) >

<cfheader name="Content-Disposition" value="attachment; filename=MySpreadsheet.xls"> 
<cfcontent type="application/vnd.ms-excel" variable="#SpreadsheetReadBinary( objSpreadsheet )#">  