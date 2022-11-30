package domain;

public class ProductVO {
	private String id;
	private String productname;
	private String detail;
	private String price;
	private String is_sale;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getIs_sale() {
		return is_sale;
	}
	public void setIs_sale(String is_sale) {
		this.is_sale = is_sale;
	}
}
