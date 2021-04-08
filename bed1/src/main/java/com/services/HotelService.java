package com.services;



import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.HotelDAO;
import com.models.HotelInfo;

@Service
public class HotelService {
	
	@Autowired
	private  HotelDAO hotelDAO;
	
	public void getAllHotels() {
		ArrayList<HotelInfo> list=(ArrayList<HotelInfo>) this.hotelDAO.getAll();
		System.out.println(list);
	}
	
	public HotelInfo getHotel(String city,String hotel,Date dd) {
	return	this.hotelDAO.getHotel(city, hotel, dd);
	}

}
