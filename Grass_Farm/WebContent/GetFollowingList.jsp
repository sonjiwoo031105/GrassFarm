<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import = "java.util.Calendar" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/User.css">
<link rel="stylesheet" href="css/Search.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
<% 
String userID = (String)session.getAttribute("userID");
Calendar cal = Calendar.getInstance();
UserDAO userDAO = new UserDAO();
BbsDAO bbsDAO = new BbsDAO();
ArrayList<User> user = userDAO.user(userID);
FollowDAO followDAO = new FollowDAO();
int monthcount = bbsDAO.getmonthCount(userID, String.valueOf((cal.get(Calendar.MONTH)+1)));
String imgurl="./upload/"+user.get(0).getUserPicture();
System.out.print(imgurl);
%>	   		
<div class="container">
  <div class="row">     
    <div class="col-md-10 col-md-offset-1" style="max-width:100%;"> 
    
    <div class="col-md-3" id="box1"> 
	  <div class="card">
	  	<img class="card-img-top" id="img_click" src="./img/<%=user.get(0).getUserPicture()%>">	  	
   		<div class="card-body">
  			<h4 class="card-title" id="userid"><%=userID%></h4>
  			<a id="modifyuser">프로필 편집</a>
  			<p class="card-text" id="username"><%=user.get(0).getUserName()%></p> 	
  			
  			<img src="img/follow_icon.png" width="25" height="25" style="float:left;">
  			<a href=GetFollowingList.jsp id="follow" style="pointer-events: none;">
  			  &nbsp;팔로워&nbsp;<span id="follownum"><%=followDAO.getFollowing(userID)%></span>
  			</a>
  			<a href="GetFollowList.jsp" id="follow">
  			  &nbsp;&nbsp;팔로잉&nbsp;<span id="follownum"><%=followDAO.getFollow(userID)%></span>
  			</a>
  			<span id="email" class="glyphicon glyphicon-envelope" aria-hidden="true">&nbsp;<%=user.get(0).getUserEmail()%></span>
  			  			
  		</div>	
  	  </div>
  	</div>
  	  <!-- pointer-events: none; 링크 비활성화  -->
  	 
  	<div class="col-md-9" id="box2"> 
  	
  	<a href="User.jsp" id="user_nav"><img src="img/overview.png" width="25" height="25" />&nbsp;Overview</a>
  	<a href="Repo.jsp" id="user_nav"><img src="img/Repositories.png" width="25" height="25" />&nbsp;Repositories</a>
  	<a href="SetUser.jsp" id="user_nav"><img src="img/setting.png" width="25" height="25" />&nbsp;Settings</a><br>
  	<hr id="navlow">
  	
  	<!-- 팔로우리스트가져오기 -->
  	<%
	ArrayList<Follow> list=followDAO.SearchFollow(userID);

	for(int i=0; i<list.size(); i++){
      int follow=followDAO.SearchFollowing(userID,list.get(i).getFollow()); 
      User userlist=userDAO.getUser(list.get(i).getFollow());
    %>
    	<div id="circle1">
    	  <img src="./img/<%=userlist.getUserPicture()%>" style="width:100%">
    	</div>
    	
    	<div id="user_info">
    		<a href="User.jsp?=<%=userlist.getUserID()%>" id="userID"><%=userlist.getUserID()%></a>    	
    		<div id="userName"><%=userlist.getUserName()%></div>    	
    		<div id="userEmail"><%=userlist.getUserEmail()%></div>
    	</div>
    	
    	<%-- <% if(userlist.get(i).getUserID().equals(userID)){
	       }else if(follow>0){%>
	       <a href='Unfollow.jsp?id=<%=userlist.get(i).getUserID()%>' id="followbtn" class="btn btn-success">Unfollow</a>
	    <%}else{%>
	       <a href='Follow.jsp?id=<%=userlist.get(i).getUserID()%>' id="followbtn" class="btn btn-success">Follow</a>
	    <%} %> --%> 
    	<br><br><br><br>
    	<hr />
<%}%>

           			<%-- 	<form method="post" action="Follow.jsp">
                			<div class="mb-2">
                				<span class="fs-20 pr-16" onclick="location.href='SearchUser.jsp?id=<%=list.get(i).getFollow()%>'" ><%=list.get(i) %></span>
                				
               				</div>
               			@<%=list.get(i)%><br>
               			
                		이거야이거<p><%=list.get(i).getFollow()%></p>
                		
           
        		
               		<strong>Applied on:</strong>
                	<span><%= list.get(i)%></span>             
            	
            	<div class="media-right text-right d-none d-md-block">
            	<input type="text" name="id" style="display:none" value=<%=list.get(i)%>>
            		<% if(getFollowList.get(i).getUserID().equals(userID)){%>  
                	<%}else if(follow>0){%>
                	<a href='Unfollow.jsp?id=<%=getFollowList.get(i).getUserID()%>' class="btn btn-success" value="UNFOLLOW">UNFOLLOW</a>
                	<%}else{%>
                	<a href='Follow.jsp?id=<%=getFollowList.get(i).getUserID()%>' class="btn btn-success" value="FOLLOW">FOLLOW</a>
                	<%} %>
            	</div>
        		
        		</form> --%>
  	</div>
  	</div>
  </div>
</div>							
</body>
</html>