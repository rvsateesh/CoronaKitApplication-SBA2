<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib uri="http://www.springframework.org/tags/form"
	prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
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
	<div class="well p-3">
		<div class="text-center well p-3">
			<h4>Add new product!</h4>
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
		<div class="col-sm-4 p-3">
			<spring-form:form class="form"
				action="${pageContext.request.contextPath}/admin/product-save"
				method="POST" modelAttribute="product">
				<div class="container text-center well border p-3">
					<div class="form-group">
						<spring-form:label class="col-form-label" path="productName">Product Name</spring-form:label>
						<spring-form:input class="form-control text-center" type="text"
							path="productName" minlength="2" />
						<spring-form:errors path="productName" class="alert alert-danger" />
					</div>
					<div class="form-group">
						<spring-form:label class="col-form-label" path="cost">Product Cost</spring-form:label>
						<spring-form:input type="number" path="cost" min="10"
							class="form-control text-center" />
						<spring-form:errors path="cost" class="alert alert-danger" />
					</div>
					<div class="form-group">
						<spring-form:label class="col-form-label"
							path="productDescription">Product Description</spring-form:label>
						<spring-form:input type="text" path="productDescription"
							minlength="5" class="form-control text-center" />
						<spring-form:errors path="productDescription"
							class="alert alert-danger" />
					</div>
					<div class="form-group text-center p-4">
						<button class="btn btn-primary">Save Product</button>
					</div>
				</div>
			</spring-form:form>
		</div>
	</div>
	<nav>
		<jsp:include page="${pageContext.request.contextPath}/footer" />
	</nav>
</body>
</html>