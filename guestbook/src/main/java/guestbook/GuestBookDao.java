package guestbook;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import conn.DBConnect;

public class GuestBookDao {
	
	private DBConnect dbconn;
	
	public GuestBookDao() {
		dbconn = DBConnect.getInstance();
	}
	
	/**
	 * 초기 화면 진입시 전체 목록 리스트 뿌리기
	 * @return
	 */
	public ArrayList<GuestBookVo> getAll() {
		ArrayList<GuestBookVo> list = new ArrayList<GuestBookVo>();
		Connection conn = dbconn.conn();
		String sql = "SELECT * FROM GUESTBOOK ORDER BY NUM";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet result = pstmt.executeQuery();
			while (result.next()) {
				list.add(new GuestBookVo(result.getInt(1), result.getString(2), result.getString(3), result.getString(4), result.getString(5), result.getInt(6)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return list;
	}
	
	/**
	 * 글작성
	 * @param vo
	 */
	public void addContent(GuestBookVo vo) {
		Connection conn = dbconn.conn();
		String sql = "INSERT INTO GUESTBOOK VALUES (SEQ_GUESTBOOK.NEXTVAL, ?, SYSDATE, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getWriter());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getContent());
			pstmt.setInt(4, 0);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
