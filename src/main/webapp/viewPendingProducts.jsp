<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
	body{
		padding: 0;
		margin: 0;
	}
	
	#orders {
	  border-collapse: collapse;
	  width: 100%;
	  text-align: center;
  	}

	#orders td, #orders th {
	  border: 1px solid #ddd;
	  padding: 8px;
	}
	
	#orders tr {background-color: #f2f2f2;}
	
	#orders tr:hover {background-color: #ddd;}
	
	#orders th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  background-color: #04AA6D;
	  color: white;
	}
	
	th {
      position: sticky;
      top: 0;
    }
	
</style>

</head>
<body>
	
	<input type = "hidden" name = "emp_id" value = "${emp_id }">
	<input type = "hidden" name = "prod_id" value = "${prod_id }">
	<input type = "hidden" name = "status" value = "Processing">
	<input type = "hidden" name = "next_state" value = "supplier">
	<input type = "hidden" name = "comment" value = "">
	<input type = "hidden" name = "rejected_by" value = "">

	<p style = "color: red;">${message }.</p>

	<table id = "orders">
		<tr>
			<th>Emp Id</th>
			<th>Product</th>
			<th>Supplier</th>
			<th>Approve</th>
			<th>Reject</th>
		</tr>
		<c:forEach items="${olist}" var="u" varStatus = "status">
			<tr>
				<td>${u.getEmp_id()}</td>
				<td value = "${plist[status.index].getName()}">${plist[status.index].getName()}</td>
				<td value = "${slist[status.index].getSupplierId()}">${slist[status.index].getName()}</td>
				<td><a href = "OrderServlet?OrderId=${u.getOrder_id() }&mgr_id=${u.getMgr_id()}&next_state=mgr">Approve</a></td>
				
				<td><a href = "rejectForm.jsp?order_id=${u.getOrder_id() }&emp_id=${u.getEmp_id()}&prod_id=${plist[status.index].getId()}&sup_id=${slist[status.index].getSupplierId()}&rej_by=mgr">Reject</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>














