<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.quinnox.project.orderSupplies.empcrud.model.Employee,
    com.quinnox.project.orderSupplies.empcrud.dao.EmployeeDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body{
background-image: url('images/6.png');
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