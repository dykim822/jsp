package ch09;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;
public class MemberDao {
	//싱글톤, Singleton, 디자인패턴
//	static 공유, 객체를 생성하지 않고 바로 사용 가능
	private static MemberDao instance = new MemberDao();
	private MemberDao() {	}
//	getInstance() 메서드를 통해 instance 객체를 호출, 사용
	public static MemberDao getInstance() {
		return instance;
	}
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			System.out.println("연결 에러 : "+e.getMessage());
		}
		return conn;
	}
	public int insert(Member member) {
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into member1 values(?,?,?,sysdate)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(pstmt !=null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {	}
		}
		return result;
	}
	public int check(String id, String password) {
		int result = 0;
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select password from member1 where id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();	//조회할 때는 query
			if(rs.next()) {
				String dbPass = rs.getString("password");
				if(dbPass.equals(password)) {
					result = 1;		// id,password 모두 일치
				} else {
					result = 0;		// id는 존재하지만 password가 일치하지 않는 경우
				}
			} else {
				result = -1;	//해당하는 아이디가 없다는 의미
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt !=null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {	}
		}
		return result;
	}
	public String getName(String id) {
		String name = "";
		Connection conn = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select name from member1 where id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();	//조회할 때는 query
			if(rs.next()) {
				name = rs.getString(1);
			} else {
				name = "존재하지 않는 이름";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(pstmt !=null) {
					pstmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (Exception e) {	}
		}
		return name;
	}
}
