package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import java.util.Date;

import bean.PurchaseHistory;


public class MyFunction {
	ConnectionDao dc=new ConnectionDao();

	public boolean check_makh(String makh)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM customer WHERE name=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, makh);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}	
	public boolean check_tendn(String tendn)throws Exception {
		dc.KetNoi();
		boolean status=false;
		
			String sql="SELECT * FROM customer WHERE name=?";
			try {
				PreparedStatement cmd=dc.cn.prepareStatement(sql);
				cmd.setString(1, tendn);
				ResultSet rs = cmd.executeQuery();
				status=rs.next();
				System.out.println(sql);
				//System.out.println(status);
				
			} catch (Exception e) {
					e.printStackTrace();
			}
		return status;
	}
	public int Sign_up(String email,String name,String password,String phone)throws Exception {
		dc.KetNoi();
		String sql="INSERT INTO customer(email,name,password,phone)"
				+ "VALUES(?,?,?,?)";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, email);
			cmd.setString(2, name);
			cmd.setString(3, password);
			cmd.setString(4, phone);

			System.out.println(sql);
			return cmd.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		
	}

	
	public ArrayList<PurchaseHistory> Chitiethoadon(String name1) throws Exception{
		ArrayList<PurchaseHistory> cthd=new ArrayList<PurchaseHistory>();
		dc.KetNoi();
		String sql="select  O.OrderId,Pro.Name, Od.Quantity,Od.UnitPrice, O.OrderDate,O.Status from Customer as Cus inner join Order1 as O on Cus.CustomerId=O.CustomerId  inner join OrderDetail as Od on O.OrderId=OD.OrderId inner join Product as Pro on Od.ProductId=Pro.ProductId where Cus.Name=?";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, name1);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				
				int orderid=rs.getInt("orderid");
				String name=rs.getString("name");
				int quantity=rs.getInt("quantity");
				double unitprice=rs.getDouble("unitprice");
				Date orderdate=rs.getDate("orderdate");
				int status=rs.getInt("stats");
				
	
				PurchaseHistory ph=new PurchaseHistory(orderid,name,quantity,unitprice,orderdate,status);
				
				
				cthd.add(ph);
			}rs.close();dc.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return cthd;
	}

}
