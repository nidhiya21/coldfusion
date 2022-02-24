
<h3>Sending mail in cfscript</h3>
<cfscript>
mailerService = new mail();
if(IsDefined("form.mailto"))
{
if(form.mailto is not "" AND form.mailfrom is not "" AND form.Subject is not ""
and form.attachment is not "")
{
savecontent variable="mailBody"{
WriteOutput("This message was sent by an automatic mailer built with cfmail:
= = = = = = = = = = = = = = = = = = = = = = = = = = =" & "<br><br>" & form.body);
}
/* set mail attributes using implicit setters provided */
mailerService.setTo(form.mailto);
mailerService.setFrom(form.mailFrom);
mailerService.setSubject(form.subject);
mailerService.setType("html");
/* add mailparams */
mailerService.addParam(file=expandpath(form.attachment),type="text/plain",remove
=false);
/* send mail using send(). Attribute values specified in an end action like "send" will not persist after the action is performed */
mailerService.send(body=mailBody);
writeoutput("<h3>Thank you</h3>" & "<p>Thank you, " & mailfrom & "<br>" & "Your message, " & subject & ", has been sent to " & mailto & "</p>");
}
}
</cfscript>
<p>
<form action = "cf_mail_attachment.cfm" method="POST">
<table>
<tr>
<td>TO</td>
<td><input type = "Text" name = "MailTo"></td>
</tr>
<tr>
<td>FROM</td>
<td><input type = "Text" name = "MailFrom"></td>
</tr>
<tr>
<td>SUBJECT</td>
<td><input type = "Text" name = "Subject"></td>
</tr>
<tr>
<td>ATTACHMENT</td>
<td><input type = "file" name = "attachment"></td>
</tr>
</table>
<hr>
MESSAGE BODY:
<br>
<textarea name ="body" cols="40" rows="5" wrap="virtual"></textarea>
<!--- Establish required fields. --->
<input type = "hidden" name = "MailTo_required" value = "You must enter a recipient">
<input type = "hidden" name = "MailFrom_required" value = "You must enter a sender">
<input type = "hidden" name = "Subject_required" value = "You must enter a subject">
<input type = "hidden" name = "Body_required" value = "You must enter some text">
<input type = "hidden" name = "attachment_required" value = "You must select a file">
<p><input type = "Submit" name = ""></p>
</p>
</form>