<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잔디공작소</title>
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
body{
	margin-top: 50px;
	margin-bottom: 120px;
}
footer{
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 20%;
	background-color: #f5f4f4;
}
header{
	position: fixed;
	left : 0;
	top: 0;
	width: 100%;
	z-index: 4;
}

</style>
</head>
<header>
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
	    		<a id="repo" href="Repo.jsp"><img id="repoi" src="img/Header_rep.png"></a>   	       	 
	    		<a id="write" href="Write.jsp"><img id="writei" src="img/Header_plu.png"></a>        
      		</form>	
  		</div>
  	</div>
  </div>
</nav>
</header>
<body>
내용블라블라`~
</body>
<footer>
<div class="container">
  	<div class="row" style="max-width:100%; height:30px; border : solid 1px black;">
  		
  	</div>
</div>
</footer>
</html>