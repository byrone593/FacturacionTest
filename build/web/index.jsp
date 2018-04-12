<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<% HttpSession sesion=request.getSession();%>
<html>
    <head>
        <title>Inicio</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.11.1.min.js"></script>

<% if (sesion.getAttribute("username") != null){ %>
<%}else{ %>
<link href="css/login.css" rel="stylesheet" id="login-css">
<%} %>
    </head>
    <body>
       <body>
	<% if (sesion.getAttribute("username") == null){ %>
	<jsp:include page="pages/login.jsp" />
	<% }else{ 
	String username = sesion.getAttribute("username").toString();
	String password = sesion.getAttribute("pass").toString();
%>
	<% if (sesion.getAttribute("usr_type").toString().equals("sa") || sesion.getAttribute("usr_type").toString().equals("admin")){ %>
	<jsp:include page="files/admin.jsp" />
	<% }else{ 
   		sesion.removeAttribute("username");
   		sesion.removeAttribute("pass"); 
		response.sendRedirect("./?p=login");%>
	<% }%>
	<% } %>
</body>
    </body>
</html>
