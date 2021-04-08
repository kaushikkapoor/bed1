<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Not Available </title>
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

				<div class="card-body ml-5 mr-5">
					<p class="text-left">
						Sorry, this hotel is not available for the choosen date. <br/>
						Please click on below link to choose another hotel.<br/>
					</p>
				</div>
				
				<a href="index.jsp" type="button"
		class="mt-3 ml-5 mr-5 mb-5 text-center"><strong>
			Choose Again </strong></a>
			</div>
		</div>
	</div>
</body>
</html>