<!--The delete button operation is included in this jsp page 
where only the admin has permission to delete the data in the system.

@author Minal Devanand Vaity

 -->
<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%

String table=request.getParameter("table");

String name=request.getParameter("name");
String sql;

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");

Statement st=con.createStatement();
if(table.equals("users"))
{
	 sql="delete from "+table +" where username='"+name+"'";
}
else
{
	 sql="delete from "+table +" where name='"+name+"'";
}
int flag=st.executeUpdate(sql);

if(flag==1)
{
out.println("Added!");
}
else
{
out.println("Failed");
}


response.sendRedirect("AdminCateg.jsp");



%>