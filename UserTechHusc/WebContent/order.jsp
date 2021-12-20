<%@page import="bean.Order"%>
<%@page import="bo.OrderBo"%>
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
<title>Tech HUSC shop</title>
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
    	ArrayList<Category> dsloai =(ArrayList<Category>)request.getAttribute("dsloai");
        ArrayList<Product> ds=(ArrayList<Product>)request.getAttribute("dssach");
        ArrayList<Order> dsloai1=(ArrayList<Order>)request.getAttribute("dsloai1");
 %>
 <table width="1000" align="center">
    
    <tr> 
       <td valign="top" width="200">
       		<table class="table table-hover">
       		<%
       		for(Category loai:dsloai){
       		%>
       			<tr>
       			<td>
        		<a href="HtSach?ml=<%=loai.getCategoryId()%>&find="<%=request.getParameter("txtfind")%>> <%=loai.getName()%>  </a>
        		</td>
        		</tr>
            <%
            }
            %> 
       		</table>
        </td>
        <td valign="top" width="600"> 
        
        	<table class="table table-hover">
              <%
             OrderBo gh1;
                                         
                            if(session.getAttribute("gh")!=null){
                            	gh1=(OrderBo) session.getAttribute("gh");
              %>
	
	<%
	for(Order g1: dsloai1) {
	%>
	
	

			<h2>  <%=g1.getAmount() %></h2>	 


		
		
	<% }%>	
	
	
	
	<% } %>
	</table>
	
   <div>

	<a href="HtSach"><button class="btn">Tiếp tục mua hàng</button></a>
	<a href="datmuaController"><button class="btn btn-success">Xác nhận đặt mua</button></a>
</div> 
	 <td valign="top" width="200"> 
        <form action="htgio.jsp" method="post">
        <label> Tìm kiếm: </label> <br>
        <input name="txtfind" type="text" class="form-control">
        <input name="but" type="submit" value="Tìm kiếm" class="btn-primary">
        	</form>
        </td>
</table>

</body>
</html>
