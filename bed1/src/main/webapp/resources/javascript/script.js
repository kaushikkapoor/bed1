/**
 * 
 */


function changeHotel(value) {
	
	
	var hotelByCity = {
		indore: ["Sayaji", "Radisson", "AppleSuite Hotel"],
		pune: ["GreenTree Hotel", "Vivanta Hotel", "LemonTree Hotel"],
		mumbai: ["RedFox Hotel", "Manohar Hotel", "MeghaCity Hotel"],
		delhi: ["SevenSeas Hotel", "Surya Hotel", "Ajanta Hotel"]
	}

	if (value.length == 0) {
		 document.getElementById("hotel").innerHTML = "<option></option>"; }
	else {
		var hotels = "";
		for (categoryId in hotelByCity[value]) {
			hotels += "<option>" + hotelByCity[value][categoryId] + "</option>";
		}
		document.getElementById("hotel").innerHTML = hotels;
	}

}