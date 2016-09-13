<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.gillespie.lab24.UserDAO"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Web Product Add User</title>
</head>
<body>
<h1>Please add a user</h1>
<jsp:useBean id="obj" class="com.gillespie.lab24.User">  
</jsp:useBean>  
<jsp:setProperty property="*" name="obj"/>
<%  
int i=UserDAO.addUser(obj); 
if (i > 0)  
out.print("User successfully added");  
else
out.println("Error; user not added");
%>  
</body>
</html> 