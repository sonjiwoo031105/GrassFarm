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
        body { padding-top: 15%; }
      	.navbar-fixed-top{
      		background-color: white;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
       h1, #id, #ps{
        	font-family: 'ImcreSoojin';
        }
        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        #id{
        	font-size: 20pt;
        }
        #ps{
        	font-size: 13pt;
        }
		</style>
    </head>
    <body>
   	<%
        if(userID==null){
    %>
       <div class="alert alert-success" role="alert" style="text-align:center">로그인 해주세요.</div>
    <%}else{ %>
  			<% 
  			Calendar cal = Calendar.getInstance();
 			UserDAO userDAO=new UserDAO();
  			BbsDAO bbsDAO=new BbsDAO();
			ArrayList<User> user=userDAO.user((String)session.getAttribute("userID"));
			int count=bbsDAO.getCount((String)session.getAttribute("userID"));
			int monthcount=bbsDAO.getmonthCount((String)session.getAttribute("userID"), String.valueOf((cal.get(Calendar.MONTH)+1)));
			
			%>
	
	<div class="container">
    <div class="row">
    <div class="col-md-10 col-md-offset-1">
  	<img class="img-circle" src="data:image/jpeg;base64,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" id="img_click" style="float:left; width:20%; cursor:pointer;">
  		<div class="col-md-3" style="padding-top:3%; padding-left:4%;">
  			<p id="id"><%=(String)session.getAttribute("userID")%>
  			<button type="button" class="btn btn-default" onclick="location.href='ModifyUser.jsp'">
  			<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
			</button></p>
  			<div class="form-group" style="padding-top:3%;">
  				<span><i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;<%out.print(user.get(0).getUserName());%></span> <br><br>
  				<span><i class="glyphicon glyphicon-envelope"></i>&nbsp;&nbsp;<%out.print(user.get(0).getUserEmail());%></span>	
    		</div> 
  		</div>
  		<div class="col-md-6" style="padding-top:3%;">
  		<p id="ps"><%= user.get(0).getUserName()%>님의 총 잔디 개수<br>
  		<%for(int i = 0; i<count; i++){ %>
  		  	<img src="./img/jandi.png" style="width:5%;">
  		<%} %>
		<p id="ps"><%= user.get(0).getUserName()%>님의 <%=cal.get(Calendar.MONTH)+1%>월의 잔디 개수<br>
		<%for(int i = 0; i<monthcount; i++){ %>
  		  	<img src="./img/jandi.png" style="width:5%;">
  		<%} %>
  		</div>
    </div>
    </div>
    </div>
  			 		<%} %>
  			 		
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