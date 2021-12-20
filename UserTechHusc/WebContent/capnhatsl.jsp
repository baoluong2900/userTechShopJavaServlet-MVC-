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
String soluong=request.getParameter("soluong");
String masach=request.getParameter("ms");

out.print(masach);
CartBo sl=null;
if (request.getParameter("ms")!=null)
{
	if (request.getParameter("btncapnhat")!=null)
	{	
	//b1: gán sesion vào biến
	gh=(CartBo) session.getAttribute("gh");
	gh.SuaSoluong(Integer.parseInt(masach),Integer.parseInt(soluong) );
	session.setAttribute("gh", gh);
	}
	/* if (request.getParameter("btnxoa")!=null)
	{
		//b1: gán sesion vào biến
		gh=(giohangbo) session.getAttribute("gh");
		gh.xoa(masach);
		session.setAttribute("gh", gh);
	} */
	
	//Hien thi gio
	 response.sendRedirect("htgio.jsp");
}
%>
</body>
</html>