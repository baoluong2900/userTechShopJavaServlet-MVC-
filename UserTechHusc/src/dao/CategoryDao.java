package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.Category;


public class CategoryDao {
	public ArrayList<Category> getloai() throws Exception{
		ArrayList<Category> ds=new ArrayList<Category>();
		ConnectionDao dc= new ConnectionDao();
		dc.KetNoi();
	
		String sql="select * from Category";
		PreparedStatement cmd=dc.cn.prepareStatement(sql);
		ResultSet rs=cmd.executeQuery();
		while (rs.next()) {
			int category=rs.getInt("categoryId");
			String name=rs.getString("name");	
			ds.add(new Category(category,name));
		}
		rs.close();
		dc.cn.close();
		return ds;
		
	}


}
