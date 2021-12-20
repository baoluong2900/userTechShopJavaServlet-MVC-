package bean;

import java.util.Date;

public class Order {
	private int orderid ;
	private double amount;
	private int customerid;
	private Date orderdate;
	private int status;
	public Order(int orderid, double amount, int customerid, Date orderdate, int status) {
		super();
		this.orderid = orderid;
		this.amount = amount;
		this.customerid = customerid;
		this.orderdate = orderdate;
		this.status = status;
	}
	public Order() {
		super();
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
