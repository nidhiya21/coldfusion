<head>
    <title>Sending a simple e-mail</title>
    </head>
    <body>
    <cfset URL.email="nidhiya21@gmail.com">
    <h1>Sample e-mail</h1>
    <cfmail
    from="nidhiya.a@techversantinfo.com"
    to="nidhiya21@gmail.com"
    subject="Sample e-mail from ColdFusion">
    
    This is a sample e-mail message to show basic e-mail capability.
    
    </cfmail>
    The e-mail was sent.
    
    </body>
    </html>  