package com.eval.coronakit.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="CoronaKit")
public class CoronaKit {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotNull(message = "Id is requried but is auto generated value")
	private int id;
	
	@Column(name="deliveryAddress")
	@NotBlank(message = "Delivery Address cannot be blank")
	@NotNull(message = "Delivery Address cannot be null")
	private String deliveryAddress;
	
	@Column(name="orderDate")
	@DateTimeFormat(iso=ISO.DATE)
	private String orderDate;
	
	@Column(name="totalAmount")
	private int totalAmount;

	public CoronaKit() {
		// TODO Auto-generated constructor stub
	}

	public CoronaKit(int id, String deliveryAddress, String orderDate, int totalAmount) {
		super();
		this.id = id;
		this.deliveryAddress = deliveryAddress;
		this.orderDate = orderDate;
		this.totalAmount = totalAmount;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeliveryAddress() {
		return deliveryAddress;
	}
	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

}
