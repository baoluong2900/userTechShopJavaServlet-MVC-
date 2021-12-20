package bean;

import java.util.Date;

public class Product {
	private int productId;
	private String name;
	private double quantity;
	private double unitPrice;
	private String image;
	private String description;
	private double discount;
	private Date enteredDate;
	private int status;
	private int categoryId;
	public Product(int productId, String name, double quantity, double unitPrice, String image, String description,
			double discount, Date enteredDate, int status, int categoryId) {
		super();
		this.productId = productId;
		this.name = name;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.image = image;
		this.description = description;
		this.discount = discount;
		this.enteredDate = enteredDate;
		this.status = status;
		this.categoryId = categoryId;
	}
	public Product() {
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
	public double getQuantity() {
		return quantity;
	}
	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Date getEnteredDate() {
		return enteredDate;
	}
	public void setEnteredDate(Date enteredDate) {
		this.enteredDate = enteredDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
}
