package com.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
@Entity
public class CustomerOrder {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderId;
	private Date purchaseDate;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cart_id")
	private Cart cart;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="customer_id")
	private Customer customer;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Billingaddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(Billingaddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public Shippingaddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(Shippingaddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	@ManyToOne
	@JoinColumn(name="billingaddress_id")
	private Billingaddress billingAddress;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddress_id")
	private Shippingaddress shippingAddress;

}
