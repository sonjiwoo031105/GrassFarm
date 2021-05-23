<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
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
      </div>
      <input type="text" name="search" class="form-control" required="required">
       <span class="input-group-btn">
        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
      </span>
    </div>
     </form> 
         </div>
</body>
</html>