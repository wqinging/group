package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BaseDao {
	private final  static String driver = "com.mysql.jdbc.Driver";
	private final static  String url = "jdbc:mysql://localhost:3306/group?useUnicode=true&characterEncoding=UTF-8";
	private final static String user = "root";
	private final static String password = "root";
	public static Connection conn = null;
	public static PreparedStatement pstm = null;
	public static ResultSet rs = null;
	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		try {
			conn = DriverManager.getConnection(url,user,password);
		} catch (SQLException e) {;
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeAll() throws SQLException {
		if(rs!=null) {
			rs.close();
		}
		if(pstm!=null) {
			pstm.close();
		}
		if(conn!=null) {
			conn.close();
		}
	}
	
	
	

}
