package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDao {
	public Connection cn;
	public void KetNoi() throws Exception {
		//b1: Xac dinh HQTCSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.println("Da xac dinh  ");
		String url="jdbc:sqlserver://DESKTOP-MS8MRRS:1433;databaseName=DataTechHuscShop;user=sa;password=123";
		cn=DriverManager.getConnection(url);
		System.out.println("Da Ket Noi ");
	}
}

