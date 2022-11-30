<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
	String sessionUsername = (String)session.getAttribute("sessionUsername");
	String sessionId = (String)session.getAttribute("sessionId");
%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>



 <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <div class="container px-4 px-lg-5">
         <b><a class="navbar-brand" href="main.jsp"><span style="color: #FF69B4;">Kuromi</span> Shop</a></b>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
             <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                 <li class="nav-item"><a class="nav-link" href="main.jsp">Home</a></li>
                <c:choose>
				<c:when test="${empty sessionUsername }"> 
				</c:when>
				<c:otherwise>
                 <li class="nav-item dropdown">
                     <a class="nav-link dropdown-toggle" id="navbarDropdown" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">User</a>
                     <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                         <li><a class="dropdown-item" href="http://localhost:8080/yulim_free/RestServlet?cmd=read&user_id=<%= sessionId%>">Show Receipt</a></li>
                         <li><hr class="dropdown-divider" /></li>
                         <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
                     </ul>
                 </li>
                 </c:otherwise>
     		     </c:choose>	
             </ul>
             
             <c:choose>
				<c:when test="${empty sessionUsername }"> 
				
		             <form class="d-flex">
						<button class="btn btn-outline-dark" type="button" onclick="location.href='login.jsp'">
						Login
						</button>
						
						<button class="btn btn-outline-dark" type="button" onclick="location.href='cart.jsp'">
						<i class="bi-cart-fill me-1"></i>
						Cart
						</button>
		             </form>
             
             </c:when>
				<c:otherwise>
					<form class="d-flex">
						<div style = "margin-right:10px; margin-top:8px;"><b><%=sessionUsername %></b>님 환영합니다.</div>    
						<button class="btn btn-outline-dark" type="button" onclick="location.href='http://localhost:8080/yulim_free/CartServlet?cmd=readList&&user_id=<%= sessionId %>'">
						<i class="bi-cart-fill me-1"></i>
						Cart
						</button>
		             </form>
	             </c:otherwise>
             </c:choose>
             
         </div>
     </div>
 </nav>