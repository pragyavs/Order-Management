<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.quinnox.project.orderSupplies.empcrud.dao.EmployeeDAO,
    com.quinnox.project.orderSupplies.empcrud.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%
		String userType = request.getParameter("userType");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("password");
		
		Employee e1 = new Employee();
		e1.setDesig(userType);
		e1.setEmail(userName);
		e1.setPassword(userPassword);
		
		boolean status = EmployeeDAO.loginEmployee(e1);

		if(status){
			if(userType.equals("supplier")){
				response.sendRedirect("Supplier.html?userName=" + userName);
			}
			
			if(userType.equals("emp")){
				response.sendRedirect("employee.html?userName=" + userName);
			}
			
			if(userType.equals("manager")){
				response.sendRedirect("manager.html?userName=" + userName);
			}
			
			if(userType.equals("admin")){
				response.sendRedirect("admin.html?userName=" + userName);
			}
		}
		else{
			String errMsg = "Invalid User Name or Password";
			response.sendRedirect("index.html?var=" + errMsg);
		}
		
	%>
</body>
</html>