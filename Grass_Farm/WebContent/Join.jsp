<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/Join.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>잔디공작소</title>
<style>
body { background-image: url('./img/Index_bg.png'); }
</style>
</head>
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
       		<p id="loginhe">회원 서비스 이용을 위해 회원가입하세요.</p>
       		<img id="bannerstyle" src="./img/banner.png">       		
       	</div>
       	<div id="box2">
       	<p id="welcome">Join</p> 
       	<form action="JoinAction.jsp" method="post">
       		<div class="input-group" id="inputstyle">        
  				<span class="input-group-addon" id="spanstyle"><i class="glyphicon glyphicon-user" id="icolor"></i></span>
  				<input type="text" id="input" class="form-control" name="userID" placeholder="아이디" required="required">
			</div>
			<div class="input-group" id="inputstyle">  
  				<span class="input-group-addon" id="spanstyle"><i class="glyphicon glyphicon-lock" id="icolor"></i></span>
  				<input type="password" id="input" class="form-control" name="userPass" placeholder="비밀번호" required="required">
			</div>
			<div class="input-group" id="inputstyle">  
  				<span class="input-group-addon" id="spanstyle"><i class="glyphicon glyphicon-ok" id="icolor"></i></span>
  				<input type="password" id="input" class="form-control" name="userPassCheck" placeholder="비밀번호확인" required="required">
			</div>
			<div class="input-group" id="inputstyle">  
  				<span class="input-group-addon" id="spanstyle"><span class="glyphicon glyphicon-user" id="icolor"></span></span>
  				<input type="text" id="input" class="form-control" name="userName" placeholder="이름" required="required">
			</div>
        	<div class="input-group" id="inputstyle">  
  				<span class="input-group-addon" id="spanstyle"><i class="glyphicon glyphicon-envelope" id="icolor"></i></span>
  				<input type="email" id="input" class="form-control" name="userEmail" placeholder="이메일" required="required">
			</div>
            	<button type="submit" id="btnstyle" class="btn btn-success login-btn btn-block">회원가입하기</button>
    	</form>    		
       	</div>
       </div>         
	   </div>
     </div>
</div>    
</body>
</html>