<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.quinnox.project.orderSupplies.empcrud.model.Employee,
    com.quinnox.project.orderSupplies.empcrud.dao.EmployeeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	
	String id=request.getParameter("id");
	Employee u = EmployeeDAO.getRecordById(Integer.parseInt(id));

	%>
	
	<h1>Edit Employee Details</h1>
	
	<form action="UpdateServlet" method="post">
	
		<input type="hidden" name="emp_id" value="<%=u.getId()%>" />
		<table>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="f_name" value="<%=u.getF_name()%>" /></td>
			</tr>
			
			<tr>
				<td>Last Name:</td>
				<td><input type="text" name="l_name" value="<%=u.getL_name()%>" /></td>
			</tr>
			
			<tr>
				<td>Designation:</td>
				<td><input type="text" name="desig" value="<%=u.getDesig()%>" /></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="text" name="emailid" value="<%=u.getEmail()%>" /></td>
			</tr>
			
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%=u.getPassword()%>" /></td>
			</tr>
			
			<tr>
				<td>Manager Id:</td>
				<td><input type="password" name="mgr_id" value="<%=u.getMgr_id()%>" /></td>
			</tr>
			
			<tr>
				<td colspan="2"><input type="submit" value="Edit User" /></td>
			</tr>
		</table>
		
	</form>
</body>
</html>