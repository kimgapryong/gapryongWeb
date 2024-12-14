package mvc.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mvc.database.DBConnection;

public class GameListDAO {
	public static GameListDAO instance;
	public GameListDAO(){}
	
	public static GameListDAO getInstance() {
		if(instance == null) instance = new GameListDAO();
		return instance;
	}
	
	public String GetListBuy(String id, String p_id, int money) {
		 if (id == null || id.trim().isEmpty()) {
	            throw new IllegalArgumentException("ID 값이 null이거나 빈 값입니다. 유효한 ID를 전달해주세요.");
	        }

		 String sql = "INSERT INTO gameList (ID, productId, ischeck) VALUES(?,?, 1)";
		String value = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2, p_id);
			pstmt.executeUpdate();
			
			sql = "update moneyValue set  value = value - ? where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, money);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			
			sql = "select value from moneyValue where id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) value = String.valueOf(rs.getInt("value"));
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
		return value;
	}
	public int GetProductValue(String p_id) {
		String sql = "select quantity from product where productId = ?";
		int value = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,p_id);
	
			rs = pstmt.executeQuery();
			if(rs.next()) value = rs.getInt("quantity");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈빠끈하게 실뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				if(rs != null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return value;
	}
	
	public int GetMemberValue(String id) {
		String sql = "select value from moneyValue where id = ?";
		int value = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
	
			rs = pstmt.executeQuery();
			if(rs.next())value = rs.getInt("value");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("카트부분이 새끈 실패해뿌렸쓰" +e);
		} finally {
			try {
				if(pstmt != null)pstmt.close();
				if(conn != null)conn.close();
				if(rs != null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return value;
	}
}
