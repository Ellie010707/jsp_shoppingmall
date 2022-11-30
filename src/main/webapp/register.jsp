<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<head>
    <meta charset="utf-8" />
    <title>Register</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="css/main_styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="menu.jsp"/>

<header class="py-3">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder"><span style="color: #FF69B4;">Register</span></h1>
        </div>
    </div>
</header>

<div class="container" align="center">
	<div class="col-md-4 col-me-offset-4">
		<form action="http://localhost:8080/yulim_free/UserServlet?cmd=join" method="post">
			<div class="form-group">
				<input type="text" name="id" class="form-control" placeholder="ID" required autofocus>
			</div>
			<div class="form-group">
				<input type="text" name="username" name="password" class="form-control" placeholder="Username" required>
			</div>
			<div class="form-group">
				<input type="password" name="password" class="form-control" placeholder="Password" required>
			</div>
			<button class="btn btn-lg btn-block" type="submit" style="background-color: #FF69B4; color:white;"><strong>submit</strong></button>
		</form>
	</div>
</div>
</body>
</html>