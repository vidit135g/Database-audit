<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.lang.*" %> 


<%  String userid = session.getAttribute("userid")+"";
    String uname = session.getAttribute("uname")+"";
    String drname = request.getParameter("drname");

    boolean flag = false;
 %>

<HTML>
<HEAD>
<title> Create Room </title>
<script language="javascript">
   function use()
   {
      frm.kname.focus();
   }

function check()
{
   k=frm.kname.value.length; 
   if(k<=0)
   {
		alert('Enter Room Name');
		frm.kname.value=""; 
		frm.kname.focus();
		return false;
   }
   
   else  return true;
}
  </script>

</HEAD>
<BODY bgColor=skyblue onload="use()">


<% if(userid.equals("admin")) { %>
<jsp:include page="adminmainscreen.jsp" flush="true"/>
<% } else  { %>  <jsp:include page="conferencemain.jsp" flush="true"/>
<% } %>



<FORM  ACTION = "changeroomkey2.jsp?drname=<%= drname%>" name = frm onsubmit="return check()" method = post>

  <H2 align=center><FONT color="#0066CC" face=Verdana, Arial, Helvetica, sans-serif><U><b>Change Room Key</b></U></FONT></H2><br>
  <P align=center>
  <TABLE 
  width="39%"  border=0 align="center" cellPadding=1 cellSpacing=1>
    <TR> <TD width="134" height = 50> 
        <font color = #CC3366 size = 5 face verdana> New Key:</font></TD>
    <TD width="159" align = left><INPUT type = text name=kname maxlength="20"></TD></TR>

    
</TABLE>

  <P align=center> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
    <input type = image src = images/newkey.jpg border=0>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </P>
<P align=center>&nbsp;</P>
<P align=center>&nbsp;</P>
</form>

</BODY>
</HTML>

