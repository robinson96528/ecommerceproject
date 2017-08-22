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
<div class="container-wrapper">
<div class="container">
<c:url value="/all/savecustomer" var="url"></c:url>
<form:form action="${url }" method="post" modelAttribute="customer" align="center">
<div class="boxed" style="border:1px solid">
<div class="form-group">
<form:label path="firstName">FIRSTNAME</form:label>
<form:input path="firstName"/>
<form:errors path="firstName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="lastName">LASTNAME</form:label>
<form:input path="lastName"/>
<form:errors path="lastName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="Email">EMAIL ID</form:label>
<form:input path="Email"/>
<form:errors path="Email" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="phone">PHONE</form:label>
<form:input path="phone"/>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>

</div>

<div class="boxed" style="border:1px solid">
<div class="form-group">
<form:label path="user.userName">USERNAME</form:label>
<form:input path="user.userName"/>
<form:errors path="user.userName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="user.password">Password</form:label>
<form:input path="user.password" type="password"/>
<form:errors path="user.password" cssStyle="color:red"></form:errors>
</div>

</div>

<div class="boxed" style="border:1px solid">
<div class="form-group">
<form:label path="billingAddress.streetName">STREETNAME</form:label>
<form:input path="billingAddress.streetName"/>
<form:errors path="billingAddress.streetName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.apartmentNo">APARTMENT NO</form:label>
<form:input path="billingAddress.apartmentNo"/>
<form:errors path="billingAddress.apartmentNo" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.residencialArea">residencialArea</form:label>
<form:input path="billingAddress.residencialArea"/>
<form:errors path="billingAddress.residencialArea" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.city">city</form:label>
<form:input path="billingAddress.city"/>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.state">STATE</form:label>
<form:input path="billingAddress.state"/>
<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.country">country</form:label>
<form:input path="billingAddress.country"/>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="billingAddress.pincode">zipcode</form:label>
<form:input path="billingAddress.pincode"/>
<form:errors path="billingAddress.pincode" cssStyle="color:red"></form:errors>
</div>

</div>

<div class="boxed" style="border:1px solid">
<div class="form-group">
<form:label path="shippingAddress.streetName">STREETNAME</form:label>
<form:input path="shippingAddress.streetName"/>
<form:errors path="shippingAddress.streetName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentNo">APARTMENT NO</form:label>
<form:input path="shippingAddress.apartmentNo"/>
<form:errors path="shippingAddress.apartmentNo" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.residencialArea">ResidencialArea</form:label>
<form:input path="shippingAddress.residencialArea"/>
<form:errors path="shippingAddress.residencialArea" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.city">city</form:label>
<form:input path="shippingAddress.city"/>
<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.state">STATE</form:label>
<form:input path="shippingAddress.state"/>
<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.country">country</form:label>
<form:input path="shippingAddress.country"/>
<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="shippingAddress.pincode">zipcode</form:label>
<form:input path="shippingAddress.pincode"/>
<form:errors path="shippingAddress.pincode" cssStyle="color:red"></form:errors>
</div>
</div>
<div class="form-group">
<button type="submit" class="btn btn-primary btn-sm	">Register</button></div>
</form:form>
</div>
</div>
</body>
</html>