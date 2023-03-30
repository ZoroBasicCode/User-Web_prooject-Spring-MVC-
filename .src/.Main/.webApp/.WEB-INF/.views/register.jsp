<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<table>
<form:form modelAttribute="user" action="reg" method="post" >
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
<th><form:button>register</form:button></th>
<th><button><a href="logout">Back</a></button></th>
</tr>	
</form:form>
</table>
</body>
</html>
