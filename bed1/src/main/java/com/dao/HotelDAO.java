package com.dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.models.HotelInfo;

@Repository
public class HotelDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HotelInfo getSingle(int id) {
		HotelInfo info = this.hibernateTemplate.get(HotelInfo.class, id);
		return info;
	}

	public List<HotelInfo> getAll() {
		List<HotelInfo> hotels = this.hibernateTemplate.loadAll(HotelInfo.class);
		return hotels;
	}

	public HotelInfo getHotel(String city, String hotel, Date date) {

		java.util.Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		java.sql.Date sqlDate = new java.sql.Date(cal.getTime().getTime()); // your sql date
		System.out.println("sqlDate:" + sqlDate);
		System.out.println("Date =" + date.getTime());
		String query = "SELECT e from HotelInfo e WHERE e.city= '" + city + "' and e.hotel= '" + hotel
				+ "' and e.date= '" + sqlDate + "'";
		List<HotelInfo> info = (List<HotelInfo>) this.hibernateTemplate.find(query);
		if (info.isEmpty()) {
			return new HotelInfo();
		} else {
			return info.get(0);
		}
	}

}
