<html>

    <head>
    
    <title>Forgotten Password Page</title>
    <SCRIPT>
    <!--
    function testbox(form){
    Ctrl=form.email;
    if (Ctrl.value==""||Ctrl.value.indexOf('@',0)==-1){
    return(false);
    } else
    return(true);
    }
    //-->
    </SCRIPT>
    </HEAD>
    
    <body bgcolor="#FFFFFF">
    <a href="index2.cfm"><FONT SIZE="4">BACK TO HOME PAGE</A></FONT><BR>
    
    <h1 align="center">Did you forget your User Name and Password?</h1>
    <br><font size=+1>
    You will be emailed your username and password if it is added to our
    database.<br>
    To unsubscribe, email <a href="mailto:info@dautolink.com">info@dautolink.com</a>
    and put unsubscribe in the subject line, and send.<br>
    Register with Dautolink.com!!<br>
    <br><br><br>
    <hr>
    <CFFORM NAME="forgot" METHOD="POST" ACTION="forgot2.cfm">
    <div align="center">
    <center>
    <table border="0" cellpadding="0" cellspacing="0" width="90%">
    
    <tr><td width="70%"><b>Choose a question in choice of a clue:</b></FONT></td>
    <td width="30%"><select name="Clue">
    <option value="What is your favorite color?">What is your favorite color?</OPTION>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</OPTION>
    <option value="What are the last five digits of your Social Security Number?">What are the last five digits of your Social Security Number?</OPTION>
    </select>
    </td>
    </tr>
    <tr>
    <td width="50%"><B>CLUE ANSWER:</B></td>
    <td width="50%"><cfinput type="text" name="Clue2" size="30" required="yes" message="Please give your Clue."></td>
    </tr>
    </b>
    <tr>
    <td width="50%"><b>EMAIL:</b></td>
    <td width="50%"><cfinput type="text" name="email" required="yes" onvalidate="testbox" message="Invalid Email Entry." size="20" maxlength="20"></td>
    </tr>
    <tr>
    <td width="28%"></td>
    <td width="72%"></td>
    </tr>
    </b>
    
    </table>
    </center>
    </div>
    <p align="center">
    <input type="Submit" value="Search"><input type="reset" value="Reset">
    </CFFORM>
    
    </body>
    
    </html>