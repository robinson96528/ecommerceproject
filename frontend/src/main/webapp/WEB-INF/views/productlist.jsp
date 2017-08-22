<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ include file="header.jsp" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	$(document).ready(function() {
		var searchCondition = '${searchCondition}';
		$('.table').DataTable({
			"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
			"oSearch" : {
				"sSearch" : searchCondition
			}
		})
	});
</script>
</head>
<body>
<b>LIST ALL PRODUCT</b>
<div class="container">
<table class="table table-striped">
<thead>
<tr><th>Image</th>
<th>Product name</th><th>Price</th><th>Category</th><th>Action</th></tr>
</thead>
<tbody>
<c:forEach items="${product}" var="p">
<c:url value="/all/product/viewproduct/${p.id}" var="viewurl"></c:url>
<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteurl"></c:url>
<c:url value="/admin/product/geteditform/${p.id}" var="editurl"></c:url>
<c:url value="/resources/${p.id }.png" var="imageurl"></c:url>
<tr>
<td><img src="${imageurl }" height="50" width="50"></td>
<td><a href="${viewurl }">${p.productName }</a></td>
<td>${p.price }</td>
<td>${p.category.categoryName}</td>
<td><a href="${viewurl }"><span class="glyphicon glyphicon-info-sign"></span></a>
<security:authorize access="hasRole('ROLE_ADMIN')">
<a href="${deleteurl }"><span class="glyphicon glyphicon-trash"></span></a>
<a href="${editurl }"><span class="glyphicon glyphicon-pencil"></span></a>
</security:authorize>
</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>