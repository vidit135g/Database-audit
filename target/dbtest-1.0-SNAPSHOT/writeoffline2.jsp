<%@ page import="java.io.*" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*" %> 
<%@ page import="java.lang.*" %> 
<%@ include file="DBConn.jsp" %>

<%
   String userid = session.getAttribute("userid")+"";
   String uname = session.getAttribute("uname")+"";  
   String touser = request.getParameter("touser");      
   String tsub = request.getParameter("tsub");
   String tarea = request.getParameter("tarea");
   
   String puserid="";
   java.util.Date d = new java.util.Date();      
   boolean flag = false;
   String user[]= new String[100];
   int count=0,temp=0, j=0;
   char chars[] = new char[25];
   char status[] = new char[100];
   
   for(int i=0; i < touser.length(); i++)
   {
       if(touser.charAt(i) == ',')
       {   
           user[count] = new String(chars);
           user[count] = user[count].trim();
           count++;  
           for(int k=0;k<25;k++)
             chars[k] = ' ';
            
           j=0;
           i++;  
       }  
       chars[j++] = touser.charAt(i);
   }
   user[count] = new String(chars);
   user[count] = user[count].trim();   
   count++; 
%>

<html>
<head>
<title>Write Offline Page</title>
 </head>
<body>
<% if(userid.equals("admin")) { %>
<jsp:include page="adminmainscreen.jsp" flush="true"/>
<% } else  { %>  <jsp:include page="conferencemain.jsp" flush="true"/>
<% } %>
<% 

    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
         pstmt = con.prepareStatement("select * from passwords");   
         rs = pstmt.executeQuery();
         while(rs.next()) 
         {
           puserid = rs.getString(1); 
            for(int k=0;k<count;k++)                                        
             if(puserid.equals(user[k]))                    
             {   
                 status[k] = 'y';                      
                 temp++;
             }  
         }
         if(temp > 0) 
         {%>
           <br><br>  
           <font color=green size=6><b><center>Your Message has been sent to..</center></b> </font><br><br>
       <% for(int k=0;k<count;k++) 
           if(status[k] == 'y')
           {    
             pstmt = con.prepareStatement("insert into mail values(?,?,?,?,?,?)");
             pstmt.setString(1,user[k]);
             out.println("<center><font color = midnightblue size = 6>"+ user[k] + "</font></center><br>");
             pstmt.setString(2,userid);
             pstmt.setString(3,tarea);
             pstmt.setString(4,d.toString());
             pstmt.setString(5,"n");
             pstmt.setString(6,tsub);
             int rowcount = pstmt.executeUpdate();
           }          
         }     
         if(temp < count)
         {%>
            <h1><font color = RED><center>The Follwing UserId(s) doesn`t Exist</center></font></h1>
            <br>
          <% for(int k=0;k<count;k++) 
                if(status[k] != 'y')
                    out.println("<center><font color = darkslategray size = 6>"+ user[k] + "</font></center><br>");
           out.println("<a href = 'writeoffline.jsp'><h2><center>Click here to try again</center></h2></a>");
          } 
%> 
           <br><br><a href="offline.jsp">
           <font color=red size=6><b><center>Click to go back</center></b> </font></a><br><br>
         <%              

       }
      finally {
       if(pstmt != null)
         pstmt.close();
       if(con != null)
         con.close();
     } 
 %>
			  </body>  
			  </html>  