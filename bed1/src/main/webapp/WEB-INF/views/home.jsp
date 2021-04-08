<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link href="resources/css/bootstrap.css" rel="stylesheet">
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
					<h4>Search Hotels</h4>
				</div>
				<div class="card-body ml-5 mr-5">
					<form class="text-center" action="processForm">
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Select City :</label> 
							<select	class="form-control" id="city" name="city" onchange="changeHotel(this.value);">
								<option value="pune">Pune</option>
								<option value="indore">Indore</option>
								<option value="delhi">Delhi</option>
								<option value="mumbai">Mumbai</option>
							</select>
						</div>
						<div class="form-group row">
							<label for="exampleFormControlSelect1">Select Hotel :</label> <select
								class="form-control" id="hotel" name="hotel">
								<option disabled="disabled">Select</option>
								<option value="radisson">Radisson Blu</option>
								<option value="sayaji">Sayaji Hotel</option>
								<option value="apple">AppleSuite Hotel</option>
							</select>
						</div>

						<div class="form-group row">
							<label for="exampleFormControlSelect1">Select Date :</label> <input required="required"
								class="form-control" type="date" id="datemin" min="2021-01-21"
								max="2021-12-31" name="date">
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>