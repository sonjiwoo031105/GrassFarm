<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>잔디공작소</title>
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/Write.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">
</head>
<script>
function resize(obj) {
    obj.style.height = '1px';
    obj.style.height = (5 + obj.scrollHeight) + 'px';
}
</script>
<body>
<nav class="navbar" id="undershadow">
  <div class="container">
  	<div class="row">
  		<div class="col-md-8 col-md-offset-2" style="max-width:100%;">  			
    		<form class="nav navbar-form" role="search" action="Search.jsp">  
    		<div class="navbar-header">
        		<a href="Main.jsp"><img src="img/Header_Log.png" id="logo" alt="로고 : Header_Logo" ></a>
    		</div>
  			<div class="form-group" id="wich">
  		    	<div class="input-group">
  					<span class="input-group-addon" id="iconstyle"><i class="glyphicon glyphicon-search"></i></span>
  					<input type="text" id="inputstyle" class="form-control" name="search" placeholder="검색" required="required">
				</div>         		
        	</div>
	    		<a id="user" href="User.jsp"><img id="useri" src="img/Header_profil.png"></a>
	    		<a id="write" href="Write.jsp" style="pointer-events: none;"><img id="writei" src="img/Plus_Green.png"></a>        
      		</form>	
  		</div>
  	</div>
  </div>
</nav>
<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <h2 id="name">오늘의 잔디</h2>
  <form method="post" action="WriteAction.jsp">
	<input type="text" class="form-control" id="title" name="bbsTitle" placeholder="제목" required="required">
	<select id="language" class="form-control" name="bbsLanguage" required="required">
	  	<option value="">언어 선택</option>
	  	<option value="JAVA">JAVA</option>
	  	<option value="C">C</option>
	  	<option value="C#">C#</option>
	  	<option value="PYTHON">PYTHON</option>
	  	<option value="PHP">PHP</option>
	  	<option value="CSS">CSS</option>
	  	<option value="JavaScript">JavaScript</option>
	</select>
	<textarea class="form-control" id="code" rows="5" onkeydown="resize(this)" onkeyup="resize(this)" name="bbsSource" placeholder="소스코드" required="required"></textarea><br>
	<textarea class="form-control" id="writeany" rows="5" onkeydown="resize(this)" onkeyup="resize(this)" name="bbsContent" placeholder="내용 작성" required="required"></textarea><br>
	<button type="submit" class="btn" id="btnSave">글쓰기</button>
	<button type="reset" class="btn" id="cancle">취소하기</button>
	</form> 
  </div>
</div>
</div>
</body>
</html>