<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/resources/${productobj.id }.png" var="imageurl"></c:url>
<b>details about the product</b>
<table>
<tr>
<td>product name</td><td>${productobj.productName}</td>
</tr>
<tr>
<td>price</td><td>${productobj.price}</td>
</tr>
<tr>
<td>quantity</td><td>${productobj.quantity}</td>
</tr>
<tr>
<td>description</td><td>${productobj.description}</td>
</tr>
<tr>
<td><img src="${imageurl }" height="50" width="50"></td>
</tr>
</table>

<c:if  test="${productobj.quantity==0 }">
Out Of Stock
</c:if>

<c:if test="${productobj.quantity!=0 }">
<c:url value="/cart/addtocart/${productobj.id }" var="url"></c:url>
<form action="${url }">
Enter Units<input  type="text" name="units"><br>


<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart">ADD TO CART</span></button>
</form>
</c:if>
<c:url value="/all/product/getallproduct" var="url1"></c:url>
<a href="${url1 }">back to product list</a>
</body>
</html>