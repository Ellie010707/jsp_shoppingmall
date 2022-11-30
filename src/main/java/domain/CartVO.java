package domain;

public class CartVO {
	String id;
	String user_id;
	String product_id;
	String is_sell;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getIs_sell() {
		return is_sell;
	}
	public void setIs_sell(String is_sell) {
		this.is_sell = is_sell;
	}
}
