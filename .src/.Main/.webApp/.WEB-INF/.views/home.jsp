<%@page import="org.SRK.UserApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:if test="${user!=null}">
	<h1>welcome ${user.getName()}</h1>
	<h1></h1>
	<h1><a href="edit?id=${user.getId()}">Edit</a></h1>
	<h1><a href="profile?id=${user.getId()}">Profile</a></h1>
	<h1><a href="delete?id=${user.getId()}">Delete</a></h1>
	<h1><a href="logout">logout</a></h1>
</c:if>
</body>
</html>
