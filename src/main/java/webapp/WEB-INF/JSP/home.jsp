<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.banner_image {
	padding-top: 400px;
	padding-bottom: 400px;
	background:
		url("https://t4.ftcdn.net/jpg/02/71/97/81/360_F_271978145_xEDDXL3vrFLGF3sxoVyrUVDNrYvTHPC5.jpg")
		no-repeat left;
	background-size: cover;
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
<title>Home Page</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
	<div class="navbar-nav">
		<a class="navbar-brand" href="#">Healthcare Management System</a> <a
			class="navbar-brand" href="#"><i class="glyphicon glyphicon-home"></i>&nbsp;Home</a>
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

	<div class="banner_image"></div>
</body>
</html>