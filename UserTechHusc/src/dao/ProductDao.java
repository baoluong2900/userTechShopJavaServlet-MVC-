package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;
import java.util.Date;

import bean.Product;


public class ProductDao {
	public Connection cn;
	ConnectionDao dc= new ConnectionDao();
	public ArrayList<Product> getsach() throws Exception{
		ArrayList<Product> ds = new ArrayList<Product>();
		dc.KetNoi();
		String sql="select * from product";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while(rs.next()) {
			int productId=rs.getInt("productId");
			String name=rs.getString("name");
			double quantity=rs.getDouble("quantity");
			double unitPrice=rs.getDouble("unitPrice");
			String description=rs.getString("description");
			String image=rs.getString("image");
			double discount=rs.getDouble("discount");
			Date enteredDate=rs.getDate("enteredDate");
			int status=rs.getInt("status");
			int categoryId=rs.getInt("categoryId");
			Product pro=new Product(productId,name,quantity,unitPrice,image,description,discount,enteredDate,status,categoryId);
			ds.add(pro);
		}rs.close();dc.cn.close();
		return ds;
	}
}
