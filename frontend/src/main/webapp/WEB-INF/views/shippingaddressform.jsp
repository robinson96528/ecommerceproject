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
<c:url value="/cart/order/${cartid}" var="url"></c:url>
<form:form action="${url }" modelAttribute="shippingAddress" >
<form:hidden path="id"/>
<div class="boxed" style= "border:1px solid">
Shipping Address
<div class="form-group">
<form:label path="streetName">Enter Streetname</form:label>
<form:input path="streetName"/>
<form:errors path="streetName" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="apartmentNo">Enter apartmentnumber</form:label>
<form:input path="apartmentNo"/>
<form:errors path="apartmentNo" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="residencialArea">Enter ResidencialArea</form:label>
<form:input path="residencialArea"/>
<form:errors path="residencialArea" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="city">Enter City</form:label>
<form:input path="city"/>
<form:errors path="city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="state">Enter State</form:label>
<form:input path="state"/>
<form:errors path="state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="country">Enter Country</form:label>
<form:input path="country"/>
<form:errors path="country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label path="pincode">Enter Zipcode</form:label>
<form:input path="pincode"/>
<form:errors path="pincode" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<input type="submit" value="Next">
</div>
</div>
</form:form>

</body>
</html>