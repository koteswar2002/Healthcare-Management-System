<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.banner_image {
	padding-top: 250px;
	padding-bottom: 400px;
	background:
		url("https://img.freepik.com/premium-photo/doctor-hold-icon-health-electronic-medical-record-interface-digital-healthcare-network_34200-712.jpg?w=2000")
		no-repeat left;
	background-size: cover;
}

#formdiv {
	width: 40%;
	height: 110%;
	color: #fff;
	top: 85%;
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
	top:17%;
	color:green;
	font-size: 50px;
	padding-left: 35% 	
}
#text
{
position: absolute;
	font-family: fantasy;
	top:82%;
	color:green;
	font-size: 40px;
	padding-left:32%
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
<title>Medicine Record</title>
</head>
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

	<h2 id="txt">Medicine Record Creation</h2>
	<div class="banner_image"></div>

	<div id="formdiv">

		<!-- <div class="container-fluid p-5 col-9 my-3 bg-pink text-dark"> -->
		<!-- <h2 id="txt"><center>Registration Page</center></h2> -->

		<form:form action="saveMedicine" class="col-lg-6 offset-lg-3"
			modelAttribute="medicineRecord">
			<%-- <div class="form-group">
				<strong><label for="medicineid">Medicine Id</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-user" style="color: white"></i></span>
					<form:input path="medicineId" class="form-control" />
				</div>
				<form:errors cssClass="error" path="medicineId" />
			</div> --%>
			<div class="form-group">
				<strong><label for="medicineName">Medicine Name:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-plus-sign" style="color: white"></i></span>
					<form:input path="medicineName" class="form-control" />
				</div>

				<form:errors cssClass="error" path="medicineName" />
			</div>
			<div class="form-group">
				<strong><label for="cost">Medicine Cost:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-usd" style="color: white"></i></span>
					<form:input path="cost" class="form-control" />
				</div>

				<form:errors cssClass="error" path="cost" />
			</div>

			<div class="form-group">
				<strong><label for="quantity">Quantity:</label></strong>
				<div class="input-group">
					<span class="input-group-addon" id="gly"><i
						class="glyphicon glyphicon-shopping-cart" style="color: white"></i></span>
					<form:input path="quantity" class="form-control" />
				</div>

				<form:errors cssClass="error" path="quantity" />
			</div>

			<input type="submit" class="btn btn-primary" value="Submit">
			<input type="reset" class="btn btn-primary" value="Reset">
		</form:form>
	</div>
	<span id="text">${key1}</span>
</body>
</html>