package bean;

public class Cart {

    
	private int productId;

	private String name; 
	private String description;
	private double unitPrice;
	private double discount;
	private int quantity;

	
		
	public Cart(int productId, String name, String description, double unitPrice, double discount,
			int quantity) {
		super();
		this.productId = productId;
		this.name = name;
		this.description = description;
		this.unitPrice = unitPrice;
		this.discount = discount;
		this.quantity = quantity;
	}



	public Cart() {
		super();
	}



	public int getProductId() {
		return productId;
	}



	public void setProductId(int productId) {
		this.productId = productId;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public double getUnitPrice() {
		return unitPrice;
	}



	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}



	public double getDiscount() {
		return discount;
	}



	public void setDiscount(double discount) {
		this.discount = discount;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public double getAmount() {
		return quantity*unitPrice;
	}

}
