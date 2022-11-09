<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.banner_image {
	padding-top: 230px;
	padding-bottom: 450px;
	background:
		url("https://www.afd.fr/sites/afd/files/styles/visuel_principal/public/2019-10-09-27-46/flickr-marco-verch.jpg?itok=XH4x7-Y4")
		no-repeat left;
	background-size: cover;
}

#formdiv {
	width: 40%;
	height: 110%;
	color: #fff;
	top: 80%;
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
	 font-size : 40px;
	padding-left: 40%;
	font-size: 40px;
}
#text
{
position: absolute;
	font-family: fantasy;
	top: 125%;
	color: blue;
	font-size: 50px;
	padding-left: 25%
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
<title>Branch Admin Edit</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
	<div class="navbar-nav">
		<a class="navbar-brand" href="#">Healthcare Management System</a> <a
			class="navbar-brand" href="home"><i class="glyphicon glyphicon-home"></i>&nbsp;Home</a>
		<a class="navbar-brand" href="adminInfo"><i
			class="glyphicon glyphicon-log-in"></i>&nbsp;BranchAdminInfo</a> <a
			class="navbar-brand" href="medicineInfo"><i
			class="glyphicon glyphicon-log-in"></i>&nbsp;MedicineInfo</a>
		<li class="dropdown"><a class="navbar-brand"
			data-toggle="dropdown" href="#"><i
				class="glyphicon glyphicon-log-in"></i>&nbsp;BranchAdminRequests <span
				class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="branchAdminRequest"><i
						class="glyphicon glyphicon-log-in"></i>&nbsp;BranchAdminRequestPage</a></li>
				<li><a href="RequestDetails"><i
						class="glyphicon glyphicon-log-in"></i>&nbsp;BranchAdminRequestDetails</a></li>
			</ul></li> <a class="navbar-brand" href="medicineInfo"><i
			class="glyphicon glyphicon-log-in"></i>&nbsp;Update Stocks</a> <a
			class="navbar-brand" href="login"><i
			class="glyphicon glyphicon-log-in"></i>&nbsp;Logout</a>
	</div>
	</nav>

	<div id="txt">Branch Admin Details</div>
	<div class="banner_image"></div>
	<div id="formdiv">
		<form:form method="post"
			action="/ProjectMedicineMonitoringSystem/saveBranchAdmin"
			class="col-lg-6 offset-lg-3">

			<div class="form-group">
				<strong><label for="firstname" class="text-dark">Firstname:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="firstName" class="form-control"/>
				</div>
				<form:errors cssClass="error" path="firstName" />
			</div>
			<div class="form-group">
				<strong><label for="lastname" class="text-dark">Lastname:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="lastName" class="form-control" />
				</div>

				<form:errors cssClass="error" path="lastName" />
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
				<strong><label for="age" class="text-dark">Gender:</label></strong>
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
				<strong><label for="age" class="text-dark">Contact
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
				<strong><label for="age" class="text-dark"> Branch
						Admin Id:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="branchAdminId" class="form-control" />
				</div>

				<form:errors cssClass="error" path="branchAdminId" />
			</div>

			<div class="form-group">
				<strong><label for="age" class="text-dark">City:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-home" style="color: white"></i></span>
					<form:input path="city" class="form-control" />
				</div>
				<form:errors cssClass="error" path="city" />
			</div>
			<input type="submit" class="btn btn-primary" value="save">
		</form:form>
	</div>
	<%--  <span id="text">${key1}</span>  --%>
</body>
</html>