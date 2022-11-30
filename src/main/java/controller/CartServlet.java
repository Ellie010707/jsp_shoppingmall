package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.CartVO;
import service.CartService;


@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static CartService carService = new CartService();
	private static final long serialVersionUID = 1L;
       

    public CartServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmdReq = request.getParameter("cmd");
		
		if (cmdReq.equals("addCart")) {
			String user_id = request.getParameter("user_id");
			String product_id = request.getParameter("product_id");
			
			carService.create(user_id, product_id);
    	    response.sendRedirect("main.jsp");
    	    
    	    
		} else if(cmdReq.equals("readList")) {
		    String user_id = request.getParameter("user_id");
		    ArrayList<CartVO> cartvo = carService.readList(user_id);
		    request.setAttribute("cartList", cartvo);
		    request.setAttribute("productList", carService.getProductList(cartvo));
		    RequestDispatcher view = request.getRequestDispatcher("cart.jsp");
            view.forward(request, response);
            
            
		} else if(cmdReq.equals("delete")) {
			String product_id = request.getParameter("product_id");
			String user_id = request.getParameter("user_id");
			carService.delete(product_id);
			response.sendRedirect("http://localhost:8080/yulim_free/CartServlet?cmd=readList&&user_id="+user_id);
			
			
		} else if(cmdReq.equals("buy")) {
			String user_id = request.getParameter("user_id");
			carService.buy(user_id);
			response.sendRedirect("http://localhost:8080/yulim_free/CartServlet?cmd=readList&&user_id="+user_id);
			
		}
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
