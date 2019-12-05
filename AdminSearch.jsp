<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!--This is a search page which helps user to search and delete the data
 in the system for different categories as well as students in the system.

@author Minal Devanand Vaity

 -->
<!DOCTYPE html>
<html>
    <head>
    <meta charset="ISO-8859-1">
<title>Medical Students Study Application</title>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>
<body>

  <nav>
    <div class="nav-wrapper blue">
          <a href="#" class="brand-logo center">Medical Students Study Application</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
             <li><a href="AdminCateg.jsp">Back</a></li>
             <li><a href="index.jsp">Logout</a></li>
      	  </ul>
          </div>
      
  </nav>
    
    

<%
String currentSelect=request.getParameter("currentSelect");
String searchT=request.getParameter("searchT");

//out.println(currentSelect);
%>

<h1 class="z-depth-2 center">Search</h1>

<form action="AdminSearch.jsp" method="post" class="form-inline active-cyan-3 active-cyan-4">


  <i class="fas fa-search" aria-hidden="true"></i>
  <input class="form-control form-control-sm ml-3 w-75" type="text" name="searchT" placeholder="Search"
    aria-label="Search">

<button type="submit" class="btn btn-primary"> Search</button>
	<input value=<%out.println(currentSelect);%>name="currentSelect" type="hidden">

</form>

<%-- <h1 class="z-depth-2 center">Add Values</h1>

<form action="addV.jsp" method="post">
Name :<input type="text" name="name">
Group : <input type="text" name="group">
Description: <input type="text" name="description">
	<input value=<%out.println(currentSelect);%>name="currentSelect" type="hidden">
	<button type="submit" class="btn btn-primary"> Add</button>
</form> --%>
<%@page import="java.sql.*" %>

<%@page import="java.io.*" %>

<%@page import="javax.sql.*" %>

<%@page import="java.sql.Connection"%>

<%
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection
("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");


Statement st=con.createStatement();
String query;
if (searchT==null)
{
	 query="select * from "+currentSelect;	
}
else
{	
	if(currentSelect.equals("users"))
		query="select * from "+currentSelect+" where username like '%"+searchT+"%'"+"or firstname like '%"+searchT+"%'"+" or lastname like '%"+searchT+"%'";	
	else
	 	query="select * from "+currentSelect+" where name like '%"+searchT+"%'"+"or mGroup like '%"+searchT+"%'"+" or description like '%"+searchT+"%'";
	 //out.println(query);
}
ResultSet rs=st.executeQuery(query);
%>

<% if(currentSelect.equals("users")){ %>
<table>
<tr> 
<th> Username</th>
<th> Password </th>
<th> First Name </th>
</tr>
<% }
else { %>
<table>
<tr> 
<th> Name</th>
<th> Group </th>
<th> Description </th>
</tr>
<%} %>
<%

while(rs.next())
{	out.println("<tr>");

	out.println("<td>");
	out.println("<input type='text' value='"+rs.getString(1)+"'>");
	out.println("</td>");
	
	out.println("<td>");
	out.println("<input id='group' type='text' value='"+rs.getString(2)+"'>");
	out.println("</td>");
	
	out.println("<td>");
	out.println("<input id='description' type='text' value='"+rs.getString(3)+"'>");
	out.println("</td>");

	%>
	<td><button onclick="location.href='delete.jsp?name=<%out.print(rs.getString(1));%>&table=<%out.print(currentSelect);%>'" class="btn btn-primary"> Delete </button> </td>
	<%-- <td><button onclick="location.href='edit.jsp?name=<%out.print(rs.getString(1));%>&table=<%out.print(currentSelect);%>'" class="btn btn-primary"> Edit</button> </td> --%>
	<%
	out.println("</tr>");
}

%>
</table>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</body>
</html>