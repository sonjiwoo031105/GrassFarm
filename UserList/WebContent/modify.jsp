<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta
        http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- 뷰포트 -->
        <meta
        name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<style>
h1{ font-family: 'ImcreSoojin'}
#jandi{ font-family: 'ImcreSoojin'; font-size:18pt; margin-top:4%;}
body { padding-top: 3%; }
.navbar-fixed-top{
   background-color: white;
}
.page-header{
    font-family: 'Playfair Display', serif;
    text-align: left;
}  
h1{
    font-family: 'ImcreSoojin';
}
@font-face {
    font-family: 'ImcreSoojin';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
.login-form {
    width: 23%;
    margin: 7% auto;
}
.login-form form {        
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control, .login-btn {
    border-radius: 2px;
}
.input-group-prepend .fa {
    font-size: 18px;
}
.login-btn {
    font-size: 15px;
    font-weight: bold;
  	min-height: 40px;
}
.form-control{
	float: right;
	width:90%;
	margin-bottom:3%;
}
</style>
    </head>
    <body>
<% 
int idx = 0;

if(request.getParameter("idx") != null){
	idx = Integer.parseInt(request.getParameter("idx"));
}
 			UserDAO userDAO=new UserDAO();
  			ArrayList<User> user=userDAO.user(idx);
    		for(int i=0; i<user.size(); i++){
			
%>
<!-- 회원가입폼 -->
<div class="login-form">
    <form action="modifyAction.jsp?idx=<%=idx%>" method="post">
        <h2 class="text-center" style="padding-bottom:2%"><b>Modify</b></h2>  
        
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  				<input type="text" class="form-control" name="userID" value="<%=user.get(0).getUserID()%>" readOnly>
			</div>
        </div>
        
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
  				<input type="password" class="form-control" name="userPass" placeholder="Password" required="required">
			</div>
        </div>
        
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon"><i class="glyphicon glyphicon-ok"></i></span>
  				<input type="password" class="form-control" name="userPassCheck" placeholder="PasswordCheck" required="required">
			</div>
        </div>
        
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
  				<input type="text" class="form-control" name="userName" placeholder="UserName" value="<%= user.get(0).getUserName() %>" required="required">
			</div>
        </div>
       
              
        <div class="form-group">
            <button type="submit" class="btn btn-success login-btn btn-block">submit</button>
        </div>
    </form>
</div>        
<%} %>
        
        <!-- 애니매이션 담당 JQUERY -->
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    </body>
</html>