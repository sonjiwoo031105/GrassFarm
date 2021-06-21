package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bbs.Bbs;

public class UserDAO {
	
	private Connection conn;
	private PreparedStatement pstmt,pstmt1;
	private ResultSet rs;
	
		public UserDAO() {
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
		
		public int update(User user, String userID){	
			if(!user.getUserPass().equals(user.getUserPassCheck())) {
				return -2;
			}else {
			String SQL = "update user set userPass=?, userName=?, userEmail=? where userID=?;";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(4,userID);
				pstmt.setString(2, user.getUserName());
				pstmt.setString(1, user.getUserPass());
				pstmt.setString(3, user.getUserEmail());
				return pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
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
						return 1;//�α��� ����
					}
					else {
						return 0;//��й�ȣ ����ġ
					}
				}
				return -1;//���̵� ����
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2;
		}
		
		public int googlelogin(String userId,String userName,String userImage, String userEmail) {
			String SQL="SELECT * From USER WHERE userID=?";
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1, userId);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					return 1;//�α��� ����
				}else {
					//ȸ������ ��Ű��
					SQL="INSERT INTO user(userName, userID, userEmail, userPicture) VALUES (?, ?, ?,?);";
					try {
						pstmt = conn.prepareStatement(SQL);	
						pstmt.setString(1, userName);
						pstmt.setString(2, userId);
						pstmt.setString(3, userEmail);
						pstmt.setString(4, userImage);
						return pstmt.executeUpdate();
					}catch(Exception e) {
						e.printStackTrace();
					}
					return -1;
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -2;
		}


		public int join(User user){	
			if(!user.getUserPass().equals(user.getUserPassCheck())) {
				return -2;
			}else {
			String SQL = "INSERT INTO user(userName, userID, userPass, userEmail, userPicture) VALUES (?, ?, ?, ?, ?);";
			try {
				pstmt = conn.prepareStatement(SQL);	
				pstmt.setString(1, user.getUserName());
				pstmt.setString(2, user.getUserID());
				pstmt.setString(3, user.getUserPass());
				pstmt.setString(4, user.getUserEmail());
				pstmt.setString(5,"Contents_People&Grass.png");
				return pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
			}
		}
		
		public int joinfollow(User user){	
	
			String SQL = "INSERT INTO follow(me,follow) VALUES (?, ?);";
			try {
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, user.getUserID());
				pstmt.setString(2, user.getUserID());
				return pstmt.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return -1;
			}
		

	public ArrayList<User> search(String userName, String userID) {
		String SQL="select * from user where userName like ? or userID like ?";
		ArrayList<User> list=new ArrayList<User>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,"%"+userName+"%");
			pstmt.setString(2,"%"+userID+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				User user=new User();
				user.setUserID(rs.getString(1));
				user.setUserName(rs.getString(3));
				user.setUserEmail(rs.getString(4));
				user.setUserDate(rs.getString(5));
				user.setUserPicture(rs.getString(6));
				list.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return list;
		}
	
	public String match_profile(String userID) {
		String picture="";
		String SQL="select userPicture from user where userID = ?";
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				picture = rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return picture;
		}
	
	public ArrayList<User> user(String userID) {
		String SQL="select * from user where userID=?";
		ArrayList<User> User=new ArrayList<User>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				User user=new User();
				user.setUserName(rs.getString(3));
				user.setUserEmail(rs.getString(4));
				user.setUserPicture(rs.getString(6));
				User.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return User;
		}
	
	public User getUser(String userID) {
		String SQL = "SELECT * FROM USER WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				User user = new User();
				user.setUserID(rs.getString(1));
				user.setUserName(rs.getString(3));
				user.setUserEmail(rs.getString(4));
				user.setUserDate(rs.getString(5));
				user.setUserPicture(rs.getString(6));
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}