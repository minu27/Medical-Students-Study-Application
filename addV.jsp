<%@page import="java.sql.*"%>

<%@page import="java.io.*"%>

<%@page import="javax.sql.*"%>

<%@page import="java.sql.Connection"%>

<%
	String table = request.getParameter("currentSelect");

	String name = request.getParameter("name");

	String group = request.getParameter("group");

	String description = request.getParameter("description");

	Class.forName("com.mysql.jdbc.Driver");

	Connection con=DriverManager.getConnection
			("jdbc:mysql://www.papademas.net:3307/510fp?autoReconnect=true&useSSL=false","fp510","510");

	Statement st = con.createStatement();

	String sql = "insert into " + table + " values('" + name + "','" + group + "','" + description + "')";

	int flag = st.executeUpdate(sql);

	if (flag == 1)

	{

		out.println("Added!");

	}

	else

	{

		out.println("Failed");

	}

	response.sendRedirect("category.jsp");
%>