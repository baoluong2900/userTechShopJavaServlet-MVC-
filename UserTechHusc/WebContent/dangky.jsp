<%@page import="bean.Customer"%>
<%@page import="bean.Category"%>
<%@page import="bean.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.ProductBo"%>
<%@page import="bo.CategoryBo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Tech HUSC Shop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
response.setCharacterEncoding("utf-8");
	request.setCharacterEncoding("utf-8");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="HtSach">Trang chủ</a></li>
      <li><a href="htgio.jsp">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="OrderController">Lịch sử </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
		<%
      		Customer kh=(Customer)session.getAttribute("dn");
      				if(kh!=null){
      		%>
		 <li><a href="#">Xin chao: <%=kh.getName()%> </a></li>
           <%}else {%>
           <li><a href="#" data-toggle="modal" data-target="#myModal">
           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
            <%} %>
    </ul>
  </div>
</nav>
 
                       
</body>
</html>








