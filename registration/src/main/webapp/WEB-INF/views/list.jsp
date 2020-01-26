<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="row">
		<c:forEach var="user" items="${list}">
			<div class="col-3 p-1">
				<div class="card">
				<img class="card-img-top" src="avtar/${user.avtar}" alt="Card image cap" style="height: 200px">
				<div class="card-body">
					<h5 class="card-title">${user.firstName} ${user.lastName}</h5>
					<p class="card-text">${user.email}</p>
					<p class="card-text">${user.state}</p>
					<p class="card-text">
						<a class="btn btn-primary" href="user/${user.userId}">Full Info</a>
					</p>
				</div>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>