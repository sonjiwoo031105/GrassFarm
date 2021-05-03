<%@page import="java.text.Format"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="user.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import = "java.util.Calendar" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="dist/jquery.calmosaic.min.css">
    <style type="text/css">
        body {
            font-family: 'Roboto',Arial, Helvetica, sans-serif;
            color: #222;
            background-color: #fafafa;
        }
        .container { margin: 150px auto; }
        
    </style>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/moment@2.24.0/moment.min.js"></script>
    <script src="dist/jquery.calmosaic.min.js"></script>
    
</head>

<body>
		
			
    <div class="container">
        <div class="col-md-12">
            <div id="heatmap-1"></div>
        </div>
    </div>
    <script language=javascript>
    var data=[];
    
	<% 
		Calendar cal = Calendar.getInstance();
		UserDAO userDAO=new UserDAO();
		BbsDAO bbsDAO=new BbsDAO();
		ArrayList<User> user=userDAO.user((String)session.getAttribute("userID"));
		int count=bbsDAO.getCount((String)session.getAttribute("userID"));
		List<String> date=bbsDAO.getalldate((String)session.getAttribute("userID"));
		System.out.println(count);
		for (int i = 0; i <count; i++) {
	%>
		<%System.out.println(date.get(i).substring(0, 10).toString());%>
		data.push({count:2, date:"<%=date.get(i).substring(0, 10).toString()%>"});      
	<%
	}
	%>
	
<%-- 	for (var i = 0; i <<%=count%>; i++) {
    	document.write(data[i])
	} --%>
    $("#heatmap-1").calmosaic(data, {
        lastMonth: moment().month()+1,
        coloring: "",
        legend: {
            minLabel: "Fewer"
        },
        labels: {
            custom: {
                monthLabels: "MMM"
            }
        }
    });
</script>
</body>
 
</html>