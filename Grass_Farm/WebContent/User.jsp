<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.text.Format"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="css/User.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="dist/jquery.calmosaic.min.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
<script src="dist/jquery.calmosaic.min.js"></script>
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
  			<a href="GetFollowList.jsp">
  			
  			  <p id="follow">&nbsp;팔로워</p>
  			  <p id="follownum"><%=followDAO.getFollowing(userID)%></p>
  			</a>
  			<a href="GetFollowingList.jsp">
  			  <p id="follow">&nbsp;&nbsp;팔로잉</p>
  			  <p id="follownum"><%=followDAO.getFollow(userID)%></p>
  			</a>
  			<span id="email" class="glyphicon glyphicon-envelope" aria-hidden="true">&nbsp;<%=user.get(0).getUserEmail()%></span>
  			  			
  		</div>	
  	  </div>
  	</div>
  	  <!-- pointer-events: none; 링크 비활성화  -->
  	 
  	<div class="col-md-9" id="box2"> 
  	
  	<a href="User.jsp" id="overview"><img src="img/overview.png" width="25" height="25" />&nbsp;Overview</a>
  	<a href="Repo.jsp" id="user_nav"><img src="img/Repositories.png" width="25" height="25" />&nbsp;Repositories</a>
  	<a href="SetUser.jsp" id="user_nav"><img src="img/setting.png" width="25" height="25" />&nbsp;Settings</a><br>
  	<hr id="navlow">
  	
  	<%
    ArrayList<Bbs> getrepo= bbsDAO.getrepo(userID);
    for(int i=0; i<9; i++){
      if(getrepo.size()==i)
        break;
	%>			
	<div id="repo_box">
	  <a id="repobbstitle" style="font-size:18px;"href="Show.jsp?bbsID=<%=getrepo.get(i).getBbsID()%>"><%=getrepo.get(i).getBbsTitle()%></a><br>
	  <p id="lang"><%=getrepo.get(i).getBbsLanguage() %></p>
	</div>
     <%
     }
     %> 
  	  
  	</div>
  	
  	</div>
  	<div id="heatmap-1"></div>  
  </div>
</div>

  			 	 <div class="modal" id="myModal" tabindex="-1">
  				 	<div class="modal-dialog">
    					<div class="modal-content">
    					    <div class="modal-header">
    					    	<h5 class="modal-title">Profile Modify</h5>
        						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          							<span aria-hidden="true">&times;</span>
        						</button>
      						</div>
  							<div class="modal-body">
	  							<h5>프로필 사진 수정하기</h5>
	  							<form method="post" enctype="multipart/form-data" action="Upload.jsp">
	  								<input type="file" name="file" id="bfile">
									<input type="submit" value="업로드">
								</form>
								<script>
	    							var fileCheck = document.getElementById("bfile").value;
	    							if(!fileCheck){
	        							alert("파일을 첨부해 주세요");
	        							return false;
	    							}
								</script>
	  							<hr>
	  							<button type="button" name="basicimg" class="btn btn-success btn-lg btn-block" onclick="location.href='BasicPictureUpload.jsp'">기본 이미지로 변경하기</button>
							</div>
						</div>
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
 
	
var modal = document.getElementById('myModal');
// Get the button that opens the modal
var btn = document.getElementById("modifyuser");
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];                                          
// When the user clicks on the button, open the modal 
btn.onclick = function() {
	modal.style.display = "block";
}
// When the user clicks on <span> (x), close the modal
span.onclick = function() {
	modal.style.display = "none";
}
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	if (event.target == modal) 
    	modal.style.display = "none";
}
</script>

</body>
</html>