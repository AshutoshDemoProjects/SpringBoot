<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<jsp:include page="links.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container bg-primary my-3">
		<div class="row">
			<div class="col-3 align-self-center">
				<h4 class="text-light">This is a registration form to
					demonstrate registration with photo</h4>
			</div>
			<div class="col-9  bg-light my-2 p-5"
				style="border-bottom-left-radius: 10% 50%; border-top-left-radius: 10% 50%;">
				<form:form method="post" enctype="multipart/form-data">
					<div class="form-row">
						<div class="col">
							<div class="form-group">
								<form:input type="text" path="firstName" class="form-control"
									placeholder="First Name *" />
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<form:input type="text" path="lastName" class="form-control"
									placeholder="Last Name *" />
							</div>
						</div>
					</div>
					<div class="form-row">
						<div class="col">
							<div class="form-group">
								<form:input type="text" path="userName" class="form-control"
									placeholder="User Name *" />
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<form:input type="password" path="password" class="form-control"
									placeholder="Password *" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="custom-control custom-radio custom-control-inline">
							<form:radiobutton path="gender"
								class="custom-control-input" value="male" id="rad1"/> <label
								class="custom-control-label" for="rad1">Male</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<form:radiobutton path="gender"
								class="custom-control-input" value="female" id="rad2"/> <label
								class="custom-control-label" for="rad2">Female</label>
						</div>
					</div>
					<div class="form-group">
						<form:input type="text" class="form-control" path="email" placeholder="Email *" />
					</div>
					<div class="form-group">
						<form:textarea class="form-control" path="address" placeholder="Address *"></form:textarea>
					</div>
					<div class="form-row">
						<div class="col">
							<div class="form-group">
								<form:select class="form-control" path="state">
									<option>Maharashtra</option>
									<option>Rajasthan</option>
									<option>Punjab</option>
									<option>Karnataka</option>
									<option>Sikkim</option>
								</form:select>
							</div>
						</div>
						<div class="col">
							<div class="form-group">
								<fieldset disabled>
									<input type="text" class="form-control" value="India" />
								</fieldset>
							</div>
						</div>
					</div>
					<div class="custom-file">
						<input type="file" class="custom-file-input" name="photo"
							id="customFile"> <label class="custom-file-label"
							for="customFile">Select Photo *</label>
					</div>
					<div class="row m-2 justify-content-end">
						<button class="  btn btn-primary">Register</button>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>