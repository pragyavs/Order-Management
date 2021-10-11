<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
	body{
		background-color:khaki;
		text-align: center;
	}
	
	#left{
		float: left;
	}
		
	.styled-table {
		border-collapse: collapse;
		margin: 25px 0;
		font-size: 0.9em;
		font-family: sans-serif;
		width: 100%;
		min-width: 400px;
		box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	}
	
	.styled-table thead tr {
		background-color: #009879;
		color: #ffffff;
		text-align: left;
	}
	
	.styled-table th,
	.styled-table td {
		padding: 12px 15px;
	}
	
		.styled-table tbody tr {
		border-bottom: 1px solid #dddddd;
	}
	
	.styled-table tbody tr:nth-of-type(even) {
		background-color: #f3f3f3;
	}
	
	
	
	.styled-table tbody tr:last-of-type {
		border-bottom: 2px solid #009879;
	}
	.styled-table tbody tr.active-row {
		font-weight: bold;
		color: #009879;
	}
	
</style>
	
</head>
<body>
	<div id="left" class="btn btn-info btn-lg">
		<a href="admin.html"><span class="glyphicon glyphicon-back">Back</span></a>
	</div>
	
	<div align="right">
		<a href="admin.html" class="btn btn-info btn-lg">
		<span class="glyphicon glyphicon-log-out"></span> Log out
		</a>
	</div>

	<h1>Employee Details</h1>
	
	<p style = "color: red;"><%=request.getParameter("message") %></p>
	
	<table class="styled-table" width="90%">
		<thead>
		<tr>
			<th>Id</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Designation</th>
			<th>Email</th>
			<th>Password</th>
			<th>Manager Id</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		</thead>
		
		<c:forEach items="${elist}" var="u">
			<tbody>
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getF_name()}</td>
				<td>${u.getL_name()}</td>
				<td>${u.getDesig()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getMgr_id()}</td>
				<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a href="deleteUser.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
			</tbody>
		</c:forEach>
	</table>
	
</body>
</html>