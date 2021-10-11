<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
	form{
		text-align: center;
	}
	
	select{
		width: 60%;
		height: 45px;
	}
	
	#submit{
		border: none;
		padding: 15px 25px;
		border-radius: 5px;
		background-color: #047f52;
		color: #fff;
	}
	
	#submit:hover{
		background-color: #059862;
		cursor: pointer;
	}
</style>

</head>
<body>

	<form action = "${pageContext.request.contextPath}/SupplierServlet?emp_id=${emp_id }" method = "post">
		<select name = "prod_id">
			<c:forEach items="${plist}" var="u">
				<option value = "${u.getId()}">${u.getName()}</option>
			</c:forEach>
		</select>
		
		<br><br>
		
		<input type = "submit" name = "submit" id = "submit" value = "Select Supplier">
	</form>
</body>
</html>