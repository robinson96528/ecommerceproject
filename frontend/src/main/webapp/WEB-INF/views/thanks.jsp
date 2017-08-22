<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body  {
    background-image: url("resources/thanks.jpg");
}
</style>
</head>
<body>
<h1 align="center">THANK FOR CHOOSING OUR CART</h1>
<c:url value="/all/product/getallproduct" var="url"></c:url>
<a href="${url }" shape="rect">WISH TO CONTINUE SHOPPING</a>
</body>
</html>