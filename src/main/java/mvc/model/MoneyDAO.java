package mvc.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mvc.database.DBConnection;


public class MoneyDAO {
	public static MoneyDAO instance;
	private MoneyDAO() {}
	
	public static MoneyDAO getInstance() {
		if(instance == null) instance = new MoneyDAO();
		return instance;
	}
	
	public String GetMoney(String id, String money) {
		Connection conn = null;
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		String sql = "update moneyValue set value = value + ?  where id = ? ";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, money);
			pstmt.setString(2,id);
		
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		int coin = 0;
		sql = "select * from moneyValue where id = ?";
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1,id);
		
			rs = pstmt.executeQuery();
			if(rs.next()) coin = rs.getInt("value");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				if(rs != null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return String.valueOf(coin);
	}
}
