<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale="1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <style>
        body { padding-top: 4%; 
        text-align : center;}
        .page-header{
            font-family: 'Playfair Display', serif;
            text-align: left;
        }  
</style>
</head>
<body>
    <div class="container">
    <div class="row">
     
     <!-- 테이블 -->
    <div class="col-md-10 col-md-offset-1">
        <div style="float:left;" class=".col-md-4"><h2>UserList</h2></div>  
        <table class='table'>
        	<thead>
        		<tr>
            		<td>번호</td>
            		<td>아이디</td>
            		<td>이름</td>
            		<td>가입일</td>
            		<td>수정</td>
            		<td>삭제</td>
        		</tr>
        	</thead>
        	<tbody>
        	 <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
         
        try{
            String jdbcDriver = "jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8";
            String dbUser = "test";
            String dbPwd = "1111";
             
            conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPwd);
             
            pstmt = conn.prepareStatement("select * from user order by idx desc");
             
            rs = pstmt.executeQuery();
             
            while(rs.next()){
    %>
        <tr>
           	<td><%= rs.getInt("idx") %></td>
        	<td><%= rs.getString("userid") %></td>
            <td><%= rs.getString("username") %></td>
            <td><%= rs.getString("regDate") %></td>
            <td><a href="modify.jsp?idx=<%= rs.getInt("idx") %>"  class="btn btn-default">수정</a></td>
            <td><a onclick="return confirm('정말로 삭제하시겠습니까?')" href="delete.jsp?idx=<%= rs.getInt("idx") %>" class="btn btn-danger">삭제</a></td>
        	
        </tr>
    <%
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %>
    </tbody>
		</table>
	</div>
	<!--col-sm 끝~~ -->
	</div>
    <!--row 끝~~ -->
	</div>
	<!--container 끝~~ -->	
</body>
</html>