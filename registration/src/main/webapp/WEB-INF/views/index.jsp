<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container p-3">
		<div id="carouselExampleControls" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="First.svg" alt="First slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>First slide heading</h5>
						<p>demo slide one</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="Second.svg" alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Second slide heading</h5>
						<p>demo slide two</p>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="Third.svg" alt="Third slide">
					<div class="carousel-caption d-none d-md-block">
						<h5>Third slide heading</h5>
						<p>demo slide tree</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleControls"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>