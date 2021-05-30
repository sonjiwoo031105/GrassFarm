<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잔디공작소</title>
<link rel="shortcut icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="icon" href="img/Contents_Logo.png" type="img/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<style> 
#undershadow{
	box-shadow: 0 3px 3px -3px rgba(0,0,0,0.10), 0 6px 6px -6px rgba(0,0,0,0.12), 0 6px 6px -6px rgba(0,0,0,0.14);
	border-radius: 0px;
}
.nav.navbar-form{
	padding: 0px 0px;
}
.navbar-header{
	float: left;
	width: 20%;	
	margin: 0px;
	padding: 0px 0px;
}
#logo{
	float:left;
	width: 90%;
	margin-top: 8px;
}
@font-face {
	font-family: 'regular';
    src: url('./fonts/NotoSansCJKkr-Regular.otf');
    font-weight: normal;
    font-style: normal;
}
#wich{
	float: left;
	margin-left:8%;
}
#iconstyle{
	border: none;
	background-color:#3dab4a;
	color:white;
	border-top-left-radius: 7px;
	border-bottom-left-radius: 7px;
}
#inputstyle{
	font-family: 'regular';
	border-color:#3dab4a; 
	border-top-right-radius: 7px;
	border-bottom-right-radius: 7px;
	line-height:100%;
  	font-size: 11pt;
  	width: 85%;
}
#inputstyle::placeholder{
	color: #3dab4a;
	font-size: 11pt;
}
#inputstyle:focus{
	outline: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
}
#up{
	float: right;
}
#write{
	padding: 0;
	background-color: #ffffff;
	
}
#repo{
	padding: 0;
	background-color: #ffffff;
}
#user{
	padding: 0;	
	background-color: #ffffff;
}
#writei{
	max-width:100%;
	max-height:100%;
	margin-right: 30px;
}
#repoi{
	max-width:100%;
	max-height:100%;
	margin-right: 30px;
}  
#useri{
	max-width:100%;
	max-height:100%;
}
</style>

<body>
<nav class="navbar" id="undershadow">
  <div class="container">
  	<div class="row">
  		<div class="col-md-8 col-md-offset-2" style="max-width:100%;">  
  			<div class="navbar-header">
        		<a href="Main.jsp"><img src="img/Header_Logo.png" id="logo" alt="로고 : Header_Logo" ></a>
    		</div>	 		
    		<form class="nav navbar-form" role="search" action="Search.jsp">  			     		
  			<div class="form-group" id="wich">
  		    	<div class="input-group">
  					<span class="input-group-addon" id="iconstyle"><i class="glyphicon glyphicon-search"></i></span>
  					<input type="text" id="inputstyle" class="form-control" name="search" placeholder="검색" required="required">
				</div>         		
        	</div>       	
	        <ul id="up" class="nav navbar-nav">	 
	    		<li><a id="write" href="Write.jsp"><img id="writei" src="img/Header_plus.png"></a></li>
	    		<li><a id="repo" href="Repo.jsp"><img id="repoi" src="img/Header_repo.png"></a></li>
	    		<li><a id="user" href="User.jsp"><img id="useri" src="img/Header_profile.png"></a></li>	   		
	        </ul>
      		</form>	
  		</div>
  	</div>
  </div>
</nav>

</body>
</html>