<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.txt {
	text-align: center; top : 100px;
	left: 120px;
	text-align: center;
	font-family: fantasy;
	font-size: 50px;
	color: green;
	top: 100px;
}

#tbl {
	padding-top: 20%
}
#addadmin
{
border-width:5px;
background-color:blue;
color:white;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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

		<h4 class="txt">Medicine Information Page</h4>
	</div>
	<table class="table table-bordered table-sm" id="tbl">
		<thead class="thead-light">
			<tr>
				<th>Medicine Id</th>
				<th>Medicine Name</th>
				<th>Medicine Cost</th>
				<th>Quantity</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			</thead>
			<c:forEach var="user" items="${listOfUsers}">
			<tr>
				<td>${user.medicineId}</td>
				<td>${user.medicineName}</td>
				<td>${user.cost}</td>
				<td>${user.quantity}</td>
				<td><a href="viewmedicine/${user.medicineId}" class="btn btn-success">Edit</a></td>
				<td><a href="deletemedicine/${user.medicineId}" class="btn btn-danger">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<a href="medicineRecord" class="btn btn-primary">Add Medicine</a>
</body>
</html>