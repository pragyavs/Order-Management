<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
	form{
		background-color: #90949d;
	}
</style>

<body>
	
	<%
		String order_id = request.getParameter("order_id");
		String emp_id = request.getParameter("emp_id");
		String prod_id = request.getParameter("prod_id");
		String sup_id = request.getParameter("sup_id");
		String rej_by = request.getParameter("rej_by");
	%>
	<form action = "rejectOrder.jsp">
		<label for = "order_id">Order Id:</label><br>
		<input type = "text" id = "order_id" name = "order_id" value = "<%=order_id %>" readonly>
		<br><br>
		<label for = "emp_id">Emp Id:</label><br>
		<input type = "text" id = "emp_id" name = "emp_id" value = "<%=emp_id %>" readonly>
		<br><br>
		<label for = "prod_id">Product Id:</label><br>
		<input type = "text" id = "prod_id" name = "prod_id" value = "<%=prod_id %>" readonly>
		<br><br>
		<label for = "sup_id">Supplier Id:</label><br>
		<input type = "text" id = "sup_id" name = "sup_id" value = "<%=sup_id %>" readonly>
		<br><br>
		<label for = "comment">Comments:</label><br>
		<textarea id = "comment" name = "comment" rows = "4" cols = "40"></textarea>
		<br><br>
		<label for = "rejected_by">Rejected by:</label><br>
		<input type = "text" id = "rejected_by" name = "rejected_by" value = "<%=rej_by %>" readonly>
		<br><br>
		<input type = "submit" value = "Confirm">
	</form>
</body>
</html>