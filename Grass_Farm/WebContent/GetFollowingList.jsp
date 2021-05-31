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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width" initial-scale="1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<title>잔디공작소</title>
        <style>
        
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
       
        #ps{
          	text-align:center;
        	font-size: 18pt;
        }
        #pss{
          	text-align:center;
        	font-size: 60pt;
        	color: green; 	
        }
        .pr-12 {
    padding-right: 12px !important;
}
.mb-20 {
    margin-bottom: 20px !important;
}
.b-1 {
    border: 1px solid #ebebeb !important;
}
.card {
    border: 0;
    border-radius: 0;
    margin-bottom: 30px;
    -webkit-transition: .5s;
    transition: .5s;
}
.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
}
.media {
    padding: 16px 12px;
    -webkit-transition: background-color .2s linear;
    transition: background-color .2s linear;
}
.media {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: start;
    align-items: flex-start;
}
.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
}
.media .avatar {
    flex-shrink: 0;
}
.no-radius {
    border-radius: 0 !important;
}
.avatar-xl {
    width: 64px;
    height: 64px;
    line-height: 64px;
    font-size: 1.25rem;
}
.avatar {
    position: relative;
    display: inline-block;
    width: 36px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    border-radius: 100%;
    background-color: #f5f6f7;
    color: #8b95a5;
    text-transform: uppercase;
}
img {
    max-width: 100%;
}
img {
    vertical-align: middle;
    border-style: none;
}
.mb-2 {
    margin-bottom: .5rem!important;
}
.fs-20 {
    font-size: 20px !important;
}
.pr-16 {
    padding-right: 16px !important;
}
.ls-1 {
    letter-spacing: 1px !important;
}
.fw-300 {
    font-weight: 300 !important;
}
.fs-16 {
    font-size: 16px !important;
}
.media-body>* {
    margin-bottom: 0;
}
small, time, .small {
    font-family: Roboto,sans-serif;
    font-weight: 400;
    font-size: 11px;
    color: #8b95a5;
}
.fs-14 {
    font-size: 14px !important;
}
.mb-12 {
    margin-bottom: 12px !important;
}
.text-fade {
    color: rgba(77,82,89,0.7) !important;
}
.card-footer:last-child {
    border-radius: 0 0 calc(.25rem - 1px) calc(.25rem - 1px);
}
.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77,82,89,0.07);
    color: #8b95a5;
    padding: 10px 20px;
}
.flexbox {
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
}
.align-items-center {
    -ms-flex-align: center!important;
    align-items: center!important;
}
.card-footer {
    padding: .75rem 1.25rem;
    background-color: rgba(0,0,0,.03);
    border-top: 1px solid rgba(0,0,0,.125);
}
.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77, 82, 89, 0.07);
    color: #8b95a5;
    padding: 10px 20px
}
.card-footer>*:last-child {
    margin-bottom: 0
}
.hover-shadow {
    -webkit-box-shadow: 0 0 35px rgba(0, 0, 0, 0.11);
    box-shadow: 0 0 35px rgba(0, 0, 0, 0.11)
}
.fs-10 {
    font-size: 10px !important;
}
		</style>
    </head>
    <body>
   		
  			<% 
  				Calendar cal = Calendar.getInstance();
 				UserDAO userDAO=new UserDAO();
  				BbsDAO bbsDAO=new BbsDAO();
  				FollowDAO followDAO=new FollowDAO();
				ArrayList<User> user=userDAO.user((String)session.getAttribute("userID"));
				int count=bbsDAO.getCount((String)session.getAttribute("userID"));
				int monthcount=bbsDAO.getmonthCount((String)session.getAttribute("userID"), String.valueOf((cal.get(Calendar.MONTH)+1)));
				String imgurl="./upload/"+user.get(0).getUserPicture();
				System.out.print(imgurl);
			%>
			
			
  			 <div class="container">
  			 	<div class="card" style="width:25%;margin-top:40px;display: inline-block;">
  			 		<img class="card-img-top" src="./upload/<%out.print(user.get(0).getUserPicture());%>" id="img_click" style="width:100%">
   			 			<div class="card-body">
  			 				<h4 class="card-title"><%=(String)session.getAttribute("userID")%></h4>
  			 				<p class="card-text"><%out.print(user.get(0).getUserName());%></p> 	
  			 				<span class="glyphicon glyphicon-envelope" aria-hidden="true">
  			 					<%out.print(user.get(0).getUserEmail());%>
  			 				</span>
  			 				<span class="glyphicon glyphicon-user" aria-hidden="true">
  			 					<a href="GetFollowList.jsp">팔로우<%out.print(followDAO.getFollow((String)session.getAttribute("userID")));%></a> º
  			 					<a href="GetFollowingList.jsp">팔로잉<%out.print(followDAO.getFollowing((String)session.getAttribute("userID")));%></a>
  			 				</span>
  			 				<a href="ModifyUser.jsp" class="btn btn-success" style="width:100%">수정하기</a>
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
							</div> 
							
  							<!-- The Modal -->
  							  <script type="text/javascript">
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
        							if (event.target == modal) {
            							modal.style.display = "none";
        							}
    							}
    							</script>
    							
    							<%
							  	String userID = (String)session.getAttribute("userID");
    							ArrayList<Follow> list=followDAO.SearchFollow(userID);
								for(int i=0; i<list.size(); i++){
									System.out.println(list.size());
								//int follow=followDAO.SearchFollowing(userID,getFollowList.get(i).getUserID()); 
							
								%>
	
 	<p class="card-text"></p>
 	<div class="container">
		<div class="col-md-12">
    		<div class="card b-1 hover-shadow mb-20">
        		<div class="media card-body"> 
           			<div class="media-body">
           				<form method="post" action="Follow.jsp">
                			<div class="mb-2">
                				<span class="fs-20 pr-16" onclick="location.href='SearchUser.jsp?id=<%=list.get(i).getFollow()%>'" ><%=list.get(i) %></span>
                				
               				</div>
               			@<%=list.get(i)%></input><br>
               			
                		<p class="fs-14 text-fade mb-12"><i class="fa fa-map-marker pr-1"></i><%=list.get(i).getFollow()%></p>
                		
            		</div>
        		</div>
        		<footer class="card-footer flexbox align-items-center">
            	<div>
               		<strong>Applied on:</strong>
                	<span><%= list.get(i)%></span>             
            	</div>
            	<div class="media-right text-right d-none d-md-block">
            	<input type="text" name="id" style="display:none" value=<%=list.get(i)%>>
            		<%-- <% if(getFollowList.get(i).getUserID().equals(userID)){%>  
                	<%}else if(follow>0){%>
                	<a href='Unfollow.jsp?id=<%=getFollowList.get(i).getUserID()%>' class="btn btn-success" value="UNFOLLOW">UNFOLLOW</a>
                	<%}else{%>
                	<a href='Follow.jsp?id=<%=getFollowList.get(i).getUserID()%>' class="btn btn-success" value="FOLLOW">FOLLOW</a>
                	<%} %> --%>
            	</div>
        		</footer>
        		</form>
    		</div>
		</div>
	</div>
	
 	 
 	<%}%>
    							
    							
</body>
</html>