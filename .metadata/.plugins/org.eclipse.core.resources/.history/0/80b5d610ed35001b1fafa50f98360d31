<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>잔디공작소</title>
<link rel="shortcut icon" href="image/grass_removebg_preview_wIP_icon.ico" type="image/x-icon">
<link rel="icon" href="image/grass_removebg_preview_wIP_icon.ico" type="image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
        @font-face {
            font-family: 'ImcreSoojin';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.3/ImcreSoojin.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
		</style>
</head>
<body>
 <%
	String userID=null;
	if(session.getAttribute("userID")!=null){
		userID=(String)session.getAttribute("userID");
	}
%>
<nav class="navbar-fixed-top navbar-default">
    	<div class="container-fluid">
    		
			<div class="navbar-header">
            	<p id="jandi"><a href="Index.jsp" style="text-decoration:none; color:black;">🌱잔디공작소🌱</a><p>           
			</div>
          	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      			<ul class="nav navbar-nav">
              		<li><a href="Write.jsp">WRITE</a></li>
              		<li><a href="Repo.jsp">REPO</a></li>
              		<li><a href="User.jsp">USER</a></li>
            	</ul>
          <form class="navbar-form navbar-right" role="search" action="Search.jsp">
          	<div class="form-group">
          		<input type="text" class="form-control" placeholder="Search" name="userName">
        	</div>
        	<button type="submit" class="btn btn-success">SEARCH</button>
      	  </form>
      	  
  
            <%
            	if(userID==null){
            %>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="Login.jsp">LOGIN</a></li>
              <li><a href="Join.jsp">JOIN</a></li>
            </ul>
            <%
            	}else{
            %>
            <ul class="nav navbar-nav navbar-right">
              <li><a href="LogoutAction.jsp">LOGOUT</a></li>
            </ul>
            <%
            	}
            %>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</body>
</html>