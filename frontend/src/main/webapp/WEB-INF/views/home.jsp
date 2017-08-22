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
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
      <c:url value="/resources/sporthome.jpg" var="img1"></c:url>
        <img src="${img1 }" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>SPORTS WORLD</h3>
          <p>welcome to world's best store!</p>
        </div>
      </div>

      <div class="item">
      <c:url value="/resources/Lionel Messi.jpg" var="img2"></c:url>
        <img src="${img2 }" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>VARIETY&STYLE</h3>
          <p>GET YOUR NICE KITS WITH TOP FASHION!</p>
        </div>
      </div>
    
      <div class="item">
      <c:url value="/resources/curry.jpg" var="img3"></c:url>
        <img src="${img3 }" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>TIME US COME</h3>
          <p>LETS ROCK ON THE FIELD!</p>
        </div>
      </div>
  
      <div class="item">
      <c:url value="/resources/cricket.jpg" var="img4"></c:url>
        <img src="${img4 }" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
</html>