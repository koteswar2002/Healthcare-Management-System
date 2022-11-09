<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validate()
{
var adminid=document.getElementById("adminid").value;
var password=document.getElementById("password").value;
document.getElementById("spanid").innerHTML="";
document.getElementById("spanpassword").innerHTML="";
if(adminid=="")
{
document.getElementById("spanid").innerHTML="Admin id should not be empty";
return false;
}
if(password=="")
{
document.getElementById("spanpassword").innerHTML="Password should not be empty";
return false;
}
}

</script>
<style>
#formdiv {
	width: 40%;
	height: 50%;
	color: #fff;
	top: 70%;
	left: 50%;
	position: absolute;
	transform: translate(-50%, -50%);
	box-sizing: border-box;
}

#gly {
	background-color: black;
}

.error {
	color: red;
}

#txt {
	position: absolute;
	font-family: fantasy;
	top: 40%;
	color: green;
	font-size: 50px;
	padding-left: 40%
}

.banner_image {
	padding-top: 110px;
	padding-bottom: 500px;
	background:
		url("https://i.pinimg.com/736x/da/f4/34/daf434951561104242f9ef1102091759.jpg")
		no-repeat left;
	background-size: cover;
}

#text {
	position: absolute;
	font-family: fantasy;
	top: 100%;
	color: red;
	font-size: 30px;
	padding-left: 45%
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="#">Healthcare Management System</a> <!-- <a
		class="navbar-brand" href="#"><i class="glyphicon glyphicon-home"></i>&nbsp;Home</a> -->
	<a class="navbar-brand" href="register"><i
		class="glyphicon glyphicon-log-in"></i>&nbsp;Sign up</a> <a
		class="navbar-brand" href="login"><i
		class="glyphicon glyphicon-log-in"></i>&nbsp;Log in</a> </nav>
	<h4 id="txt">Admin Login Form</h4>
	<div class="banner_image"></div>
	<div id="formdiv">
		<div class="container-fluid p-5 col-9 my-3 ">


			<form:form action="saveLogin" class="col-lg-9 offset-lg-3"
				modelAttribute="login" method="post" onsubmit="return validate()">
				<div class="form-group">
					<strong><label for="age">Admin Id:</label></strong>
					<div class="input-group">
						<span class="input-group-addon" id="gly"><i
							class="glyphicon glyphicon-user" style="color: white"></i></span>
						<form:input path="adminid" id="adminid" class="form-control" />
						</div>
						<span id="spanid"></span><br/>
					
				</div>
				<form:errors cssClass="error" path="adminid" />
				<br>
				<div class="form-group">
					<strong><label for="age">Password:</label></strong>
					<div class="input-group">
						<span class="input-group-addon" id="gly"><i
							class="glyphicon glyphicon-lock" style="color: white"></i></span>

						<form:password path="password" id="password" class="form-control" />
						</div>
						<span id="spanpassword"></span><br/>

					
				</div>
				<form:errors cssClass="error" path="password" />

				<br>
				<input type="submit" class="btn btn-primary" value="Login">
				<input type="submit" class="btn btn-primary" value="Cancel">
			</form:form>
		</div>
	</div>
	<span id="text">${key1}</span>
</body>
</html>