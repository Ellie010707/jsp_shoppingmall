package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.UserVO;
import service.UserService;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserService();   

    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setHeader("Content-Type", "text/html;charset=UTF-8");


	      
	      String cmdReq="";
	      cmdReq = request.getParameter("cmd");
	      
	      if(cmdReq.equals("join")) {
	    	  UserVO userVO = new UserVO();
	         
	    	  userVO.setId(request.getParameter("id"));
	    	  userVO.setUsername(request.getParameter("username"));
	    	  userVO.setPw(request.getParameter("password"));
	         
	    	  
	        
	    	  request.setAttribute("success", userService.register(userVO));
	    	  request.setAttribute("user", userVO);
	    	  
	    	  RequestDispatcher view = request.getRequestDispatcher("login.jsp");
	          view.forward(request, response);
	          
	      } else if(cmdReq.equals("login")) {
	    	  request.setCharacterEncoding("utf-8");
	    	  String id = request.getParameter("id");
	  		  String pw = request.getParameter("password");
	  		  
	  		  UserVO userVO = userService.login(id, pw); 
	  		  if (userVO.getId() == null || userVO.getPw() == null){
	  			request.setAttribute("error", "1");
	  			RequestDispatcher view = request.getRequestDispatcher("login.jsp");
	          	view.forward(request, response);	
	  		  }
	  		  request.getSession().setAttribute("error", null);
	  		  request.getSession().setAttribute("sessionId", userVO.getId());
	  		  request.getSession().setAttribute("sessionUsername", userVO.getUsername());
	  		  request.getSession().setMaxInactiveInterval(600);
	  		  
		      RequestDispatcher view = request.getRequestDispatcher("main.jsp");
	          view.forward(request, response);
	      }
	}

}
