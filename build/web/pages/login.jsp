<%-- 
    Document   : login
    Created on : 9/04/2018, 10:35:52 PM
    Author     : Byron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
HttpSession sesion=request.getSession();
String status="";
try{
	status=sesion.getAttribute("msg_txt").toString();
	sesion.removeAttribute("msg_txt");
}catch(NullPointerException e){}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" alt="Imagen" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" action="./Login" method="post">
                <span id="reauth-email" class="reauth-email"></span>
                <input type="text" id="usuario" name="usuario" class="form-control" placeholder="Usuario" required autofocus>
                <input type="password" id="password" name="password"  class="form-control" placeholder="Contaseña" required>
                <div class="clean"></div>
		<div class="advise"><%=status %></div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Sign in</button>
            </form><!-- /form -->
        </div><!-- /card-container -->
    </div><!-- /container -->
    </body>
</html>
