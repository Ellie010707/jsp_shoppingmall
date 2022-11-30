<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="domain.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String sessionUsername = (String)session.getAttribute("sessionUsername");
	String sessionId = (String)session.getAttribute("sessionId");
   	ProductVO product = (ProductVO)request.getAttribute("product");
%>
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Kuromi Shop</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/info_styles.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="menu.jsp"/>
        <br><br><br><br><br><br>
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                <div class="col-md-6">
                	<% 
                	if(product.getId().equals("1")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi1.png' alt='kuromi1' />");
                	} else if (product.getId().equals("2")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi2.png' alt='kuromi2' />");
                	} else if (product.getId().equals("3")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi3.png' alt='kuromi3' />");
                	} else if (product.getId().equals("4")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi4.png' alt='kuromi4' />");
                	} else if (product.getId().equals("5")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi5.png' alt='kuromi5' />");
                	} else if (product.getId().equals("6")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi6.png' alt='kuromi6' />");
                	} else if (product.getId().equals("7")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi7.png' alt='kuromi7' />");
                	}else if (product.getId().equals("8")){
                		out.print("<img class='card-img-top mb-5 mb-md-0' src='resources/kuromi8.png' alt='kuromi8' />");
                	}
                	
                	
                	%>
                </div>
                    <div class="col-md-6">
                        <div class="small mb-1">TUK: 2020158005-<%= product.getId() %></div>
                        <h1 class="display-5 fw-bolder"><%= product.getProductname() %></h1>
                        <div class="fs-5 mb-5">
                        <%
                        
                        if (product.getIs_sale().equals("1")){
                        	out.print("<span class='text-decoration-line-through'>$");
                        	out.print(product.getPrice());
                        	out.print("</span>");
                  			
                        	out.print("<span style='margin-left:10px;'>$");
                        	out.print(Integer.valueOf(product.getPrice())-2);
                        	out.print("</span>");
                        }
                        else{
                        	out.print("<span>$");
                        	out.print(product.getPrice());
                        	out.print("</span>");
                        	
                        }
                        %>
                        </div>
                        <p class="lead"> <%= product.getDetail() %> </p>
                        <div class="d-flex">
                                <%
                                if (sessionUsername != null){
                                %>
                                	
                                	<a class="btn btn-outline-dark mt-auto" href="http://localhost:8080/yulim_free/CartServlet?cmd=addCart&&user_id=<%= sessionId %>&&product_id=<%= product.getId()%>"><i class="bi-cart-fill me-1"></i>Add to cart</a>
                                <%	
                                } else{
                               	%>
                                	<script>
									alert("로그인 후 이용해주세요!");
									history.back();
									</script>
                                
                                <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br><br><br><br><br><br><br>
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; <a href="https://github.com/Ellie010707">Ellie010707</a></p></div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
