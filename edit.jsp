<!--This is an edit page where student can edit the data that has been added to the system.

@author Minal Devanand Vaity

 -->
<%@page import="java.sql.*"%>

<%@page import="java.io.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>

<%
	String table = request.getParameter("table");

	String name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="ISO-8859-1">
<title>Medical Student Study Application</title>
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
    	<li><a href="search.jsp">Back</a></li>
        <li><a href="index.jsp">Logout</a></li>
        </ul>
    </div>
  </nav>
    
<h1>Edit</h1>
<form action="edit.jsp" method="post">
 Name: <%out.println(name);%> 
<br/>
<input type="hidden" name="name" value=<%out.println(name);%>>
<input type="hidden" name=table value=<%out.println(table);%>>

<div class="form-group w-50">
	<h6>Muscle group :</h6> <input type="text" class="form-control" name="group" /><br /> 
	<h6>Muscle Description :</h6> <input type="text" class="form-control" name="description" /><br /> 
	<input type="submit" value="Edit" class="btn btn-primary"/> <br />
</div>
</form>
<%
	String mGroup = request.getParameter("group");

	String description = request.getParameter("description");

	if (mGroup != null) {
		Class.forName("com.mysql.jdbc.Driver");

		Connection con=DriverManager.getConnection
				("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");


		Statement st = con.createStatement();

		String sql = "update " + table + " set mgroup='" + mGroup + "', description='" + description
				+ "' where name='" + name + "'";
		out.println(sql);

		int flag = st.executeUpdate(sql);
		//int flag=1;
		if (flag == 1) {

			out.println("Added!");

		}

		else

		{

			out.println("Failed");

		}
		response.sendRedirect("category.jsp");

	}
%>