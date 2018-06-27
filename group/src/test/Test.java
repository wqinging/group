package test;

import java.sql.SQLException;

import dao.BaseDao;

public class Test {
	public static void main(String [] args) throws SQLException {
		BaseDao bd = new BaseDao();
		bd.getConnection();
		bd.closeAll();
	}

}
