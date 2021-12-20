<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="bean.Cart" %>
<%@ page import="bo.CartBo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
CartBo gh = new CartBo();

String masach=request.getParameter("masach");

CartBo sl=null;
if (masach!=null)
{
	//b1: gán sesion vào biến
	gh=(CartBo) session.getAttribute("gh");
	gh.xoa(masach);
	session.setAttribute("gh", gh);
}
//Hien thi gio
 response.sendRedirect("htgio.jsp");
%>
</body>
</html>