<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="529393072584-snmlihbn3psu2a9buc9kobgrs924aqsn.apps.googleusercontent.com">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>잔디공작소</title>
</head>
<style>

body {
  background-image: url('./img/Index_bg.png');
}
#box{
	background-color: white;
	border-radius: 15px;
	margin-top: 5%;
	height : 600px;
	box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 3px 6px rgba(0,0,0,0.23);
}
#box1{
	float:left;
	background-color: #f8f8f8;
	border-top-left-radius: 15px;
	border-bottom-left-radius: 15px;
	height : 600px;
	width: 55%;
}
#logostyle{
	width:100px; 
	height:100px;
	margin-left: 4%;
	margin-top: 4%;
	margin-bottom: 3%;
}
#hello{
	color: #3dab4a;
	font-family: 'bold';
	font-size: 20pt;
	line-height: 35px;
	margin-left: 6%;
}

@font-face {
	font-family: 'bold';
    src: url('./fonts/NotoSansCJKkr-Bold.otf');
    font-weight: normal;
    font-style: normal;
}
#loginhe{
	color: #3dab4a;
	font-family: 'regular';
	margin-left: 6%;
}

#bannerstyle{
	float: right;
	margin-right: 8%;
	margin-top: 6%;
	width: 70%; 
	height: 44%;
}

@font-face {
	font-family: 'regular';
    src: url('./fonts/NotoSansCJKkr-Regular.otf');
    font-weight: normal;
    font-style: normal;
}

#box2{
	float:right;
	background-color: #ffffff;
	border-top-right-radius: 15px;
	border-bottom-right-radius: 15px;
	height: 600px;
	width: 45%;
}
#welcome{
	float: left;
	font-family: 'medium';
	margin-left: 36.5%;
	margin-top:10%;
	color: #3dab4a;
	font-size: 25pt;
}
#googlelogin{
	float: left;
	width: 60%;
	margin-left:20%;	
	margin-top: 5%;
}
@font-face {
	font-family: 'medium';
    src: url('./fonts/NotoSansCJKkr-Medium.otf');
    font-weight: normal;
    font-style: normal;
}
#one{
	float: left;
	width: 60%;
	border: 0px;
	height: 1px;
	background-color: #3dab4a;
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 0%;
}
#two{
	float: left;
	width: 60%;
	border: 0px;
	height: 1px;
	background-color: #3dab4a;
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 5%;
	margin-bottom: 6%;
}
#inputstyle{
	float: left;
	font-family: 'regular';
	width: 60%;
	height: 40px;
	border-radius: 7px;
	margin-left: 20%;
	margin-right: 20%;
	margin-top: 2%;
}
#inputstyle:focus{
	border-color: #3dab4a;
	-webkit-box-shadow: none;
	box-shadow: none;
	/* -webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #3dab4a;
	box-shadow:inset 0 1px 1px rgba(0,0,0,.075),0 0 6px #3dab4a; */
}
#btnstyle{
	float: left;
	font-family: 'regular';
	width: 60%;
	height: 40px;
	border-radius: 7px;
	margin-left: 20%;
	margin-right: 20%;
	background-color:#3dab4a;
	margin-top: 3%;
}
#btnstyle:hover{
	border: none;	
}
#find{
	float: right;
	margin-right: 20%;	
	font-family: 'regular';
	color: #3dab4a;
	text-decoration: underline;
	font-size: 10pt;
}
#find:hover{
	color:#77db65;
}
#gojoin{
	float: left;	
	font-family: 'regular';
	margin-left: 43%;	
	color: #3dab4a;
	text-decoration: underline;
	font-size: 10pt;
}
#gojoin:hover{
	color:#77db65;
}

</style>

<script type='text/javascript'>        
        function onSignIn(googleUser) {
        	  var profile = googleUser.getBasicProfile();
        	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        	  console.log('Name: ' + profile.getName());
        	  console.log('Image URL: ' + profile.getImageUrl());
        	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
        	}
        
        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
              console.log('User signed out.');
            });
            auth2.disconnect();
        }
</script>

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
       		<p id="loginhe">회원 서비스 이용을 위해 로그인해주세요.</p>
       		<img id="bannerstyle" src="./img/banner.png">       		
       	</div>
       	<div id="box2">
       		<p id="welcome">Welcome</p>       		
       		<div id="googlelogin" class="g-signin2" data-onsuccess="onSignIn"></div>
       		<a href="#" onclick="signOut();">Sign out</a> 
       		<hr id="one">
       		<form action="LoginAction.jsp" method="post">
    			<input type="text" class="form-control" id="inputstyle" name="userID" placeholder="아이디" required="required">  			
    			<input type="password" class="form-control" id="inputstyle" name="userPass" placeholder="비밀번호" required="required">  			
       		<a id="find" href="Join.jsp">아이디/비밀번호 찾기</a>
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