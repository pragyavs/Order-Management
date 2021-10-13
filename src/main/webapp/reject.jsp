<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.quinnox.project.orderSupplies.empcrud.dao.OrderDAO,com.quinnox.project.orderSupplies.empcrud.model.Order"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reject</title>
<link rel="stylesheet" href="style/employee.css">
</head>
<body>
	
			<%
	String id = request.getParameter("Order_id");
	Order u = OrderDAO.getRecordById(Integer.parseInt(id));
	%>
	
		<h1>Update Order Details</h1>
	<form action="RejectServlet" method="post">
	<input type="hidden" name="emp_id" value="<%=u.getEmp_id()%>" />
	<input type="hidden" name="mgr_id" value="<%=u.getMgr_id()%>" />
	<input type="hidden" name="Order_date" value="<%=u.getOrderDate()%>" />
	<input type="hidden" name="prod_id" value="<%=u.getProd_id()%>" />
	<input type="hidden" name="supplier_id" value="<%=u.getSupplier_id()%>" />
		<table>
			<tr>
				<td>Order ID:</td>
				<td><input type="text" name="Order_id" value="<%=u.getOrder_id()%>" readonly/></td>
			</tr>
			<tr>
				<td>Comments:</td>
				<td><input type="text" name="Comments" value="<%=u.getComments()%>" /></td>
			</tr>
			<tr>
				<td>Status:</td>
				<td><input type="text" name="status" value="rejected" readonly/></td>
			</tr>
			<tr>
				<td>Rejected By:</td>
				<td><input type="text" name="rejected_by" value="supplier" readonly/></td>
			</tr>
			<tr>
				<td>Next State:</td>
				<td><input type="text" name="next_state" value="rejected" readonly/> </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Reject Order" /></td>
			</tr>
		</table>
	</form>
</body>
</html>