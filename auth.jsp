<!--The user trying to login is authorized and granted specific access to the data.
User can be a student or an Admin.

@author Minal Devanand Vaity

 -->
<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%

String username=request.getParameter("username");

String password=request.getParameter("password");




Class.forName("com.mysql.jdbc.Driver");


Connection con=DriverManager.getConnection
("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");

Statement st=con.createStatement();
String query="select * from 510fp.users where username='"+username+"'"+"and password='"+password+"'";

ResultSet rs=st.executeQuery(query);

if(username.equals("Admin") && password.equals("Admin123"))
{
	response.sendRedirect("AdminCateg.jsp");
}
else if(rs.next())
{

response.sendRedirect("category.jsp");

}

else

{

out.println("Wrong Credentials. Please go back and retry");

}

%>