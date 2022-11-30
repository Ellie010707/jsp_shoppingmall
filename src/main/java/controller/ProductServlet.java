package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.ProductVO;
import service.ProductService;


@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ProductService productService = new ProductService();
       

    public ProductServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
       String cmdReq="";
       cmdReq = request.getParameter("cmd");
      
       if(cmdReq.equals("detail")) {
    	   String no = request.getParameter("no");
    	   ProductVO productVO = productService.read(no);
    	   request.setAttribute("product", productVO);
		   RequestDispatcher view = request.getRequestDispatcher("itemdetail.jsp");
           view.forward(request, response);
     	   
       }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
