<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>잔디공작소</title>
<link rel="stylesheet" href="css/Index.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://apis.google.com/js/api:client.js"></script>
<script src="js/GoogleLogin.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<style>
body {
	background-image: url('./img/Index_bg.png');
}
span.icon {
 	float: left;
    background: url('img/Google_Logo.png') transparent 5px 50% no-repeat;
    background-size: 22px 22px;
    display: inline-block;    
    width: 12.75%;
    height:40px;
    vertical-align: middle;
    margin-left: 2%;
}
#customBtn {
	float: left;
    display: inline-block;    
    width: 85.25%;
    height: 40px;
    text-align: center;
    vertical-align: middle;
    font-family: 'regular';
    padding-right: 7.5%;
    line-height: 38px;
} 
</style>
 
<body>
<div class="container">
     <div class="row">
       <div class="col-md-10.offset-md-1" style="max-width:100%;">
       <div id="box">
       	<div id="box1">
       		<img id="logostyle" src="./img/Contents_Logo.png">
       		<div id="hello">
       		<p>안녕하세요. <br> 잔디공작소입니다.</p>
       		</div>
       		<p id="loginhe">회원 서비스 이용을 위해 로그인하세요.</p>
       		<img id="bannerstyle" src="./img/banner.png">       		
       	</div>
       	<div id="box2">
       		<p id="welcome">Welcome</p>       		
       		 <div id="gSignInWrapper">
       			<span class="icon"></span>
    			<div id="customBtn" class="customGPlusSignIn">      				
      				구글로 로그인하기
    			</div>
  			</div>
  			<div id="name"></div>
  			<script>startApp();</script>	
       		<!-- <a href="#" onclick="signOut();">Sign out</a> -->
       		<hr id="one">
       		<form action="LoginAction.jsp" method="post">
    			<input type="text" class="form-control" id="inputstyle" name="userID" placeholder="아이디" required="required">  			
    			<input type="password" class="form-control" id="inputstyle" name="userPass" placeholder="비밀번호" required="required">  			
       		<a id="find" href="#">아이디/비밀번호 찾기</a>
       		<button type="submit" id="btnstyle" class="btn btn-success login-btn btn-block">로그인하기</button>
       		</form>
       		<hr id="two">
       		<a id="gojoin" href="Join.jsp">회원가입하기</a>
       	</div>
       </div>         
	   </div>
     </div>
</div>
</body>   
</html>