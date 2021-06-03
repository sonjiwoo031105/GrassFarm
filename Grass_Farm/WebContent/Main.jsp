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
<link rel="stylesheet" href="css/Main.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/styles/hybrid.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.15.10/highlight.min.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
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
       	<div class="card" id="card_main"> 
          <div class="card-body">
            <h3 class="card-title" id="title"><%=list.get(j).getBbsTitle()%></h3>
            <p id="userid"><%=list.get(j).getUserID()%></p> 
            <p id="date"><%= list.get(j).getBbsDate()%></p>                 
          </div> <br><br> 
            
          <div id="content">
          	&nbsp;<%= list.get(j).getBbsContent() %>
          </div>       
		  
          <pre id="code"><code>
         	<%=list.get(j).getBbsSource()%>
         	</code></pre>
          <div class="card-footer text-muted"> 
          <!-- 만약 넣는다면 여기다가 하트, 댓글, 저장 등등.. -->
          <%-- <a href="Show.jsp?bbsID=<%=list.get(j).getBbsID()%>" class="btn btn-primary">Read More &rarr;</a> --%>
          </div>
        </div>
		<%
        		}
        	}
  	
		%>
      </div>
    </div>
  </div>
 
</body>
</html>