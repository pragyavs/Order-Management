<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.quinnox.project.orderSupplies.empcrud.dao.ProductDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u"
		class="com.quinnox.project.orderSupplies.empcrud.model.Product">
	</jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
	int i = ProductDAO.save(u);
	if (i > 0) {
		response.sendRedirect("addProdSuccess.jsp");
	} else {
		response.sendRedirect("addProdError.jsp");
	}
	%>
</body>
</html>