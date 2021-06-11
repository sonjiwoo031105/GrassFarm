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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>잔디공작소</title>
<style>

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
		<img class="card-img-top" src="./img/<%out.print(user.get(0).getUserPicture());%>" id="img_click" style="width:100%">
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
  				
				<%
    				ArrayList<Bbs> getrepo= bbsDAO.getrepo((String)session.getAttribute("userID"));
        			for(int i=0; i<6; i++){
        				if(getrepo.size()==i){
        					break;
        				}
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
    							
    	<jsp:include page="github.jsp" />
    						
	</body>
</html>