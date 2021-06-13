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
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="dist/jquery.calmosaic.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
<script src="dist/jquery.calmosaic.min.js"></script>
</head>
<style>
.card{
	float:left;
	margin-top:30px;
	display: inline-block;
}
#img_click{
	float:left;
	width: 100%;
	cursor: pointer;
	border-radius:140px;
    overflow: hidden;
    display: flex;
    align-items: center;
    justify-content: center;
    border: 1px solid rgba(0, 0, 0, 0.11);
}
#userid{
	float:left;
	font-family: 'bold';
	font-size: 20pt;
	margin-bottom: 5px;
}
#modifyuser{
	float:right;
	color : #0e0e0e;
	margin-top: 10px;
	
}
#username{
	float:left;
	font-family: 'regular';
	font-size: 11pt;
}

@font-face {
	font-family: 'bold';
    src: url('./fonts/NotoSansCJKkr-Bold.otf');
    font-weight: normal;
    font-style: normal;
}
@font-face {
	font-family: 'medium';
    src: url('./fonts/NotoSansCJKkr-Medium.otf');
    font-weight: normal;
    font-style: normal;
}
@font-face {
	font-family: 'regular';
    src: url('./fonts/NotoSansCJKkr-Regular.otf');
    font-weight: normal;
    font-style: normal;
}

</style>
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
    
    <div class="col-md-3" style="max-width:100%;padding:0;"> 
	  <div class="card">
	  	<img class="card-img-top" id="img_click" src="./img/<%=user.get(0).getUserPicture()%>">	  	
   		<div class="card-body">
  			<h4 class="card-title" id="userid"><%=userID%></h4>
  			<a href="ModifyUser.jsp" id="modifyuser" class="btn btn-success">프로필 편집</a>
  			<p class="card-text" id="username"><%=user.get(0).getUserName()%></p> 	
  			<span class="glyphicon glyphicon-envelope" aria-hidden="true">
  			<%out.print(user.get(0).getUserEmail());%>
  			</span>
  			<span class="glyphicon glyphicon-user" aria-hidden="true">
  			<a href="GetFollowList.jsp">팔로우<%out.print(followDAO.getFollow((String)session.getAttribute("userID")));%></a> º
  			<a href="GetFollowingList.jsp">팔로잉<%out.print(followDAO.getFollowing((String)session.getAttribute("userID")));%></a>
  			</span>
  			
  		</div>	
  	  </div>
  	</div>
  	  
  	  <div class="col-md-9" style="max-width:100%; padding:0;"> 
  	  <%
    	ArrayList<Bbs> getrepo= bbsDAO.getrepo(userID);
        for(int i=0; i<6; i++){
        	if(getrepo.size()==i)
        		break;
      %>			
		<div class="row marketing">
			<div class="col-lg-4">
			 <h4><%=getrepo.get(i).getBbsTitle() %></h4>
			 <p><%=getrepo.get(i).getBbsLanguage() %></p>
		</div>
	</div>
     <%
     }
     %>
  	  
  	  </div>
  	  
  	</div>
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
  				
				
        		
        		<div id="heatmap-1"></div>
        		

     
      	
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
 
<!-- The Modal -->		
var modal = document.getElementById('myModal');
// Get the button that opens the modal
var btn = document.getElementById("img_click");
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