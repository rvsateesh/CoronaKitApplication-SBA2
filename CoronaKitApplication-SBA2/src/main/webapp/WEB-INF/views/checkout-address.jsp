<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>Corona Kit Application</title>
</head>
<body>
	<div class="well p-2">
		<div class="container text-center p-4">
			<h3>Here is your Order!</h3>
		</div>
		<nav class="navbar navbar-light" style="background-color: #e3f2fd">
			<div class="btn-group btn-group-toggle">
				<nav>
					<div class="btn btn-outline-primary">
						<jsp:include page="${pageContext.request.contextPath}/header" />
					</div>
				</nav>
			</div>
			<div>
				<spring-form:form action="${pageContext.request.contextPath}/logout"
					method="POST">
					<input class="btn btn-danger float-md-right" type="submit"
						value="Logout">
				</spring-form:form>
			</div>
		</nav>
		<div class="container well p-3 justify-content-center">
			<div class="well col-lg-6 offset-lg-4">
				<section class="container-fluid">
					<c:choose>
						<c:when test="${ckit == null}">
							<p class="container well well-info">Kit is empty, please add
								products to cart!</p>
						</c:when>
						<c:otherwise>
							<div class="container-fluid well">
								<spring-form:form class="form"
									action="${pageContext.request.contextPath}/user/checkout?ckitId=${ckit.id }">
									<label class="col-form-label">Corona Kit Id: </label>
									<small class="text-primary">${ckit.id }</small>
									<br />
									<label class="col-form-label">Delivery Address: </label>
									<small class="text-primary">${ckit.deliveryAddress }</small>
									<br />
									<label class="col-form-label">Order Date: </label>
									<small class="text-primary">${ckit.orderDate }</small>
									<br />
									<label class="col-form-label">Total Amount: </label>
									<small class="text-primary">${ckit.totalAmount }</small>
									<br />
									<button class="btn btn-sm btn-success">Place Order</button>
								</spring-form:form>
							</div>
						</c:otherwise>
					</c:choose>
				</section>
			</div>
			<nav>
				<jsp:include page="${pageContext.request.contextPath}/footer" />
			</nav>
		</div>
	</div>
</body>
</html>