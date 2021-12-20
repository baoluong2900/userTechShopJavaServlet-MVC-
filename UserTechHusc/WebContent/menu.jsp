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
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
   
    <ul class="nav navbar-nav">
      <li class="active"><a href="HtSach">Trang chủ</a></li>
      <li><a href="htgioController">Giỏ hàng</a></li>
      <li><a href="#">Thanh toán</a></li>
      <li><a href="OrderController">Lịch sử </a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
		<%
      		Customer kh=(Customer)session.getAttribute("dn");
      		      		      				if(kh!=null){
      		%>
		 <li><a href="#">Xin chao: <%=kh.getName()%> </a></li>
		 <li><a href="dangxuatController"><span class="glyphicon glyphicon-user"></span> Đăng Xuất</a></li>
           <%
           }else{
           %>
           <li><a href="#" data-toggle="modal" data-target="#sigup"><span class="glyphicon glyphicon-user"></span> Đăng ký</a></li>
			<li><a href="#" data-toggle="modal" data-target="#myModal">

           <span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
              <%
              if(session.getAttribute("kt")!=null && session.getAttribute("kt").toString().equals("0")){
              %>
             		 <script>alert('Dang nhap sai');</script>
              <%
              }
              %>
           <%
           }
           %>
    </ul>
  </div>
</nav>

<!--modal đăng ký -->


<!-- Button Đăng nhập -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal">&times;</button>
      <!--   <h4 class="modal-title">Đăng nhập hệ thống</h4> -->   
        </div>
        <div class="modal-body">
  				<form action="ktdnController" method="post">
 		 <!--  	<label>Tài khoản</label><br>
  				<input type="text" id="TenDN" name="TenDN"><br>
  				<label>Mật khẩu</label><br>
  				<input type="passWord" id="Matkhau" name="Matkhau"><br>

 		-->			
 				
 				<div class="card">
                      <div class="card-header">
                        <img src="resources/img/logo.png" >
                        Đăng nhập hệ thống
                      </div>
                      <div class="card-body">
                            <div class="form-group">
                              <label for="TenDN">Tên đăng nhập</label>
                              <input type="text" class="form-control" name="TenDN" id="TenDN" aria-describedby="TenDNHid" placeholder="nhập tên tài khoản">
                              
                            </div>
                            <div class="form-group">
                              <label for="password">Mật khẩu</label>
                              <input type="password" class="form-control" name="Matkhau" id="Matkhau" aria-describedby="passwordHid" placeholder="nhập mật khẩu">
                           
                            </div>
        
                   
                      </div>
                      <div class="card-footer text-muted">
                      
                       <a href="listType">   <button class="btn btn-primary">Đăng nhập</button></a>
                     
                   
               		 </div>


                  
                    </div>
 				
 				 
 				
 				 
				</form>
  			</div>
      </div>
    </div>
 </div>
 
 <div class="modal fade" id="sigup" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
           <!-- <h2 style="text-align:center">ĐĂNG KÝ <br> THÀNH VIÊN</h2>  -->  
            </div>
            <div class="modal-body">
            
            

               <form action="ktdkController" method="post">
                    <div class="card">
                      <div class="card-header">
                        <img src="resources/img/logo.png" >
                        Đăng nhập ký
                      </div>
                      <div class="card-body">
                            <div class="form-group">
                              <label for="email">Email</label>
                              <input type="text" class="form-control" name="email" id="TenDN" aria-describedby="emailHid" placeholder="nhập emailn">
                              
                            </div>
                            
                             <div class="form-group">
                              <label for="username">Tên tài khoản</label>
                              <input type="text" class="form-control" name="username" id="TenDN" aria-describedby="usernameHid" placeholder="nhập tên tài khoản">
                              
                            </div>
                            
                      
                            
                            <div class="form-group">
                              <label for="password">Mật khẩu</label>
                              <input type="password" class="form-control" name="password" id="password" aria-describedby="passwordHid" placeholder="nhập mật khẩu">
                           
                            </div>
                            
                             <div class="form-group">
                              <label for="Enterpassword">Nhập lại Mật khẩu</label>
                              <input type="password" class="form-control" name="Enterpassword" id="Enterpassword" aria-describedby="EnterpasswordHid" placeholder="nhập lại mật khẩu">
                           
                            </div>
                            
                            
                                  
                              <div class="form-group">
                              <label for="sodth">Số điện thoại</label>
                              <input type="text" class="form-control" name="sodth" id="TenDN" aria-describedby="sodthHid" placeholder="nhập số điện thoại">
                              
                            </div>
                            
        
        
                   
                      </div>
                      <div class="card-footer text-muted">
                      
                      
                         <a href="HtSach"> <button class="btn btn-primary">Đăng nhập</button></a>
                     
                   
               		 </div>


                  
                    </div>
 				
                            
                            
             <!--                   <tbody>
                               	     <tr style="height:40px">
                                        <td> Email:</td>
                                         <br>
                                        <td>
                                            <input id="email" name="email" type="text" value="">
                                        </td>
                                    </tr>
                                    <br>
                                    <tr style="height:40px">
                                        <td> Tên đăng nhập:</td>
                                        
                                        <td>
                                           <br>
                                            <input id="username" name="username" type="text" value="">
                                        </td>
                                    </tr>
                                     <br>
                                
                                    <tr style="height:40px">
                                        <td>  Mật khẩu:</td>
                                        <br>
                                        <td>
                                            <input id="password" name="password" type="password">
                                        </td>
                                    </tr>
                                     <br>
                                    <tr style="height:40px">
                                        <td>Mật khẩu nhập lại: </td>
                                        <br>
                                        <td>
                                            <input id="Matkhaunhatrlai" name="Matkhaunhatrlai" type="password">
                                        </td>
                                    </tr>
                                     <br>
                           
                                    <tr style="height:40px">
                                        <td>Điện thoại:</td>
                                        <br>
                                        <td>
                                            <input id="sodth" name="sodth" type="text" value="">
                                        </td>
                                    </tr>
                                     <br>
                     
                                    <tr style="height:40px">
                                        <br>
                                        <td>
                                          
                                           
                                        </td>
                                        
                                        
                                    </tr>
                                </tbody> -->
                            </form >
            </div>
      </div>
    </div>
 </div>
 <%
 response.setCharacterEncoding("utf-8");
  	request.setCharacterEncoding("utf-8");
  	ArrayList<Category> dsloai =(ArrayList<Category>)request.getAttribute("dsloai");
      ArrayList<Product> ds=(ArrayList<Product>)request.getAttribute("dssach");
 %>
 
 <%
  String input = "300.0";
     input = input.replace(',', '.');
     int decimalSeperator = input.lastIndexOf('.');

     if (decimalSeperator > -1) {
         input = input.substring(0, decimalSeperator).replace(".", "") + input.substring(decimalSeperator);
     }

     Double doubleVal = Double.valueOf(input);
     Double doubleVal2 = Double.parseDouble(input);
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
                  int n=ds.size();
                                    for(int i=0;i<n;i++) {
                                      Product s=ds.get(i);
                  %>
<tr>
                       <td>
                            <img src=<%=s.getImage() %> style="width:180px;height:130px"; ><br>
                             <a href="giohangController?ms=<%=s.getProductId()%>&ts=<%=s.getName()%>&tg=<%=s.getDescription()%>&gia=<%=s.getUnitPrice()%>">
                             <img src="mua.jpg">
                             </a> 
                             <br>
                             <%=s.getName() %> <br>
                             <%=s.getDescription()%> <br>
                             <%=s.getUnitPrice()%> <br>
     
							<%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                       %><td>
                             <img src=<%=s.getImage() %> style="width:180px;height:130px"; ><br>
                              <a href="giohangController?ms=<%=s.getProductId()%>&ts=<%=s.getName()%>&tg=<%=s.getDescription()%>&gia=<%=s.getUnitPrice()%>">
                             <img src="mua.jpg">
                             </a> 
								<br>
                             <%=s.getName() %> <br>
                             <%=s.getDescription()%> <br>
                             <%=s.getUnitPrice()%> <br>
                       </td>
                       <%} %>
                       <%i++;
                         if(i<n){
                        	 s=ds.get(i);
                         
                       %><td>
                             <img src=<%=s.getImage() %> style="width:180px;height:130px"; ><br>
                             <a href="giohangController?ms=<%=s.getProductId()%>&ts=<%=s.getName()%>&tg=<%=s.getDescription()%>&gia=<%=s.getUnitPrice()%>">
                             <img src="mua.jpg">
                             </a> 
								<br>
                             <%=s.getName() %> <br>
                             <%=s.getDescription()%> <br>
                             <%=s.getUnitPrice()%> <br>
                       </td>
                       <%} %>
                    </tr>
                  <%} %>
              </table>
              </td>
         <td valign="top" width="200"> 
        <form action="HtSach" method="post">
        <label> Tìm kiếm: </label> <br>
        <input name="txtfind" type="text" class="form-control">
        <input name="but" type="submit" value="Tìm kiếm" class="btn-primary">
        	</form>
        </td>
</tr>
</table>
</body>
</html>
