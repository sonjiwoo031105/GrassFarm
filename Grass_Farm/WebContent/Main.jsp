<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script>hljs.initHighlightingOnLoad();</script>

        <script src="js/bootstrap.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/highlight.min.js"></script> <!-- activate highlight.js --> <script>hljs.initHighlightingOnLoad();</script>
		<script src="js/highlight.pack.js"></script>  
		
<title>Insert title here</title>
</head>
<body>
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