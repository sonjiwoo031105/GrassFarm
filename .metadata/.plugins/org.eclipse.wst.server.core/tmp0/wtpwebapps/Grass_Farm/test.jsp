<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
  
  
  <script>
  
  </script>
  <style type="text/css">
    
  </style>
  </head>
  <body>
  <!-- In the callback, you would hide the gSignInWrapper element on a
  successful sign in -->
  <div id="gSignInWrapper">
       			<span class="icon"></span>
    			<div id="customBtn" class="customGPlusSignIn">      				
      				<span class="buttonText">구글로 로그인하기</span>
    			</div>
  			</div>
  			<div id="name"></div>
  			<script>startApp();</script>	
  			<a href="#" onclick="signOut();">Sign out</a> 
</body>
</html>