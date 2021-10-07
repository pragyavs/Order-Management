<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.quinnox.project.orderSupplies.empcrud.dao.EmployeeDAO,
    com.quinnox.project.orderSupplies.empcrud.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
</head>
<body>
	<%
		String userType = request.getParameter("userType");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("password");
		System.out.println(userType + " " + userName + " " + userPassword);
	%>
</body>
</html>