<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
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
        body { padding-top: 30px; }
      	.navbar-fixed-top{
      		background-color: white;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
         h1, #ps, #pss{
        	font-family: 'ImcreSoojin';
        }
        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
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
        
		</style>
    </head>
    <body>
   		
  			<% 
  			String id=request.getParameter("id");
  			Calendar cal = Calendar.getInstance();
 			UserDAO userDAO=new UserDAO();
  			BbsDAO bbsDAO=new BbsDAO();
			ArrayList<User> user=userDAO.user(id);
			int count=bbsDAO.getCount(id);
			int monthcount=bbsDAO.getmonthCount(id, String.valueOf((cal.get(Calendar.MONTH)+1)));
			
			%>
			
  			 <div class="container">
  			 	<div class="card" style="width:25%;margin-top:40px;display: inline-block;">
  			 		<image class="card-img-top" src="./image/grass.png" id="img_click" style="width:100%">
   			 			<div class="card-body">
  			 				<h4 class="card-title"><%=(String)session.getAttribute("userID")%></h4>
  			 				<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
  			 					<p class="card-text"><%out.print(user.get(0).getUserName());%></p> 			 				
  			 				<span class="glyphicon glyphicon-envelope" aria-hidden="true">
  			 					<p class="card-text"><%out.print(user.get(0).getUserEmail());%></p>		
  			 				</span>
  			 				<br><br>
  			 				
  			 				<a href="#" class="btn btn-success" style="width:100%">수정하기</a>
  			 			</div>
  
  				 </div>
  				
  			 			<div class="card" style="width:35%;display: inline-block; ">
  						<div class="card-body">
  			 				<p id="ps"><%out.print(user.get(0).getUserName());%>님의 총 잔디 개수<br>
  								<p id="pss"><%out.print(count);%>개</p>
  								<br><br><br><br><br><br><br><br><br>
  							</p>	
  			 			</div>
  			 		</div>
  			 		
  			 		<div class="card" style="width:35%;display: inline-block; ">
  						<div class="card-body">
  			 				<p id="ps"><%out.print(user.get(0).getUserName());%>님의 <%=cal.get(Calendar.MONTH)+1%>월의 잔디 개수<br>
  						<p id="pss"><%out.print(monthcount);%>개</p>
  						<br><br><br><br><br><br><br><br><br>
  					</p>	
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
  							<form method="post" enctype="multipart/form-data" action="upload.jsp">
  								<input type="file" name="bfile" id="bfile">
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
  								<button type="button" class="btn btn-success btn-lg btn-block">기본 이미지로 변경하기</button>
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

</body>
</html>