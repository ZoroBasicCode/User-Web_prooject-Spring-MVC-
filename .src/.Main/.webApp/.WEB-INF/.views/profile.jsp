<%@page import="org.SRK.UserApp.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<form:form modelAttribute="user" action="">
<tr>
<td><form:label path="id">Id</form:label></td>
<td><form:input path="id" readonly="true"/></td>
</tr>
<tr>
<td><form:label path="name">Name</form:label></td>
<td><form:input path="name" readonly="true"/></td>
</tr>
<tr>
<td><form:label path="age">Age</form:label></td>
<td><form:input path="age" readonly="true"/></td>
</tr>
<tr>
<td><form:label path="phon">Phone</form:label></td>
<td><form:input path="phon" readonly="true"/></td>
</tr>
<tr>
<td><form:label path="pasw">Password</form:label></td>
<td><form:input path="pasw" readonly="true"/></td>
</tr>
<tr><th><button><a href="back">home</a></button></th></tr>
</form:form>
</table>
<h1></h1>
</body>
</html>
