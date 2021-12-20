<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="TinhTong.jsp">
            
             <label> n=: </label>
             <input name="txtn" type="number">
             <input name="but1" type="submit" value="Đăng nhập">
         </form>
         <%
         if (session.getAttribute("ss")==null){
        	 session.setAttribute("ss",(long) 0);
         }
           String tam=request.getParameter("txtn");
            
            if(tam!=null){
            	long n=Long.parseLong(tam);
            	
            	//b1: gan sesion vao 1 bien
            	long s=(long)session.getAttribute("ss");
            	//thay đổi giá trị của biến :s
            	s=s+n;
            	//lưu biến vào session
            	session.setAttribute("ss", s);
            	out.print("Tong="+session.getAttribute("ss"));
            }
         %>
         
</body>
</html>