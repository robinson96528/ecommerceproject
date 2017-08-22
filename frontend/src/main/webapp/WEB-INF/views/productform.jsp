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
<div class="container-fluid">
<div class="col-lg-12 well" align="center">
<div class="row">
<fieldset>
<h2 align="center">Product form</h2>
<c:url value="/admin/saveproduct" var="url"></c:url>
<form:form action="${url }" method="post" modelAttribute="product" enctype="multipart/form-data" class="form-horizontal" align="center">
<div class="form-group"><form:hidden path="id"/>
</div>
<div class="form-group">
<label class="col-md-4 control-label" >PRODUCT NAME</label>  
  <div class="col-md-4">
<form:input path="productName"/><br>
<form:errors path="productName" cssStyle="color:red"></form:errors>
</div>
</div>
<div class="form-group"> 
<label class="col-md-4 control-label" >PRICE</label>
  <div class="col-md-4">
<form:input path="price"/><br>
<form:errors path="price" cssStyle="color:red"></form:errors>
</div>
</div>
<div class="form-group">
<label class="col-md-4 control-label" >QUANTITY</label>  
  <div class="col-md-4">
<form:input path="quantity"/><br>
</div>
</div>
<div class="form-group">
<label class="col-md-4 control-label" >DESCRIPTION</label>  
  <div class="col-md-4">
<form:input path="description"/><br>
<form:errors path="description" cssStyle="color:red"></form:errors>
</div>
</div> 
<div class="form-group">
<label class="col-md-4 control-label" >SELECT CATEGORY</label>  
  <div class="col-md-4">
<c:forEach items="${categories}" var="p">
<form:radiobutton path="category.id" value="${p.id }" />${p.categoryName }
 </c:forEach>
 </div>
 </div> 
 <div class="form-group">
<label class="col-md-4 control-label" >IMAGE</label>  
  <div class="col-md-4">
 <input type="file" name="image">
 </div>
 </div><button type="submit" class="btn btn-primary btn-sm">ADD PRODUCT</button>
</form:form>
</fieldset>
</div>
</div>
</div>
</body>
</html>