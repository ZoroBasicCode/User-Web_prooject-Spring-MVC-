<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<form:form modelAttribute="user" action="ed" method="post" >
<tr>
<td><form:label path="id">Id</form:label></td>
<td><form:input path="id" readonly="true"/></td>
</tr>
<tr>
<td><form:label path="name">Name</form:label></td>
<td><form:input path="name" /></td>
</tr>
<tr>
<td><form:label path="age">Age</form:label></td>
<td><form:input path="age"/></td>
</tr>
<tr>
<td><form:label path="phon">Phone</form:label></td>
<td><form:input path="phon"/></td>
</tr>
<tr>
<td><form:label path="pasw">Password</form:label></td>
<td><form:input path="pasw"/></td>
</tr>
<tr>
<th><form:button>updated</form:button></th>
<th><button><a href="back">Back</a></button></th>
</tr>	
</form:form>
</table>
</body>
</html>
