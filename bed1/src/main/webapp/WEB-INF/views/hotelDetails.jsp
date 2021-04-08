<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<link href="resources/css/bootstrap.css" rel="stylesheet" />

<title>Hotel Details</title>

</head>
<body class="text-center">
	<div class="card card-primary text-center">
		<div class="card-title mt-5">
			<h4>Welcome to ${hotel.hotel}</h4>
		</div>
		<div class="card-body ml-5 mr-5 mt-5">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th scope="col">Room Type</th>
						<th scope="col">Price</th>
						<th scope="col">GST</th>
						<th scope="col">Total</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${hotel.roomType}</td>
						<td>${hotel.price}</td>
						<td>${hotel.gst}</td>
						<td>${hotel.price + hotel.gst}</td>
					</tr>

				</tbody>

			</table>

		</div>
	</div>
	<a href="${pageContext.request.contextPath}/reserve" type="button" class="btn btn-primary mt-5 ml-5 mr-5 text-center">
	<strong>Confirm Booking </strong></a>
	<a href="index.jsp" type="Submit"
		class="btn btn-primary mt-5 ml-5 mr-5 text-center"><strong>
			Back To Home </strong> </a>
</body>
</html>