<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm Reservation Page</title>
<%@ page isELIgnored="false"%>

<link href="resources/css/bootstrap.css" rel="stylesheet" />
<script src="resources/javascript/script.js" type="text/javascript"></script>
<style>
body {
	background-image: url('resources/images/hotelback.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}
</style>
</head>
<body>

	<div class="container text-center mt-5">
		<div class="row justify-content-center">
			<div class="card card-primary text-center">

				<div class="card-title">
					<h4 class="mt-3"><%=request.getSession().getAttribute("hotelName")%></h4>
				</div>
				<div class="card-body ml-5 mr-5">
					<p class="text-left">Dear <strong> ${guest} </strong>, <br/>Thank you for choosing <strong><%=request.getSession().getAttribute("hotelName")%>
						</strong>. <br/>It is our pleasure to confirm your reservation.
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>