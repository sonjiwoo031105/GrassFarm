<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="user.User" %>
<%@ page import="follow.FollowDAO"%>
<%@ page import="follow.Follow" %>
<%@ page import="bbs.BbsDAO"%>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ include file="navbar.jsp" %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userName" name="user"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>잔디공작소</title>
<style>
  		body{ 
  			
  			background-color: white;
  		}
      	

        .pr-12 {
    padding-right: 12px !important;
}

.mb-20 {
    margin-bottom: 20px !important;
}

.b-1 {
    border: 1px solid #ebebeb !important;
}

.card {
    border: 0;
    border-radius: 0;
    margin-bottom: 30px;
    -webkit-transition: .5s;
    transition: .5s;
}

.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.media {
    padding: 16px 12px;
    -webkit-transition: background-color .2s linear;
    transition: background-color .2s linear;
}

.media {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: start;
    align-items: flex-start;
}

.card-body {
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    padding: 1.25rem;
}

.media .avatar {
    flex-shrink: 0;
}

.no-radius {
    border-radius: 0 !important;
}

.avatar-xl {
    width: 64px;
    height: 64px;
    line-height: 64px;
    font-size: 1.25rem;
}

.avatar {
    position: relative;
    display: inline-block;
    width: 36px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    border-radius: 100%;
    background-color: #f5f6f7;
    color: #8b95a5;
    text-transform: uppercase;
}

img {
	max-width: 100%;
    vertical-align: middle;
    border-style: none;
}

.mb-2 {
    margin-bottom: .5rem!important;
}

.fs-20 {
    font-size: 20px !important;
}

.pr-16 {
    padding-right: 16px !important;
}

.ls-1 {
    letter-spacing: 1px !important;
}

.fw-300 {
    font-weight: 300 !important;
}

.fs-16 {
    font-size: 16px !important;
}

.media-body>* {
    margin-bottom: 0;
}

small, time, .small {
    font-family: Roboto,sans-serif;
    font-weight: 400;
    font-size: 11px;
    color: #8b95a5;
}

.fs-14 {
    font-size: 14px !important;
}

.mb-12 {
    margin-bottom: 12px !important;
}

.text-fade {
    color: rgba(77,82,89,0.7) !important;
}

.card-footer:last-child {
    border-radius: 0 0 calc(.25rem - 1px) calc(.25rem - 1px);
}

.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77,82,89,0.07);
    color: #8b95a5;
    padding: 10px 20px;
}

.flexbox {
    display: -webkit-box;
    display: flex;
    -webkit-box-pack: justify;
    justify-content: space-between;
}

.align-items-center {
    -ms-flex-align: center!important;
    align-items: center!important;
}

.card-footer {
    padding: .75rem 1.25rem;
    background-color: rgba(0,0,0,.03);
    border-top: 1px solid rgba(0,0,0,.125);
}


.card-footer {
    background-color: #fcfdfe;
    border-top: 1px solid rgba(77, 82, 89, 0.07);
    color: #8b95a5;
    padding: 10px 20px
}

.card-footer>*:last-child {
    margin-bottom: 0
}

.hover-shadow {
    -webkit-box-shadow: 0 0 35px rgba(0, 0, 0, 0.11);
    box-shadow: 0 0 35px rgba(0, 0, 0, 0.11)
}

.fs-10 {
    font-size: 10px !important;
}
	
        
</style>
</head>
<body>
    <script>
	var search document.getElementByname('search').value;
	console.log(search);
	</script>
	
  	<%
  	String search = request.getParameter("search");
 	UserDAO userDAO=new UserDAO();
 	BbsDAO bbsDAO=new BbsDAO();
 	FollowDAO followDAO=new FollowDAO();
	ArrayList<User> userlist=userDAO.search(search);

	
	for(int i=0; i<userlist.size(); i++){
	int follow=followDAO.SearchFollowing((String)session.getAttribute("userID"),userlist.get(i).getUserID()); 
	System.out.print(follow);
	%>

 	<p class="card-text">
 	<div class="container">
		<div class="col-md-12">
    		<div class="card b-1 hover-shadow mb-20">
        		<div class="media card-body"> 
           			<div class="media-body">
           				<form method="post" action="Follow.jsp">
                			<div class="mb-2">
                				<span class="fs-20 pr-16" type="submit" onclick="location.href='SearchUser.jsp?id=<%=userlist.get(i).getUserID()%>'" ><%=userlist.get(i).getUserName() %></span>
               				</div>
               				@<%=userlist.get(i).getUserID()%></input><br>
               			
                			<p class="fs-14 text-fade mb-12"><i class="fa fa-map-marker pr-1">
                			</i><%=userlist.get(i).getUserEmail()%></p>
            		</div>
        		</div>
        		<footer class="card-footer flexbox align-items-center">
            	<div>
               		<strong>Applied on:</strong>
                	<span><%= userlist.get(i).getUserDate()%></span>             
            	</div>
            	<div class="media-right text-right d-none d-md-block">
            		<input type="text" name="id" style="display:none" value=<%=userlist.get(i).getUserID()%>>
	            		<% if(userlist.get(i).getUserID().equals((String)session.getAttribute("userID"))){%>  
	                	<%}else if(follow>0){%>
	                		<a href='Unfollow.jsp?id=<%=userlist.get(i).getUserID()%>' class="btn btn-success" value="UNFOLLOW">UNFOLLOW</a>
	                	<%}else{%>
	                		<a href='Follow.jsp?id=<%=userlist.get(i).getUserID()%>' class="btn btn-success" value="FOLLOW">FOLLOW</a>
	                	<%} %>
            	</div>
        		</footer>
        		</form>
    		</div>
		</div>
	</div>
	<%user.setUserID(userlist.get(i).getUserID());%>
 	<%}%>
 	
 	<%
	ArrayList<Bbs> repolist=bbsDAO.getrepo(search);
	for(int i=0; i<repolist.size(); i++){
	%>
		<div class="container">
		<div class="col-md-12">
    		<div class="card b-1 hover-shadow mb-20">
        		<div class="media card-body"> 
           			<div class="media-body">
           			
                			<div class="mb-2">
                				<span class="fs-20 pr-16" type="submit" onclick="location.href='SearchUser.jsp?id=<%=repolist.get(i).getUserID()%>'" ></span>
               				</div>
               				@<%=repolist.get(i).getUserID()%></input><br>
               			
                			<p class="fs-14 text-fade mb-12"><i class="fa fa-map-marker pr-1">
                			</i><%=repolist.get(i).getBbsTitle()%></p>
            		</div>
        		</div>
        		<footer class="card-footer flexbox align-items-center">
            	<div>
               		<strong>Applied on:</strong>
                	<span><%=repolist.get(i).getBbsDate()%></span>             
            	</div>
            	<div class="media-right text-right d-none d-md-block">
            		
            	</div>
        		</footer>
        	
    		</div>
		</div>
	</div>
	
	<%
	}
	%>
  </body>
 </html>