<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.Calendar" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">		
<link rel="stylesheet" href="css/User.css">
<link rel="stylesheet" href="css/navbar.css">
</head>
<body>
<% 
String userID = "";
if (request.getParameter("userID") != null) {
	userID = request.getParameter("userID");
}
Calendar cal = Calendar.getInstance();
UserDAO userDAO = new UserDAO();
BbsDAO bbsDAO = new BbsDAO();
User user = userDAO.getUser(userID);
FollowDAO followDAO = new FollowDAO();
int monthcount = bbsDAO.getmonthCount(userID, String.valueOf((cal.get(Calendar.MONTH)+1)));
String imgurl="upload/"+user.getUserPicture();
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
  			<p class="card-text" id="username"><%=user.getUserName()%></p> 	
  			
  			<img src="img/follow_icon.png" width="24" height="24" id="follow_icon">
  			<a href="Follower.jsp" id="follow">
  			  &nbsp;팔로워&nbsp;<span id="follownum"><%=followDAO.getFollowing(userID)-1%></span>
  			</a>
  			<a href="Following.jsp" id="follow">
  			  &nbsp;&nbsp;팔로잉&nbsp;<span id="follownum"><%=followDAO.getFollow(userID)-1%></span>
  			</a>
  			<span id="email" class="glyphicon glyphicon-envelope">&nbsp;<%=user.getUserEmail()%></span>
  		</div>	
  	  </div>
  	</div>
  	 
  	<div class="col-md-9" id="box2"> 
  	
  	<a href="SearchUser.jsp" id="overview"><img src="img/overview.png" width="25" height="25" />&nbsp;Overview</a>
  	<a href="SearchRepo.jsp?userID=<%=userID%>" id="user_nav"><img src="img/Repositories.png" width="25" height="25" />&nbsp;Repositories</a><br>
  	<hr id="navlow">
  	
  	<%
    ArrayList<Bbs> getrepo= bbsDAO.getrepo(userID);
    for(int i=0; i<9; i++){
      if(getrepo.size()==i)
        break;
	%>			
	<a id="repo_box" href="Show.jsp?bbsID=<%=getrepo.get(i).getBbsID()%>">
	  <p id="rtitle"><%=getrepo.get(i).getBbsTitle()%></p>
	  <p id="lang"><%=getrepo.get(i).getBbsLanguage() %></p>
	</a>
     <%
     }
     %> 
  	  
  	</div>
  	
  	</div>
  	<div id="heatmap-1"></div>  
  </div>
</div>
<script type="text/javascript">
var data=[];    
<% 
	int count = bbsDAO.getCount(userID);
	List<String> date=bbsDAO.getalldate(userID);
	System.out.println(count);
	for (int i = 0; i <count; i++) {
		System.out.println(date.get(i).substring(0, 10).toString());%>
		data.push({count:2, date:"<%=date.get(i).substring(0, 10).toString()%>"});      
	<%
	}
%>
    $("#heatmap-1").calmosaic(data, {
        lastMonth: moment().month()+1,
        coloring: "",
        legend: {
            minLabel: "Fewer"
        },
        labels: {
            custom: {
                monthLabels: "MMM"
            }
        }
    });
</script>
</body>
</html>