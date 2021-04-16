package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try{
	
			String dbURL="jdbc:mysql://localhost:3306/testdb";
			String dbID="test";
			String dbPassword="1111";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	public int login(String userId,String userPassword) {
		String SQL="SELECT userPass From USER WHERE userID=?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;//로그인 성공
				}
				else {
					return 0;//비밀번호 불일치
				}
			}
			return -1;//아이디가 없다
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}


	public int join(User user){	
		if(!user.getUserPass().equals(user.getUserPassCheck())) {
			return -2;
		}else {
		String SQL = "INSERT INTO user(userID, userPass, userName) VALUES (?, ?, ?);";
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPass());
			pstmt.setString(3, user.getUserName());

			return pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
		}
	}
	
	public int update(int idx, String userid, String userpass, String username) {
		String SQL = "update user set userid=?, userpass=?, username=? where idx=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,userid);
			pstmt.setString(2, userpass);
			pstmt.setString(3, username);
			pstmt.setInt(4, idx);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터 베이스 오류
	}
	
	
	public int delete(int idx) {
		String SQL = "delete from user WHERE idx = ?";
		try {
			pstmt = conn.prepareStatement(SQL);   
			pstmt.setInt(1, idx);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
	
	public ArrayList<User> user(int idx) {
		String SQL="select * from user where idx=?";
		ArrayList<User> User=new ArrayList<User>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1,idx);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				User user=new User();
				user.setUserID(rs.getString(2));
				user.setUserName(rs.getString(4));
				User.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return User;
	}
	
}
