<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection" %>

<%

String username=request.getParameter("username");

String password=request.getParameter("password");

String firstname=request.getParameter("firstname");

String lastname=request.getParameter("lastname");



Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");


Statement st=con.createStatement();

String sql="insert into 510fp.users(username,password,firstname,lastname) values('"+username+"','"+password+"','"+firstname+"','"+lastname+"')";

int flag=st.executeUpdate(sql);

if(flag==1)

{

out.println("Added!");

}

else

{

out.println("Failed");

}

response.sendRedirect("category.jsp");

%>