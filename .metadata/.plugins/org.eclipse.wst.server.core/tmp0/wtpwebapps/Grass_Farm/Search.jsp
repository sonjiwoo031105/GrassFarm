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
<link rel="stylesheet" href="css/Search.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>잔디공작소</title>
</head>
<body>	
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
 		<div class="row">
		<div class="col-md-8 col-md-offset-2" style="max-width:100%;">
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
	</div>
	<%user.setUserID(userlist.get(i).getUserID());%>
 	<%}%>
 	
 	<%
	ArrayList<Bbs> repolist=bbsDAO.getrepo(search);
	for(int i=0; i<repolist.size(); i++){
	%>
		<div class="container">
		<div class="col-md-8 col-md-offset-2" style="max-width:100%;">
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