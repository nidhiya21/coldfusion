<html>
    <head>
    <title>
    Password/Registration Request</title>
    
    </head>
    <CFINSERT DATASOURCE="upload" TABLENAME="passwd">
    
    <body bgcolor="#FFFFFF">
    <a href="index2.cfm"><FONT SIZE="5">BACK TO HOME PAGE</A></FONT><BR><BR>
    <CENTER>
    <H2>REGISTRATION RESULTS PAGE</H2><BR><BR>
    </CENTER>
    <b><font size=5>This is your Registration/Password Information.<br>
    Keep it in a safe place. An email will be coming to your address shortly.<br></b></font>
    <br><br>
    
    <CFOUTPUT>
    
    <center>
    <table border="0" cellpadding="0" cellspacing="0" width="90%">
    <tr>
    <td width="45%"><b>YOUR NAME:</b></td>
    <td width="45%">#LastName# #FirstName#
    <p></td>
    </tr>
    <tr>
    <td width="45%"><b>YOUR EMAIL:</b></td>
    <td width="45%">#email#
    <p></td>
    </tr>
    <tr>
    <td width="45%"><b>CLUE QUESTION:</b></td>
    <td width="45%">#Clue#
    <p></td>
    </tr>
    <tr>
    <td width="45%"><b>CLUE ANSWER:</b></td>
    <td width="45%">#Clue2#
    <p></td>
    </tr>
    <tr>
    <td width="45%"><b>USER NAME:</b></td>
    <td width="45%">#UserName#
    <p></td>
    </tr>
    <tr>
    <td width="45%"><b>PASSWORD:</b></td>
    <td width="45%">#Password#
    <p></td>
    </tr>
    </table>
    </center>
    </div>
    </CFOUTPUT>
    <hr><br><br>
    If you wish to unsubcribe, please access <a href="info@dautolink.com">info@dautolink.com</a><br> and type
    unsubscribe and your last name in the subject line, and send.
    </b></font>
    
    <CFMAIL TO= #Form.email#
    CC="info@dautolink.com"
    FROM= "info@dautolink.com"
    SUBJECT= "Valid Registration and Password"
    SERVER="mail.dautolink.com">
    
    This is your valid username and password.
    Thank you for choosing Dautolink.com. We will be in touch with you soon!
    
    Your Name: #Form.LastName# #Form.FirstName#
    
    Your Email: #Form.email#
    
    Clue Question: #Form.Clue#
    
    Answer to Clue: #Form.Clue2#
    
    User Name: #Form.UserName#
    
    Password: #Form.Password#
    
    If you wish to unsubcribe, please access info@dautolink.com and type
    unsubscribe and your name in the subject line, and send.
    </CFMAIL>
    </body>
    </html>