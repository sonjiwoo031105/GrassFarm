<%@page import="java.util.List"%>
<%@page import="follow.FollowDAO"%>
<%@page import="bbs.BbsDAO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css/User.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
</head>
<body>
<nav class="navbar" id="undershadow">
  <div class="container">
  	<div class="row">
  		<div class="col-md-8 col-md-offset-2" style="max-width:100%;">  			
    		<form class="nav navbar-form" role="search" action="Search.jsp">  
    		<div class="navbar-header">
        		<a href="Main.jsp"><img src="img/Header_Log.png" id="logo" alt="로고 : Header_Logo" ></a>
    		</div>
  			<div class="form-group" id="wich">
  		    	<div class="input-group">
  					<span class="input-group-addon" id="iconstyle"><i class="glyphicon glyphicon-search"></i></span>
  					<input type="text" id="inputstyle" class="form-control" name="search" placeholder="검색" required="required">
				</div>         		
        	</div>
	    		<a id="user" href="User.jsp" style="pointer-events: none;"><img id="useri" src="img/Profile_Green.png"></a>
	    		<a id="write" href="Write.jsp"><img id="writei" src="img/Header_plu.png"></a>        
      		</form>	
  		</div>
  	</div>
  </div>
</nav>
<% 
String userID = (String)session.getAttribute("userID");
Calendar cal = Calendar.getInstance();
UserDAO userDAO = new UserDAO();
BbsDAO bbsDAO = new BbsDAO();
ArrayList<User> user = userDAO.user(userID);
FollowDAO followDAO = new FollowDAO();
int monthcount = bbsDAO.getmonthCount(userID, String.valueOf((cal.get(Calendar.MONTH)+1)));
String imgurl="upload/"+user.get(0).getUserPicture(); 
for(int i=0; i<user.size(); i++){
%>	
<div class="container">
  <div class="row">     
    <div class="col-md-10 col-md-offset-1" style="max-width:100%;"> 
    
    <div class="col-md-3" id="box1"> 
	  <div class="card">
	  	<img class="card-img-top" id="img_click" src="<%=imgurl%>">	  	
   		<div class="card-body">
  			<h4 class="card-title" id="userid"><%=userID%></h4>
  			<a href="LogoutAction.jsp" id="modifyuser">로그아웃</a>
  			<p class="card-text" id="username"><%=user.get(i).getUserName()%></p> 	
  			
  			<img src="img/follow_icon.png" width="24" height="24" style="float:left;">
  			<a href="Follower.jsp" id="follow">
  			  &nbsp;팔로워&nbsp;<span id="follownum"><%=followDAO.getFollowing(userID)-1%></span>
  			</a>
  			<a href="Following.jsp" id="follow">
  			  &nbsp;&nbsp;팔로잉&nbsp;<span id="follownum"><%=followDAO.getFollow(userID)-1%></span>
  			</a>
  			<span id="email" class="glyphicon glyphicon-envelope" aria-hidden="true">&nbsp;<%=user.get(i).getUserEmail()%></span>
  		</div>	
  	  </div>
  	</div>
  	<% } %>
  	 
  	<div class="col-md-9" id="box2"> 
  	
  	<a href="User.jsp" id="user_nav"><img src="img/overview.png" width="25" height="25" />&nbsp;Overview</a>
  	<a href="Repo.jsp" id="user_nav"><img src="img/Repositories.png" width="25" height="25" />&nbsp;Repositories</a>
  	<a href="SetUser.jsp" id="overview"><img src="img/setting.png" width="25" height="25" />&nbsp;Settings</a><br>
  	<hr id="navlow">
  	
  	<p id="public">Public profile</p><br>
  	<hr>
  	<form action=SetUserAction.jsp method="post">
  	  <p id="inputtName">Name</p>
  	  <input type="text" id="inputt" class="form-control" name="userName" value="<%= user.get(0).getUserName() %>" required="required">
	  
	  <p id="inputtName">Email</p>
	  <input type="email" id="inputt" class="form-control" name="userEmail" value="<%= user.get(0).getUserEmail() %>" required="required">
	  
	  <p id="inputtName">Password</p>
  	  <input type="password" id="inputt" class="form-control" name="userPass" placeholder="비밀번호" required="required">
	  
	  <p id="inputtName">PasswordCheck</p>
  	  <input type="password" id="inputt" class="form-control" name="userPassCheck" placeholder="비밀번호확인" required="required">
  	
  	  <button type="submit" id="btnstyle" class="btn btn-primary">Update</button>
  	</form>
  	
  	<!-- <p id="public">Profile picture</p><br>
  	<hr>
	<form method="post" enctype="multipart/form-data" action="Upload.jsp">
	  <input type="file" name="file" id="bfile">
	  <input type="submit" value="변경">
	</form>
	<button type="button" name="basicimg" class="btn btn-success btn-lg btn-block" onclick="location.href='BasicPictureUpload.jsp'">기본 이미지로 변경하기</button> -->
  	</div>
  	</div>  
  </div>
</div>
</body>
</html>