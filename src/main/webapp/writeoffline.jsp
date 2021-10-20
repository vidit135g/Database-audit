<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.lang.*" %> 

<%  String userid = session.getAttribute("userid")+"";
    String uname = session.getAttribute("uname")+"";  %>

<HTML>
<head>
<title> Write Offline </title>
<script language="javascript">
   function use()
   {
      frm.touser.focus();
   }

function check()
{
   k=frm.touser.value.length; 
   l=frm.tsub.value.length; 
   if(k<=0)
   {
		alert('Enter To UserId');
		frm.touser.value=""; 
		frm.touser.focus();
		return false;
   }
   else if(l <= 0)
        {
		alert('Enter Subject');
		frm.tsub.value=""; 
		frm.tsub.focus();
		return false;
         }
   else return true;
}
  </script>
</head>
<BODY  bgcolor = lightcyan onload="use()" >


<% if(userid.equals("admin")) { %>
<jsp:include page="adminmainscreen.jsp" flush="true"/>
<% } else  { %>  <jsp:include page="conferencemain.jsp" flush="true"/>
<% } %>



<form action='writeoffline2.jsp?userid=<%= userid%>'  name=frm onsubmit="return check()" method = post>

 <center><b><h1>Write Message</h1></b> </center>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<font color = green face =vedana size = 5><b> To&nbsp;&nbsp;</b></font> 
<input type = text name = touser size = 50 >&nbsp;&nbsp;&nbsp;
   (Ex. vijay[,kishor,...]) 

<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

  <font color = green face =vedana size = 5> <b>Subject&nbsp;&nbsp;</b></font>
    <input type = text name = tsub size = 30 maxlength=25>

 <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</b><textarea name = tarea rows = 10 cols = 55>
</textarea>

<br><br><center><Input name = submit type=submit value=' Send '>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<INPUT name=reset type=reset value=Reset></center>
<br><br>

</form>


</BODY>
</HTML>

