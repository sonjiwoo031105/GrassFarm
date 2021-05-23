<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>잔디공작소</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/highlight.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/highlight.pack.js"></script>
<script>hljs.initHighlightingOnLoad();</script>
</head>
<body>
<div class="container">
    <div class="row">     
      <div class="col-md-8 col-md-offset-2" style="max-width:100%;">
     
        <%
        String userID=(String)session.getAttribute("userID");
    	
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
  	
		%>
      </div>
    </div>
  </div>
 
</body>
</html>