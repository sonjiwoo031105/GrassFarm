<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta
        http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- 뷰포트 -->
        <meta
        name="viewport" content="width=device-width" initial-scale="1">
        <!-- 스타일시트 참조  -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link rel="shortcut icon" href="grass_removebg_preview_wIP_icon.ico" type="image/x-icon">
		<link rel="icon" href="grass_removebg_preview_wIP_icon.ico" type="image/x-icon">
       
        <title>잔디공작소</title>
        <style>
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
        .jumbotron{
        	background-image: url('https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F111244264AD6915B2E');
       	 	background-size: cover;
        	text-shadow: black 0.2em 0.2em 0.2em;
        	color:white;
      	}
		</style>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
		<script>hljs.initHighlightingOnLoad();</script>
    </head>
    <body>
 <%
  	if(userID==null){
  %>
   <div class="container">
     <div class="row">
       <div class="col-md-8 col-md-offset-2" style="max-width:100%; text-align:center;">
         <div class="jumbotron" style="margin-top:18%">
  		    <h1>잔디공작소</h1>
  			<p>잔디공작소에 오신 것을 환영합니다.</p>
  			<p><a class="btn btn-success btn-lg" href="Join.jsp" role="button">회원가입하러가기</a></p>
		  </div>
       </div>
     </div>
   </div>
  
  <%
  	}else{
  %>
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <!-- Blog Entries Column -->
      <div class="col-md-8 col-md-offset-2" style="max-width:100%;">
        <div style="float:left" class="col-md-4"><h1>오늘의 잔디</h1></div>
         <form role="search" action="SearchRepocss.jsp">
    
     <div class="input-group" style="margin-top:3%">
      <div class="input-group-btn">
         <select style="width:80px" class="form-control" name="catgo" required="required">
                    <option value=""  selected>선택</option>
                    <option value="bbsTitle">제목</option>
                    <option value="bbsContent">내용</option>
                    <option value="bbsLanguage">언어</option>
         </select>
      </div><!-- /btn-group -->
      <input type="text" name="search" class="form-control" required="required">
       <span class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </span>
    </div><!-- /input-group -->
     </form> 
         </div>
     
      <div class="col-md-8 col-md-offset-2" style="max-width:100%;">
     
        <%
			FollowDAO followDAO = new FollowDAO();
        	BbsDAO bbsDAO = new BbsDAO();
        	
        	ArrayList<Follow> Follow = followDAO.SearchFollowing(userID);
        	for(int i=0; i<Follow.size(); i++){
        		ArrayList<Bbs> list=bbsDAO.getList(Follow.get(i).getFollow());
        		for(int j=0; j<list.size(); j++){
		%>
		
       	<div class="card"> 
        	<pre><code class="<%= list.get(j).getBbsLanguage()%>">
         	<%=list.get(j).getBbsSource()%>
         	</code></pre>
          <div class="card-body">
            <h2 class="card-title"><%=list.get(j).getBbsTitle()%></h2>
            <a href="Show.jsp?bbsID=<%=list.get(j).getBbsID()%>" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted"> 
          Posted on <%= list.get(j).getBbsDate()%> <br>
          Posted by <%=list.get(j).getUserID()%>
          </div>
        </div>
		<br><br>
		<%
        		}
        	}
  	}
		%>
      </div>
    </div>
    <!-- /.row -->
  </div>
  <!-- /.container -->
        <!-- 애니매이션 담당 JQUERY -->
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <!-- 부트스트랩 JS  -->
        <script src="js/bootstrap.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/highlight.min.js"></script> <!-- activate highlight.js --> <script>hljs.initHighlightingOnLoad();</script>
		<script src="js/highlight.pack.js"></script>  
    </body>
</html>