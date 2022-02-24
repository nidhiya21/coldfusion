
<cfform action="#cgi.script_name#" enctype="multipart/form-data"> 
              <cfinput type="file" name="attachment1"> 
             
              <cfinput type="submit" name=" submit" value="submit"> 
</cfform>
<cfif isdefined("form.submit")> 
              <cffile  
                           action="upload" 
                           destination="C:\web\upload"
                           nameconflict="MakeUnique" 
                           accept="image/png,image/gif,.png,.gif"                
                           strict="true"
                           result="fileUploaded" 
                           allowedextensions=".png,.gif,.cfm" 
              >
              
</cfif>