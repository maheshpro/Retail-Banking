<%@page import="java.net.http.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>
<link
	href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/loginUser.css">

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-family: sans-serif;
	background: linear-gradient(to right, #610354, #053070);
	}
</style>

</head>
<body>


	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
	<div class="container">
		<div class="card login-card"
			style="background: rgb(0, 0, 0); /* Fallback color */ background: rgba(0, 0, 0, 0.5);">
			<div class="row no-gutters">
				<div class="col-md-6">
					<div class="card-body">
						<div class="brand-wrapper" align="center">
							<h1 class="header " style="color: aliceblue;">MRKG Bank</h1>
						</div>
						<br><h4 class="login-card-description" style="color: aliceblue;">Sign
							In</h4>
						
						<form:form action="/login" method="post" modelAttribute="login">
							<div class="form-group">
								<form:label for="email" path="userid" class="sr-only">UserId</form:label>
								<form:input type="text" path="userid" name="Id" id="Id"
									class="form-control" placeholder="UserId" autocomplete="off" />
							</div>
							<div class="form-group mb-4">
								<form:label for="password" path="password" class="sr-only">Password</form:label>
								<form:input type="password" path="password" name="password"
									id="password" class="form-control" placeholder="password" />
							</div>
							<form:input type="hidden" path="role" name="role" id="role"
								value="${role}" />
								<br>
							<input name="login" id="login" class="btn btn-primary"
								type="submit" value="Login" />
						</form:form>
						<br> <br>
						<p style="color: turquoise;" id="errorMessage">${msg}</p>

					</div>
				</div>
				<div class="col-md-6">
					<img src="data:image/jpeg;base64,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"
						style="width: 600; height: 550; padding-top: 80; padding-right: 130;padding-bottom: 40;"
						alt="login" class="login-card-img">
				</div>
			</div>
		</div>
	</div>
	</main>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>