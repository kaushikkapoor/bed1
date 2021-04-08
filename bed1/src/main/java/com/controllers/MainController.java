package com.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.models.HotelInfo;
import com.services.HotelService;

@Controller
public class MainController {

	@Autowired
	HotelService hotelService;

	@RequestMapping("/reserve")
	public String reserve() {
		return "reserve";
	}

	@RequestMapping("/reservation")
	public String reservation(@RequestParam("guestName") String guest, Model m) {
		m.addAttribute("guest", guest);
		return "confirmReservation";
	}

	@RequestMapping("/processForm")
	public String checkAvailability(@RequestParam("city") String city, @RequestParam("hotel") String hotel,
			@RequestParam("date") String dd, Model m, HttpServletRequest request) {

		HttpSession session = request.getSession();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = null;
		try {
			parsed = format.parse(dd);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		HotelInfo h1 = (HotelInfo) hotelService.getHotel(city, hotel, parsed);
		if (h1.getId() > 0 && h1.getStatus().equals("Available")) {
			m.addAttribute("hotel", h1);
			session.setAttribute("hotelName", h1.getHotel());
			return "hotelDetails";
		} else {
			return "notAvailable";
		}

	}

}
