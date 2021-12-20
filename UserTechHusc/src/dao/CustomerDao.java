package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import bean.Customer;

public class CustomerDao {
	public Customer getkh(String un,String pass) throws Exception{
		

				ConnectionDao dc = new ConnectionDao();
				dc.KetNoi();
		
				String sql = "Select * from customer where name=? and password=?";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
	
				cmd.setString(1,un );
				cmd.setString(2, pass);
				ResultSet rs = cmd.executeQuery();
	
				if (rs.next()==false) return null;
				else {
		
					int customerId=rs.getInt("customerId");
					String name=rs.getString("name");
					String email=rs.getString("email");
			  		String password=rs.getString("password");
		    		String phone=rs.getString("phone");
		    		Date registeredDate=rs.getDate("registeredDate");
		    		Customer kh=new Customer(customerId,name,email,password,phone,registeredDate);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
					}
		    	
	}
	public Customer ktkh(String un) throws Exception{
	
	
				ConnectionDao dc = new ConnectionDao();
				dc.KetNoi();
			
				String sql = "Select * from customer where name=? ";
				PreparedStatement cmd = dc.cn.prepareStatement(sql);
			
				cmd.setString(1, un);
				ResultSet rs = cmd.executeQuery();

				while (rs.next()) 
			 {
					
					int customerId=rs.getInt("customerId");
					String name=rs.getString("name");
					String email=rs.getString("email");
			  		String password=rs.getString("password");
		    		String phone=rs.getString("phone");
		    		Date registeredDate=rs.getDate("registeredDate");
		  
		    		Customer kh=new Customer(customerId,name,email,password,phone,registeredDate);
		    		rs.close();
			    	dc.cn.close();
		    		return kh;
				}
				return null;
		    	
	}

	
	public int dangky(String email,String name,String pass, String sodt )throws Exception {
		
		
			ConnectionDao dc = new ConnectionDao();
			dc.KetNoi();
			String sql = "insert into customer values (?,?,?,?) ";
			 try {
				 PreparedStatement cmd = dc.cn.prepareStatement(sql);
				 cmd.setString(1, email);
					cmd.setString(2, name);
					
				
					cmd.setString(3, pass);
					cmd.setString(4, sodt);
				

				
					
					return cmd.executeUpdate();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				return 0;
			}
		
		
	}

}
