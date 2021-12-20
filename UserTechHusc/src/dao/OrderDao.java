package dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.Order;


public class OrderDao {
	
	
	public ArrayList<Order> getloai() throws Exception{
		ArrayList<Order> ds=new ArrayList<Order>();
		ConnectionDao dc= new ConnectionDao();
		dc.KetNoi();
		String sql="select * from Order1";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		
		ResultSet rs=cmd.executeQuery();
		while (rs.next()) {
			int order=rs.getInt("orderid");
			double amount=rs.getDouble("amount");
			int customerId=rs.getInt("customerId");
			Date orderdate=rs.getDate("orderdate");
			int status=rs.getInt("status");
			 Order or=new Order(order,amount,customerId,orderdate,status);
			ds.add(or);
		}
		rs.close();
		dc.cn.close();
		return ds;
		
	}
	

}
