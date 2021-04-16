package user;

public class User {
	private int userIDX;
	private String userID;
	private String userPass;
	private String userPassCheck;
	private String userName;
	private String userDate;
	
	
	
	public int getUserIDX() {
		return userIDX;
	}
	public void setUserIDX(int userIDX) {
		this.userIDX = userIDX;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getUserPassCheck() {
		return userPassCheck;
	}
	public void setUserPassCheck(String userPassCheck) {
		this.userPassCheck = userPassCheck;
	}
	public String getUserDate() {
		return userDate;
	}
	public void setUserDate(String userDate) {
		this.userDate = userDate;
	}
	

}
