<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.center
{
padding: 70px 0;
    border: 3px solid green;
    text-align: center;
    }
</style>
</head>
<body>
<div class="container center">
<h2>SIGN IN</h2>
<c:url value="/j_spring_security_check" var="login"></c:url>
<form action="${login }" method="post">
    <img src= "resources/avatar.png" height="100" width="100" >
<div class="form-group">
Enter username <input type="text" name="j_username"><br></div>
<div class="form-group">
Enter password <input type="password" name="j_password"><br></div>
<button type="submit" class="btn btn-primary btn-sm	">LOGIN</button>
</form>
</div>
</body>
</html>