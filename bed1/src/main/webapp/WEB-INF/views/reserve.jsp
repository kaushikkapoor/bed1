<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserve Page</title>

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

	<div class="container text-center mt-4">
		<div class="row justify-content-center">
			<div class="card card-primary text-center">

				<div class="card-title">
					<h4>Reservation Form</h4>
				</div>
				<div class="card-body ml-5 mr-5">
					<form class="text-center" action="reservation">
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Guest Name :</label> 
							<input class="form-control" type="text" id="guestName"  name="guestName">
						</div>
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Select Gender :</label> <select
								class="form-control" id="gender" name="gender">
								<option disabled="disabled" selected>Select</option>
								<option>Male</option>
								<option>Female</option>
							</select>
						</div>

						<div class="form-group row">
							<label for="exampleFormControlSelect1">Age :</label> 
							<input class="form-control" type="text" id="age"  name="age">
						</div>
						
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Email :</label> 
							<input class="form-control" type="email" id="email"  name="email">
						</div>
						
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Mobile No :</label> 
							<input class="form-control" type="tel" id="mobile"  name="mobile">
						</div>
						<button type="submit" class="btn btn-primary">Reserve</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>