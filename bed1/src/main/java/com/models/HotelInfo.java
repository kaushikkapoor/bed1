package com.models;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="hotelinfo")
public class HotelInfo {

	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="city")
	private String city;
	@Column(name="hotel")
	private String hotel;
	@Column(name="date")
	private Date date;
	@Column(name="status")
	private String status;
	@Column(name="roomType")
	private String roomType;
	@Column(name="price")
	private int price;
	@Column(name="gst")
	private float gst;
	
	public HotelInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public HotelInfo(int id, String city, String hotel, Date date, String status, String roomType, int price,
			float gst) {
		super();
		this.id = id;
		this.city = city;
		this.hotel = hotel;
		this.date = date;
		this.status = status;
		this.roomType = roomType;
		this.price = price;
		this.gst = gst;
	}
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getHotel() {
		return hotel;
	}
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public float getGst() {
		return gst;
	}
	public void setGst(float gst) {
		this.gst = gst;
	}
	
	@Override
	public String toString() {
		return "HotelInfo [id=" + id + ", city=" + city + ", hotel=" + hotel + ", date=" + date + ", status=" + status
				+ ", roomType=" + roomType + ", price=" + price + ", gst=" + gst + "]";
	}
}
