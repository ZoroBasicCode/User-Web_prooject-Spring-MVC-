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
<c:if test="${masg!=null}">
<h3>${masg}</h3>
</c:if>
<form action="loginuser" method="post">
<table>
<tr>
<td><label>Phone</label></td>
<td><input type="tel" name="phon" placeholder="enter phon number"></td>
</tr>
<tr>
<td><label>Password</label></td>
<td><input type="password" name="pasw" placeholder="enter password"></td>
</tr>
<tr><th><input type="submit" value="Login"></th></tr>
<tr><th><a href="load?choice=1">Register</a></th></tr>
</table>
</form>
</body>
</html>
