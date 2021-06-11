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
			String dbURL="jdbc:mysql://localhost:3306/grass_farm?useUnicode=true&characterEncoding=UTF-8";
			String dbID="ziu";
			String dbPassword="1105";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	//댓글을 작성하는 메서드
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
		return -1; //데이터베이스 오류
	}
	
	//댓글을 가져오는 메서드
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
				list.add(comment);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return list;
	}
	}