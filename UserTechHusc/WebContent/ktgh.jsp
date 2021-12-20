<%@page import="bean.Customer"%>
<%@page import="bo.CustomerBo"%>
<%@page import="bean.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.ProductBo"%>
<%@page import="bo.CategoryBo"%>
<%@page import="bean.Cart"%>
<%@page import="bo.CartBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
    	request.setCharacterEncoding("utf-8");
	   	CustomerBo khbo=new CustomerBo();
	   	String un=request.getParameter("user");
	   	String pass=request.getParameter("pw");
	   	Customer kh=khbo.ktdn(un, pass);
	   	if(kh!=null){
	   		session.setAttribute("dn", kh);
	   			   session.setAttribute("kt", (long)1);
	   			   response.sendRedirect("menu.jsp");
	   		   }else{
	   			   response.sendRedirect("menu.jsp");
	   			   session.setAttribute("kt", (long)0);
	   		   }
%>

</body>
</html>