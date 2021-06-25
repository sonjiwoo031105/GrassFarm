package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Statement;

import user.User;

public class BbsDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement statement;
	
	public BbsDAO() {
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
	
	//���� �ǵ忡 ���� �޼���
	public ArrayList<Bbs> getList(String follow) {
		String SQL="select bbsID,bbsTitle,userID, date_format(bbsDate, '%Y-%m-%d'),bbsContent,bbsSource,bbsLanguage from "
				+ "bbs where userID=? order by bbsDate desc";
		ArrayList<Bbs> list=new ArrayList<Bbs>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,follow);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsSource(rs.getString(6));
				bbs.setBbsLanguage(rs.getString(7));
				list.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return list;
	}
	
	
	//���� �ۼ��ϴ� �Լ�
	public int write(Bbs bbs) { 
		String SQL = "INSERT INTO bbs(bbsTitle,userID, bbsSource,bbsContent,bbsLanguage) VALUES (?,?,?,?,?);";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbs.getBbsTitle());
			pstmt.setString(2, bbs.getUserID());
			pstmt.setString(3, bbs.getBbsSource());
			pstmt.setString(4, bbs.getBbsContent());
			pstmt.setString(5, bbs.getBbsLanguage());

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	//repo.jsp �������� �޼ҵ�
	public ArrayList<Bbs> getrepo(String search) {
		String SQL="select bbsID,bbsTitle,userID, date_format(bbsDate, '%Y-%m-%d'),bbsContent,bbsSource,bbsLanguage "
				+ "from bbs where userID=? or bbsTitle like ? OR bbsContent like ? OR bbsSource like ? order by bbsID desc";
		ArrayList<Bbs> repo=new ArrayList<>();
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,search);
			pstmt.setString(2,"%"+search+"%");
			pstmt.setString(3,"%"+search+"%");
			pstmt.setString(4,"%"+search+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsLanguage(rs.getString(7));
				repo.add(bbs);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
			return repo;
		}
	
	//���� �˻��� ���� ��� �ۿ��� �˻��ϴ� �޼���
		public ArrayList<Bbs> searchrepo(String search) {
			String SQL="select bbsID,bbsTitle,userID, date_format(bbsDate, '%Y년 %m월 %d일'),bbsContent,bbsSource,bbsLanguage "
					+ "from bbs where bbsTitle like ? OR bbsContent like ? OR bbsSource like ? order by bbsID desc";
			
			ArrayList<Bbs> repo=new ArrayList<>();
			try {
				pstmt=conn.prepareStatement(SQL);
				pstmt.setString(1,"%"+search+"%");
				pstmt.setString(2,"%"+search+"%");
				pstmt.setString(3,"%"+search+"%");
				rs=pstmt.executeQuery();
				while(rs.next()) {
					Bbs bbs=new Bbs();
					bbs.setBbsID(rs.getInt(1));
					bbs.setBbsTitle(rs.getString(2));
					bbs.setUserID(rs.getString(3));
					bbs.setBbsDate(rs.getString(4));
					bbs.setBbsContent(rs.getString(5));
					bbs.setBbsSource(rs.getString(6));
					bbs.setBbsLanguage(rs.getString(7));
					repo.add(bbs);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
				return repo;
			}
	
	//repo�� ���� �Ķ���ͷ� ���� ����� �� ���� ������ ���� �޼���
	public Bbs getBbs(int bbsID) {
		String SQL = "SELECT * FROM bbs WHERE bbsID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsSource(rs.getString(6));
				bbs.setBbsLanguage(rs.getString(7));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public Bbs getbbs(String userID) {
		String SQL = "SELECT bbsID,bbsTitle,userID, date_format(bbsDate, '%Y-%m-%d'),bbsContent,bbsSource,bbsLanguage FROM bbs WHERE userID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsSource(rs.getString(6));
				bbs.setBbsLanguage(rs.getString(7));
				return bbs;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	//user �������� ���� ���� ���� �˻��ϴ� �޼���
	public ArrayList<Bbs> getmyrepo(String userid, String search) {
		String SQL = "SELECT * FROM bbs WHERE userID = ? and (bbsContent like ? or bbsTitle like ? or bbsSource like ?) ";
		ArrayList<Bbs> repo=new ArrayList<>();
		
		try {
			pstmt=conn.prepareStatement(SQL);
			pstmt.setString(1,userid);
			pstmt.setString(2,"%"+search+"%");
			pstmt.setString(3,"%"+search+"%");
			pstmt.setString(4,"%"+search+"%");
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Bbs bbs=new Bbs();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsLanguage(rs.getString(7));
				repo.add(bbs);
			} 
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
		
	/*������ �Ⱦ��� �˻� �޼���
	 * public ArrayList<Bbs> search(String catgo, String sear) { String
	 * SQL="select * from bbs where " + catgo + " like ? order by bbsID desc";
	 * ArrayList<Bbs> search=new ArrayList<>(); try {
	 * pstmt=conn.prepareStatement(SQL); pstmt.setString(1, "%" + sear + "%");
	 * rs=pstmt.executeQuery(); while(rs.next()) { Bbs bbs = new Bbs();
	 * bbs.setBbsID(rs.getInt(1)); bbs.setBbsTitle(rs.getString(2));
	 * bbs.setBbsDate(rs.getString(4)); bbs.setBbsContent(rs.getString(5));
	 * bbs.setBbsSource(rs.getString(6)); bbs.setBbsLanguage(rs.getString(7));
	 * search.add(bbs); } }catch(Exception e) { e.printStackTrace(); } return
	 * search; }
	 */
	
	//repo���� ���� ���� �����ϴ� �޼���
	public int update(Bbs bbs, int bbsID) { 
		String SQL = "UPDATE bbs SET bbsTitle=?, bbsSource=?, bbsContent=?,bbsLanguage=? where bbsID=?;";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, bbs.getBbsTitle());
			pstmt.setString(2, bbs.getBbsSource());
			pstmt.setString(3, bbs.getBbsContent());
			pstmt.setString(4, bbs.getBbsLanguage());
			pstmt.setInt(5, bbsID);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	//repo���� ���� ���� ����� �޼���
	public int delete(int bbsID) {
		String SQL = "delete from bbs WHERE bbsID = ?";
		try {
			pstmt = conn.prepareStatement(SQL);   
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // �����ͺ��̽� ����
	}
	
	//�Ķ���ͷ� ���� ����� �� ���� ������ ���� �޼��� ������ �Ⱦ�
	public int getCount(String userId) {
		String SQL = "select count(*) from bbs where userID=?;";
		int resultCount = 0;
	try {
		pstmt = conn.prepareStatement(SQL);   
		pstmt.setString(1, userId);
		rs=pstmt.executeQuery();
		if(rs.next()){
			resultCount=rs.getInt(1);
		}	
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	return resultCount;
		
	}
	
	// �� �� Ŀ�� ���� ���ϴ� �޼��� : ������ ������� ����
	public int getmonthCount(String userId,String month) {
		System.out.println(month);
		String SQL = "select count(*) from bbs where userID=? and MONTH(bbsDate)=?;";
		int resultCount = 0;
	try {
		pstmt = conn.prepareStatement(SQL);   
		pstmt.setString(1, userId);
		pstmt.setString(2, month);
		rs=pstmt.executeQuery();
		if(rs.next()){
			resultCount=rs.getInt(1);
		}	
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}
	return resultCount;
		
	}
	
	//github calendar�� ��� : ��� ��¥�� �������� �޼���
	public List<String> getalldate(String userId) {
		String SQL="select bbsdate from bbs where userID=?;";
		List<String> resultCount = new ArrayList<String>();
		try {
			pstmt = conn.prepareStatement(SQL);   
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			while(rs.next()){
				resultCount.add(rs.getString(1));
			}
			
                 
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
		return resultCount;
		
	}
	
	
	
	}