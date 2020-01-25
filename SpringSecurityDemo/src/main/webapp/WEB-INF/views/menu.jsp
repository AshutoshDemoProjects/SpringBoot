<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
	<a class="navbar-brand" href="#">IET</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<sec:authorize access="!isAuthenticated()">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/signup">Registration</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/signin">Login</a></li>
		</ul>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/">Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/auth/list">List Student</a></li>
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/auth/add">Add</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a class="nav-link"
				href="${pageContext.request.contextPath}/logout">Logout</a></li>
		</ul>
		</sec:authorize>
	</div>
</nav>