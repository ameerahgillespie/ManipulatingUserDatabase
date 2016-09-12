<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page import="com.gillespie.lab24.UserDAO"%>
<%@ page import="com.gillespie.lab24.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Table</title>
</head>
<body>
	<h1>Web Product Users</h1>
	<table>
		<%
			List<User> users = UserDAO.getAllUsers();
						
			for (User u : users) {
				out.println("<tr><td>" + u.getUsername() + "</td><td>" + "</td><td>" + u.getEmail()
						+ "</td><td>" + u.getFullname() + "</td>" + "<td><a href=\"deleteuser.jsp?id="+ u.getId() + "\">Delete</a>"
						+ "</td></tr>");
			}
		%>
	</table>
</body>
</html>