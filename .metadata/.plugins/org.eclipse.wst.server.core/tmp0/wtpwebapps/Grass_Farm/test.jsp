<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html";>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<link rel="stylesheet" href="Index.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>잔디공작소</title>
</head>
<body>
<div class="container">
     <div class="row">
       <div class="col-md-10.offset-md-1" style="max-width:100%;">
       <div id="box">
    	<!-- <a href="http://developers.kakao.com/logout">Logout</a> -->
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
       		<span id="kakao"><a id="kakao-login-btn"></a></span>
       		<hr id="one">
       		<form action="LoginAction.jsp" method="post">
  			<div class="form-group">
    			<input type="text" class="form-control" id="inputstyle" name="userID" placeholder="아이디" required="required">
  			</div>
  			<div class="form-group">
    			<input type="password" class="form-control" id="inputstyle" name="userPass" placeholder="비밀번호" required="required">
  			</div>
  			<div class="form-group form-check" id="check">
    			<input type="checkbox" class="form-check-input" id="exampleCheck1">
    			<label class="form-check-label" for="exampleCheck1">로그인 저장</label>
  			</div>
       		<button type="submit" id="btnstyle" class="btn btn-success login-btn btn-block">로그인하기</button>
       		</form>
       		<a id="find" href="Join.jsp">아이디/비밀번호 찾기</a>
       		<hr id="one">
       		<a id="gojoin" href="Join.jsp">회원가입하기</a>
       	</div>
       </div>         
	   </div>
     </div>
</div>
</body>
<script type='text/javascript'>
        Kakao.init('34e3d1b796b4965a2caa3c8116d2492e');
        // 카카오 로그인 버튼
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
</script>
</html>