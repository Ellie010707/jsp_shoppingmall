<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
import="domain.*, java.util.List, java.util.ArrayList"%>

<%
	request.setCharacterEncoding("UTF-8");
	String sessionUsername = (String)session.getAttribute("sessionUsername");
	String sessionId = (String)session.getAttribute("sessionId");
   	ProductVO product = (ProductVO)request.getAttribute("product");
%>

<%
if (sessionUsername != null){	
} else{
%>
	<script>
	alert("로그인 후 이용해주세요!");
	history.back();
	</script>
<%} %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Kuromi Shop</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="css/main_styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
</head>

<body>
	<jsp:include page="menu.jsp"/>
	
	<header class="py-3">
	    <div class="container px-4 px-lg-5 my-5">
	        <div class="text-left">
	            <h1 class="display-4 fw-bolder"><span style="color: #FF69B4;">My Cart</span></h1>
	        </div>
	    </div>
	</header>
	<div class="container" align="center">
	<table class = "table">
      <thead>
        <tr>
          <th>Product</th><th>Count</th><th>Price</th>
        </tr>
      </thead>
      <tbody>
	<%
	List<CartVO> cartList = (List<CartVO>)request.getAttribute("cartList");
	List<ProductVO> productList = (List<ProductVO>)request.getAttribute("productList");
	List<String> chk = new ArrayList<String>();
	int totalPrice = 0;
	if(productList != null){
	for(ProductVO vo : productList){
			if (chk.contains(vo.getId()) == false) { 		
	%>
		<tr>
			<td>
				<%
				chk.add(vo.getId());
				out.print(vo.getProductname());
				
				%>
				</td>
				
				<td>
				<%
				int i=0;
				for(CartVO cvo : cartList){
					if(cvo.getProduct_id().equals(vo.getId())){
						i = i+1;
					}
				}
				out.print(i);%>
				</td> 
				
				
				<td>
				<%
				int tmpTotal = 0;
				for(int j = 0; j<i; j++ ){
					if (vo.getIs_sale().equals("1")){
						tmpTotal = tmpTotal + Integer.valueOf(vo.getPrice())-2;
						totalPrice = totalPrice + Integer.valueOf(vo.getPrice())-2;
					} else{
						tmpTotal = tmpTotal + Integer.valueOf(vo.getPrice());
						totalPrice = totalPrice + Integer.valueOf(vo.getPrice());
					}
				}
					out.print(tmpTotal);
			%>
			</td>
			<td>
			<a href="http://localhost:8080/yulim_free/CartServlet?cmd=delete&product_id=<%= vo.getId() %>&user_id=<%=sessionId%>">X</a>
			</td>
		</tr>
	<%
		}
	} }
	%>
      </tbody>
    </table>
    
	    <div class="text-right" align=right>
	    	<p style="color: #FF69B4; margin-top:20px"> Total Price: $<%=totalPrice%></p>
	   	</div>
	   	<div>
			<button class="btn btn-lg btn-block" style="background-color: #FF69B4; color:white;"
			type="button" onclick="location.href='http://localhost:8080/yulim_free/CartServlet?cmd=buy&user_id=<%=sessionId%>'">
			<strong>Buy Now</strong></button>
	   	</div>
    </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>