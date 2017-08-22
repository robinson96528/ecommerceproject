<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
form:form {
    border: 3px solid #f1f1f1;
}

form:input[type=text], form:input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

form {
    border: 3px solid #f1f1f1;
}

form[type=text], form[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}



.container-fluid {
    padding: 16px;
}

</style>
</head>
<body>
<h2 align="center">Sport's GLITZ</h2>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Get Ready To Play</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      <c:url value="/home" var="homeurl"></c:url>
        <li class="active"><a href="${homeurl }">Home</a></li>
        <c:if test="${pageContext.request.userPrincipal.name!=null }">
			<security:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Product <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:url value="/admin/getproductform" var="url"></c:url>
          <c:url value="/all/product/getallproduct" var="url1"></c:url>
            <li><a href=" ${url } ">Add product</a></li>
            <li><a href="${url1 }">Browse all product</a></li>
            </ul>
        </li>
        </security:authorize>
        </c:if>
         <c:url value="/all/product/getallproduct" var="url1"></c:url>
         <li><a href="${url1 }">Browse all product</a></li>
         <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">category<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <c:forEach items="${categories}" var="c">
          <c:url value="/all/product/searchbycategory?searchCondition=${c.categoryName }" var="curl"></c:url>
           <li> <a href=" ${curl } ">${c.categoryName }</a></li>     
           </c:forEach>
           <c:url value="/all/product/searchbycategory?searchCondition=all" var="curl1">
           </c:url>
           <li><a href="${curl1}">all</a>
          </ul>
        </li>
        <c:url value="/aboutus" var="aurl1">
           </c:url>
        <li><a href="${aurl1 }">About us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li>
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<a href="">Welcome ${pageContext.request.userPrincipal.name }</a>
			</c:if>
			</li>
			<c:if test="${pageContext.request.userPrincipal.name==null }">
      <c:url value="/all/registrationform" var="rurl"></c:url>
        <li><a href="${rurl }"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <c:url value="/login" var="lurl"></c:url>
        <li><a href="${lurl }"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </c:if>
        <li><security:authorize access="hasRole('ROLE_USER')">
         <li><a href="<c:url value="/cart/getcart"></c:url>"><span class="glyphicon glyphicon-shopping-cart"></span>your cart</a></li>
         </security:authorize></li>
        
       
		    <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		    <li><a href="${logoutUrl }">logout</a></li>
		    </c:if>
      </ul>
    </div>
  </div>
</nav>
</body>
</html>