package file;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FileDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public FileDAO() {
		try{
			String dbURL="jdbc:mysql://34.236.159.90:3306/grassfarm?serverTimezone=Asia/Seoul&useSSL=false";
			String dbID="test";
			String dbPassword="1111";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public int upload(String fileRealName,String userid) {
		String SQL = "update user set userPicture=? where userID=?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, fileRealName);
			pstmt.setString(2, userid);

			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
}