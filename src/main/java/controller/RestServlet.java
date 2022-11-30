package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import domain.CartVO;
import persistence.CartDAO;


@WebServlet("/RestServlet")
public class RestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public RestServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String cmdReq = request.getParameter("cmd");
		if(cmdReq == null) return;
		
		CartDAO cartDAO = new CartDAO();
		JSONArray arrayJson = new JSONArray();
		
		if(cmdReq.equals("read")) {
			String user_id = request.getParameter("user_id");
			List<CartVO> cartList = cartDAO.readSoldList(user_id);
			try {
				for(CartVO vo : cartList) {
					JSONObject json = new JSONObject();
					json.put("id", vo.getId()); 
					json.put("user_id", vo.getUser_id());
					json.put("product_id", vo.getProduct_id()); 
					arrayJson.put(json);
				}
			} catch (JSONException e) {
				e.printStackTrace();
			}
			out.print(arrayJson);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
