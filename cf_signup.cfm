<html>
    <head>
    
    <title>Registration Page</title>
    <SCRIPT>
    <!--
    function testbox(form) {
    Ctrl = form.email;
    if (Ctrl.value == "" || Ctrl.value.indexOf('@',0) == -1){
    return(false);
    } else
    return(true);
    }
    //-->
    </SCRIPT>
    </HEAD>
    <body bgcolor="#FFFFFF">
    <font color="#000000">
    
    <a href="index2.cfm"><font size=4><p align="left">Back to Home Page</a></font></p>
    <h1 align="center">Registration Page</h1>
    <br><font size=+1>
    <b>Sign up for your password with Dautolink.com...<br>
    You will be emailed your username and password when it is added to our
    database.<br>
    To unsubscribe, email <a href="mailto:info@dautolink.com">info@dautolink.com</a>
    and put unsubscribe in the subject line.<br>
    Register with Dautolink.com!!<br>
    <br><br><br>
    <hr>
    <CFFORM NAME="pass" METHOD="POST" ACTION="cf_passwdb.cfm">
    
    <div align="center">
    <center>
    <table border="0" cellpadding="0" cellspacing="0" width="90%" bgcolor="#990000">
    <tr>
    <td width="45%"><b><font color="white">LAST NAME:</font></b></td>
    <td width="45%">
    <p><cfinput type="text" name="LastName" size="20" required="yes" message="Fill in Last Name."></td>
    </tr>
    <TR><TD>
    </TD></TR>
    </b>
    <tr>
    <td width="45%"><b><font color="white">FIRST NAME:</font></b></td>
    <td width="45%"><cfinput type="text" name="FirstName" size="20" required="yes" message="Enter First Name."></td>
    </tr>
    <TR><TD>
    </TD></TR>
    <tr>
    <td width="45%"><b><font color="white">EMAIL:</font></b></td>
    <td width="45%">
    <cfinput type=text name=email required="yes" onvalidate="testbox" MESSAGE="Invalid Email Entry." size=20 MAXLENGTH=30>
    </td>
    </tr>
    <TR><TD>
    </TD>
    </TR>
    <tr><td width="50%"><b><FONT SIZE="3" color="white">Choose which question you want in choosing a clue:</b></FONT></td>
    <td width="50%"><select name="Clue">
    <option value="What is your favorite color?">What is your favorite color?</OPTION>
    <option value="What is the name of your favorite pet?">What is the name of your favorite pet?</OPTION>
    <option value="Last 5 digits of your Social Security No.?">What are the last five digits of your Social Security Number?</OPTION>
    </select>
    </td>
    </tr>
    <TR><TD>
    </TD></TR>
    <tr>
    <td width="45%"><b><font color="white">CLUE ANSWER:</white></b></td>
    <td width="45%"><cfinput type="text" name="Clue2" size="20" maxlength="20" required="yes" message="Please select your Clue questions and type your answer."></td>
    </tr>
    <TR><TD>
    </TD></TR>
    <tr>
    <td width="45%"><b><font color="white">USERNAME:</b></td></font>
    <td width="45%"><cfinput type="text" name="UserName" size="10" maxlength="10" required="yes" message="Enter User Name."></td>
    </tr>
    <tr>
    <td width="90%" colspan="2"><font color="white">(up to ten characters)</font></td>
    </tr>
    </b>
    <TR><TD>
    </TD></TR>
    <tr>
    <td width="45%"><b><font color="white">PASSWORD:</b></td></font>
    <td width="45%"><cfinput type="text" name="Password" size="10" maxlength="10" required="yes" message="Enter your Password for the first time."></td>
    </tr>
    <tr>
    <td width="90%" colspan="2"><font color="white">(up to ten characters)</font></td>
    </tr>
    <TR><TD>
    </TD></TR>
    
    <tr>
    <td width="45%"><b><font color="white">RETYPE YOUR PASSWORD:</b></font></td>
    <td width="45%"><cfinput type="password" name="Password2" size="10" maxlength="10" required="yes" message="You must re-enter your Password."></td>
    </tr>
    <tr>
    <td width="90%" colspan="2"><font color="white">(up to ten characters)</font></td>
    </tr>
    
    
    </b>
    </font>
    </table>
    </center>
    </div>
    <p align="center">
    <input type="submit" value="Submit"><input type="reset" value="Reset">
    </CFFORM>
    </body>
    
    </html>