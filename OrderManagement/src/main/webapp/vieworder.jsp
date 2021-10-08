<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Orders List</title>
<link rel="stylesheet" href="style/employee.css">
</head>
<body>
	<h1>Order Details</h1>
	<table border="1" width="90%">
		<tr bgcolor="green">
			<th> OrderId</th>
			<th>Emp_id</th>
			<th>Manager_id</th>
			<th>Comment</th>
			<th>Product_id</th>
			<th>Accept</th>
			<th>Reject</th>
		</tr>

		<c:forEach items="${elist}" var="u">
			<tr bgcolor="yellow">
				<td>${u.getOrderId()}</td>
				<td>${u.getEmp_id()}</td>
				<td>${u.getMgr_id()}</td>
				<td>${u.getComment()}</td>
				<td>${u.getP_id()}</td>
				<td><a href="accept.jsp?id=${u.getOrderId()}">Accept</a></td>
				<td><a href="reject.jsp?id=${u.getOrderId()}">Reject</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>