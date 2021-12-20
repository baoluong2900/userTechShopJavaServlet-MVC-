package dao;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.PurchaseHistory;


public class PurchaseHistoryDao {
	

	public ArrayList<PurchaseHistory> getHistory(String username)  throws Exception{
		ArrayList<PurchaseHistory> ds=new ArrayList<PurchaseHistory>();
		ConnectionDao dc= new ConnectionDao();
		dc.KetNoi();
	
		String sql=" select  O.OrderId,Pro.Name, Od.Quantity,Od.UnitPrice, O.OrderDate,O.Status from Customer as Cus inner join Order1 as O on Cus.CustomerId=O.CustomerId inner join OrderDetail as Od on O.OrderId=OD.OrderId inner join Product as Pro on Od.ProductId=Pro.ProductId where Cus.Name=?";
		try {
			PreparedStatement cmd=dc.cn.prepareStatement(sql);
			cmd.setString(1, username);
			ResultSet rs=cmd.executeQuery();
			while(rs.next()) {
				
				int orderid=rs.getInt("orderid");
				String name=rs.getString("name");
				int quantity=rs.getInt("quantity");
				double unitprice=rs.getDouble("unitprice");
				Date orderdate=rs.getDate("orderdate");
				int status=rs.getInt("stats");
				PurchaseHistory ph=new PurchaseHistory(orderid,name,quantity,unitprice,orderdate,status);
				
				
				ds.add(ph);
			}rs.close();dc.cn.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ds;
	}
}
			
	
