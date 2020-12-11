package follow;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import user.User;

public class FollowDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public FollowDAO() {
		try{
	
			String dbURL="jdbc:mysql://localhost:3306/grass_farm";
			String dbID="ziu";
			String dbPassword="1105";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int Follow(String userId,String follow) {
		String SQL = "INSERT INTO follow(me, follow) VALUES (?, ?);";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userId);
			pstmt.setString(2, follow);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB ¿À·ù
	}
	
	public ArrayList<Follow> SearchFollowing(String userid) {
		String SQL="SELECT * FROM follow where me=?;";
		ArrayList<Follow> list=new ArrayList<Follow>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userid);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				 Follow follow=new Follow();
				 follow.setFollow(rs.getString(2));
				 list.add(follow);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return list;
	}

	
	public int SearchFollowing(String userid, String follow) {
		String SQL="SELECT count(*) FROM follow where me=? and follow=?;";
		int resultCount=0;
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userid);
			pstmt.setString(2,follow);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				resultCount=rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return resultCount;
	}
	
	public int unfollow(String userid,String follow) {
		String SQL="delete FROM follow where me=? and follow=?;";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userid);
			pstmt.setString(2,follow);
			return pstmt.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}	
}
