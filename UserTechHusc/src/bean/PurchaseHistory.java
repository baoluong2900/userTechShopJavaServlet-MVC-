package bean;

import java.util.Date;

public class PurchaseHistory {
	private int orderId;
	private String name; // name product
	private int quantity;
	private double unitPrice;
	private Date orderDate;
	private int status;
	public PurchaseHistory() {
		super();
	}
	public PurchaseHistory(int orderId, String name, int quantity, double unitPrice, Date orderDate, int status) {
		super();
		this.orderId = orderId;
		this.name = name;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.orderDate = orderDate;
		this.status = status;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	

	


}
