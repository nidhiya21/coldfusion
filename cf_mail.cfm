<head>
    <title>Sending a simple e-mail</title>
    </head>
    <body>
    <h1>Sample e-mail</h1>  
    <cfmail to="nidhiya21@gmail.com" from="rincekthoms@gmail.com" subject="Example email"> 
    <cfmailparam file = "c:\web\myDoc.pdf" > 
    This is a sample e-mail message to show basic e-mail capabilitys.
    
    </cfmail>
    The e-mail was sent.
    
    </body>
    </html>  