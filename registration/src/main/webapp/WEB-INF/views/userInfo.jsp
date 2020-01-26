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
		<div class="row">
			<div class="col-3">
				<img src="/avtar/${user.avtar}" class="img-thumbnail" alt="${user.firstName}">
			</div>
			<div class="col-9">
				<h3>Name:-${user.firstName} ${user.lastName}</h3>
				<h4>Gender:-${user.gender}</h4>
				<h4>Gmail:- ${user.email}</h4>
			</div>
		</div>
	</div>
</body>
</html>