package service;

import java.util.ArrayList;

import domain.CartVO;
import domain.ProductVO;
import persistence.CartDAO;
import persistence.ProductDAO;

public class CartService {
	CartDAO cartDAO = new CartDAO();
	
	public boolean create(String user_id, String product_id) {
 	   	return cartDAO.create(user_id,product_id);
	}
	
	public ArrayList<CartVO> readList(String user_id) {
		return cartDAO.readList(user_id);
	}
	
	public ArrayList<ProductVO> getProductList(ArrayList<CartVO> cartList) {
		ProductDAO productDAO = new ProductDAO();
		ArrayList<ProductVO> productNameList = new ArrayList<ProductVO>();
		
		for (CartVO vo:cartList) {
			productNameList.add(productDAO.read(vo.getProduct_id()));
		}
		return productNameList;
	}
	public void delete(String product_id) {
		cartDAO.delete(product_id);
	}
	public void buy(String user_id) {
		cartDAO.buy(user_id);
	}
	
}
