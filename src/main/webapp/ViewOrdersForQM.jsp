<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Orders List</title>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<style>
		body {
			background-color:khaki;
			text-align: center;
		}
		
		table{
			margin-left: auto;
			margin-right: auto;
		}
			
		.styled-table {
			border-collapse: collapse;
			margin: 25px 0;
			font-size: 0.9em;
			font-family: sans-serif;
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

	<h1>Order Details</h1>
	
	<p style = "color: red;">${message }</p>
	
	<table border="1" width="90%">
		<thead>
			<tr bgcolor="green">
				<th> OrderId</th>
				<th>Emp_id</th>
				<th>Manager_id</th>
				<th>Order_date</th>
				<th>Comment</th>
				<th>Product_id</th>
				<th>Supplier_id</th>
				<th>Accept</th>
				<th>Reject</th>
			</tr>
		</thead>
		
		<c:forEach items="${olist}" var="u">
			<tbody>
			<tr>
				<td>${u.getOrder_id()}</td>
					<td>${u.getEmp_id()}</td>
					<td>${u.getMgr_id()}</td>
					<td>${u.getOrderDate()}</td>
					<td>${u.getComments()}</td>
					<td>${u.getProd_id()}</td>
					<td>${u.getSupplier_id()}</td>
					<td><a href="acceptedByQM.jsp?order_id=${u.getOrder_id()}">Accept</a></td>
					<td><a href="rejectedByQM.jsp?order_id=${u.getOrder_id()}">Reject</a></td>
				</tr>
			</tbody>
		</c:forEach>
		
	</table>
	
	<br />
</body>
</html>
