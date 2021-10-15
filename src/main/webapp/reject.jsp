<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.quinnox.project.orderSupplies.empcrud.dao.OrderDAO,com.quinnox.project.orderSupplies.empcrud.model.Order"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reject</title>

<style>
body{
background-image: url('images/supplier.png');
background-size: 100% 100%;
background-position:50% 10%;
background-repeat: no-repeat;
animation: breath 30s linear infinite;
}
@keyframes breath {
0% { background-size: 150% auto; }
45% { background-size: 110% auto; }
55% { background-size: 110% auto; }
100% { background-size: 150% auto; }
}
b{
color: white;
}
.button{
border: 2px solid white;
width: 300px;
height:40px;
border-radius: 10px;
font-size: 25px;
margin-top: 10px;
}
.button:hover{
background-color:rgba(255,255,255,0.7);
color: black;
box-shadow: 1px 1px 1px 1px white;
}
.back-button{
width: 60px;
height: 60px;
border-radius: 60%;
background: rgba(0,0,0,0.7);
color: white;
font-size: 30px;
}



.back-button:hover{
background-color:rgba(255,255,255,0.7);
color: black;
box-shadow: 1px 1px 1px 1px white;
}
.main{
background: rgba(0,0,0,0.7);
border-radius: 30px;
position: absolute;
left: 25%;
width: 650px;
height: 80px;
color: white;
margin-top: 80px;
align-content: center;
font-size: 50px;
padding-top: 20px;
padding-left: 40px;
}
.main_input{
background: rgba(0,0,0,0.8);
border-radius: 30px;
position: absolute;
left: 25%;
width: 650px;
height: 250px;
margin-top: 200px;
padding: 20px;
font-size: 25px;
}
.main_input:hover{
box-shadow: 1px 1px 1px 1px white;
}
select{
font-size: 20px;
width: 256px;
height: 30px;
border: none;
outline:none;
background: none;
border-bottom: 3px solid white;
color:white;
border-radius: 20px;
background-color: rgba(0,0,0,0.7);
}
input{
font-size: 20px;
width: 250px;
height: 25px;
outline:none;
background:none;
border: none;
outline:none;
border-bottom: 3px solid white;
color: white;
border-radius: 10px;
background-color: rgba(0,0,0,0.7);
}
</style>

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