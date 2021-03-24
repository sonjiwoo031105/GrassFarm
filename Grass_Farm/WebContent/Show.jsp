<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="follow.FollowDAO" %>
<%@ page import="follow.Follow" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

 <style>
        body { padding-top: 70px; }
      	.navbar-fixed-top{
      		background-color: white;
      		overflow : auto;
      	}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
        h2{
        	font-family: 'ImcreSoojin';
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
<script id="dsq-count-scr" src="//grassfarm.disqus.com/count.js" async></script>
<%		
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
%>

<!-- 글 보이는 곳 -->
<div class="container">
<div class="row">
  <div class="col-md-6 col-md-offset-3" style="max-width:100%;">
  <h2><%= bbs.getBbsTitle() %></h2>
  <p><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분"%></p><br>  	
	<label for="content">소스코드</label>
	<textarea class="form-control" rows="5" name="bbsSource" placeholder="소스코드를 입력하세요" readonly>
	<%= bbs.getBbsSource() %>
	</textarea><br>
				
	<label for="language">LANGUAGE</label>
	<select class="form-control" name="bbsLanguage" readonly>
	  	<option value="<%= bbs.getBbsLanguage() %>" ><%= bbs.getBbsLanguage() %></option>
	</select><br>
				
	<label for="content">내용</label>
	<textarea class="form-control" rows="5" name="bbsContent" placeholder="내용을 입력하세요" readonly>
	<%= bbs.getBbsContent() %>
	</textarea><br>
	  <%-- <%
			FollowDAO followDAO = new FollowDAO();
        	BbsDAO bbsDAO = new BbsDAO();
        	
        	ArrayList<Follow> Follow = followDAO.SearchFollowing(userID);
        	for(int i=0; i<Follow.size(); i++){
        		ArrayList<Bbs> list=bbsDAO.getList(Follow.get(i).getFollow());
        		for(int j=0; j<list.size(); j++){
		%>
	<form method="post" action="CommentAction.jsp?bbsID=<%=list.get(j).getBbsID()%>"> <%    		}       	}		%>
	<label for="comment">댓글</label>
	<textarea class="form-control" rows="3" name="bbsComment" placeholder="댓글을 입력하세요..."></textarea>
	<button type="submit" style="margin-right:1%" class="btn btn-sm btn-success" id="btnComment">댓글달기</button>
	<br></form> --%>
	
	<div id="disqus_thread"></div>
<script>
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://grassfarm.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
  </div>
</div>  		
</div>
</body>
</html>