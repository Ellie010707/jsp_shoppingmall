package service;

import domain.ProductVO;
import persistence.ProductDAO;

public class ProductService {
	
	
	public ProductVO read(String id) {
		ProductDAO productDAO = new ProductDAO();
 	   	return productDAO.read(id);
		
	}
}
