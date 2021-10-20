<%@page import="java.sql.*" %>
<%
	Connection con=null;
	try{
            String dbURL = "jdbc:mysql://localhost:3306/world";
            String username="root";
            String password="nrocirpac";
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/world","root","nrocirpac");
            }catch(Exception e)
	{ e.printStackTrace();}
%>