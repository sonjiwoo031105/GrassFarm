package comment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Statement;

import bbs.Bbs;

public class CommentDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement statement;
	
	public CommentDAO() {
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

	//����� �ۼ��ϴ� �޼���
	public int write(Comment comment) { 
		String SQL = "INSERT INTO comment(bbsID,commentText,userID) VALUES (?,?,?);";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, comment.getBbsID());
			pstmt.setString(2, comment.getCommentText());
			pstmt.setString(3, comment.getUserID());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	//����� �������� �޼���
	public ArrayList<Comment> getList(int bbsID) {
		String SQL="select * from comment where bbsID=? order by commentDate desc";
		ArrayList<Comment> list=new ArrayList<Comment>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setInt(1,bbsID);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Comment comment=new Comment();
				comment.setCommentText(rs.getString(3));
				comment.setUserID(rs.getString(4));
				comment.setCommentDate(rs.getString(5));
				list.add(comment);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return list;
	}
	}