<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
<jsp:include page="./headerLink.jsp" />
</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron p-1 indigo darken-1">
			<div class="row">
				<div class="col-2 valign-wrapper">
					<h1 class="center-align orange-text lighten-4">For Login Click Here<br><a
												class="btn-floating btn-large waves-effect waves-light orange">
												<i class="fas fa-sign-in-alt"></i>
											</a></h1>
				</div>
				<div class="col-10 orange lighten-4"
					style="border-top-left-radius: 10% 50%; border-bottom-left-radius: 10% 50%;">
					<div class="row">
						<div class="col-1"></div>
						<div class="col-11">
							<div class="row">
								<form class="col s12">
									<div class="row">
										<div class="input-field col s6">
											<input id="first_name" type="text" class="validate">
											<label for="first_name">First Name</label>
										</div>
										<div class="input-field col s6">
											<input id="last_name" type="text" class="validate"> <label
												for="last_name">Last Name</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s6">
											<label> <input name="group1" type="radio" checked />
												<span><i class="fas fa-male"></i> Male</span>
											</label>
										</div>
										<div class="input-field col s6">
											<label> <input name="group1" type="radio" /> <span><i
													class="fas fa-female" ></i> Female</span>
											</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<i class="fas fa-map-marker prefix"></i>
											<textarea id="textarea1" class="materialize-textarea"></textarea>
											<label for="textarea1">Address</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<i class="fas fa-mobile-alt prefix"></i> <input id="phone"
												type="text" class="validate"> <label for="phone">Mobile
												Number</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s12">
											<i class="far fa-envelope prefix"></i> <input id="email"
												type="email" class="validate"> <label for="email">Email</label>
										</div>
									</div>
									<div class="row py-1">
										<div class="input-field col s6">
											<i class="fas fa-unlock-alt prefix"></i> <input id="password"
												type="password" data-length="8" class="validate"> <label
												for="password">Password</label>
										</div>
										<div class="input-field col s6">
											<i class="fas fa-unlock-alt prefix"></i> <input
												id="confirmPassword" type="password" data-length="8"
												class="validate"> <label for="confirmPassword">Confirm
												Password</label>
										</div>
									</div>
									<div class="row">
										<div class="input-field col s6">
											<button
												class="btn-floating btn-large waves-effect waves-light red">
												<i class="fas fa-times"></i>
											</button>
										</div>
										<div class="input-field col s6">
											<button
												class="btn-floating btn-large waves-effect waves-light green">
												<i class="fas fa-plus"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>