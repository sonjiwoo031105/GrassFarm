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
#logo{
	float:left;
}
.input-group-btn{float: left;}
#up{float: right;}
span{color:black}
.form-control{
	border-color:#3dab4a;
	background-color:#3dab4a;
	border-radius: 10px;
}
.input-group-addon{
	border-color:#3dab4a;
	background-color:#3dab4a;
	color:white;
	border-radius: 10px;
}
#k::placeholder {
  color: white;
}
</style>

<body>
<nav class="navbar">
  <div class="container">

    <div class="navbar-header">
        <img src="img/Header_Logo.png" id="logo" alt="로고 : Header_Logo" >
    </div>
			
    <div class="collapse navbar-collapse">      
      <form class="nav navbar-form " role="search" action="Search.jsp">      		    	
      		<div class="form-group" style="float : 0px auto">
        		<div class="input-group">
  					<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
  					<input type="text" id="k" class="form-control" name="search" placeholder="|     검색" size=50required="required">
				</div>
        	</div>
      		
        	
	            <ul id="up" class="nav navbar-nav">	 
	    			<li><a href="Write.jsp"><span class="glyphicon glyphicon-plus"></span></a></li>
	    			<li><a href="Repo.jsp"><span class="glyphicon glyphicon-folder-open"></span></a></li>
	    			<li><a href="User.jsp"><span class="glyphicon glyphicon-user"></span></a></li>
	              <!-- <li><a href="Login.jsp">LOGIN</a></li>
	              <li><a href="Join.jsp">JOIN</a></li> -->
	              <!-- <li><a href="LogoutAction.jsp">LOGOUT</a></li> -->
	            </ul>
           
            
      </form>
      
        
    </div>
  </div>
</nav>
 
</body>
</html>