<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<% 
	
String error = (String)request.getAttribute("error");

if (error != null){
%>
	<script>
	alert("로그인에 실패하였습니다. 아이디와 비밀번호를 확인해주세요!");
	history.back();
	location.reload();
	</script>                      
<%
} 
%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="css/main_styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    
</head>

<body>
	<jsp:include page="menu.jsp"/>

	<header class="py-3">
	    <div class="container px-4 px-lg-5 my-5">
	        <div class="text-center text-white">
	            <h1 class="display-4 fw-bolder"><span style="color: #FF69B4;">Login</span></h1>
	            <br><br>
	            
	            <c:choose>
				<c:when test="${empty success}"> 
	            <p class="lead fw-normal text-black-50 mb-0">If you wanna join? <a href="http://localhost:8080/yulim_free/register.jsp" target="_self"><b>click here!</b></a></p>
	            
	            </c:when>
				<c:otherwise>
				<p class="lead fw-normal text-black-50 mb-0">Congraturations! <b>Now you can sign in</b></p>
				</c:otherwise>
				</c:choose>
	        </div>
	    </div>
	</header>
<div class="container" align="center">
	<div class="col-md-4 col-me-offset-4">
	
		<form class="form-signin" action="http://localhost:8080/yulim_free/UserServlet?cmd=login" method="post">
			<div class="form-group">
				<input type="text" name="id" class="form-control" placeholder="ID" required autofocus>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" placeholder="Password" required>
			</div>
			<button class="btn btn-lg btn-block" type="submit" style="background-color: #FF69B4; color:white;"><strong>submit</strong></button>
		</form>
	</div>
</div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>