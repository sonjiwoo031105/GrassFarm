<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<title>Login</title>
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
    margin: 10% auto;
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
  
<!-- 로그인 폼 -->
  <div class="login-form">
    <form action="loginAction.jsp" method="post">
        <h2 class="text-center" style="padding-bottom:2%"><b>Login</b></h2>  
         
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-user"></span></span>
  				<input type="text" class="form-control" name="userID" placeholder="UserID" aria-describedby="basic-addon1" required="required">
			</div>
        </div>
        
        <div class="form-group">
        	<div class="input-group">
  				<span class="input-group-addon" id="basic-addon2"><i class="glyphicon glyphicon-lock"></i></span>
  				<input type="password" class="form-control" name="userPass" placeholder="Password" aria-describedby="basic-addon2" required="required">
			</div>
        </div>
              
        <div class="form-group">
            <button type="submit" class="btn btn-success login-btn btn-block">Sign in</button>
        </div>
    </form>
</div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>