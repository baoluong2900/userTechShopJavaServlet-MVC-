<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Cart" %>
<%@ page import="bo.CartBo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
CartBo gh = new CartBo();
gh=(CartBo) session.getAttribute("gh");
gh.XoaHet();
session.setAttribute("gh", gh);
	response.sendRedirect("htgio.jsp");
%>
</body>
</html>