<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.banner_image {
	padding-top: 300px;
	padding-bottom: 450px;
	background:
		url("https://biofreshblog.files.wordpress.com/2013/02/piles-of-pills.jpg")
		no-repeat left;
	background-size: cover;
}

#formdiv {
	width: 40%;
	height: 110%;
	color: #fff;
	top: 82%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
}

.error {
	color: red;
}

#gly {
	background-color: black;
}

.container {
	background-color: pink;
}

#txt {
	position: absolute;
	font-family: fantasy;
	top: 17%;
	color: green;
	font-size: 55px;
	padding-left: 35%
}

#text {
	position: absolute;
	font-family: fantasy;
	top: 125%;
	color: blue;
	font-size: 50px;
	padding-left: 25%
}

#sign {
	float: right;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Registration Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="#">Healthcare Management System</a> <!-- <a
		class="navbar-brand" href="#"><i class="glyphicon glyphicon-home"></i>&nbsp;Home</a> -->
	<a class="navbar-brand" href="register"><i
		class="glyphicon glyphicon-log-in"></i>&nbsp;Sign up</a> <a
		class="navbar-brand" href="login"><i
		class="glyphicon glyphicon-log-in"></i>&nbsp;Log in</a> </nav>
	<span id="txt">Admin Registration Form</span>
	<div class="banner_image"></div>
	<div id="formdiv">

		<!-- <div class="container-fluid p-5 col-9 my-3 bg-pink text-dark"> -->
		<!-- <h2 id="txt"><center>Registration Page</center></h2> -->
		<form:form action="saveRegister" class="col-lg-6 offset-lg-3"
			modelAttribute="register">
			<div class="form-group">
				<strong><label for="firstname" class="text-dark">Firstname:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="firstname" class="form-control" />
				</div>
				<form:errors cssClass="error" path="firstname" />
			</div>
			<div class="form-group">
				<strong><label for="lastname" class="text-dark">Lastname:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="lastname" class="form-control" />
				</div>

				<form:errors cssClass="error" path="lastname" />
			</div>
			<div class="form-group">
				<strong><label for="age" class="text-dark">Age:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="age" class="form-control" />
				</div>

				<form:errors cssClass="error" path="age" />
			</div>

			<div class="form-group">
				<strong><label for="gender" class="text-dark">Gender:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>&nbsp;
					Male:
					<form:radiobutton path="gender" value="male" />
					Female:
					<form:radiobutton path="gender" value="female" />
				</div>
				<form:errors cssClass="error" path="gender" />
			</div>

			<div class="form-group">
				<strong><label for="contactnumber" class="text-dark">Contact
						Number:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-earphone" style="color: white"></i></span>
					<form:input path="contactnumber" class="form-control"
						pattern="[0-9]{10}" />
				</div>
				<form:errors cssClass="error" path="contactnumber" />
			</div>

			<div class="form-group">
				<strong><label for="adminid" class="text-dark">Admin
						Id:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="adminid" class="form-control" />
				</div>

				<form:errors cssClass="error" path="adminid" />
			</div>

			<div class="form-group">
				<strong><label for="password" class="text-dark">Password:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-lock" style="color: white"></i></span>
					<form:password path="password" class="form-control" />
				</div>
				<form:errors cssClass="error" path="password" />
			</div>

			<input type="submit" class="btn btn-primary" value="Register">
			<input type="reset" class="btn btn-primary" value="Reset">
		</form:form>
	</div>
	<span id="text">${key1}</span>
</body>
</html>

