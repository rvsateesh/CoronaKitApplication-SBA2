<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib uri="http://www.springframework.org/tags/form"
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
			<h3>Products List</h3>
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
		<div class="container well p-4">
			<spring-form:form class="form">
				<section class="container-fluid p-4">
					<c:choose>
						<c:when test="${products == null || products.isEmpty() }">
							<p class="container well well-info">No products Found!</p>
						</c:when>
						<c:otherwise>
							<div class="container-fluid well p-3">
								<table class="table table-striped table-hover table-bordered">
									<tr class="table-warning">
										<th class="text-center">Product Id</th>
										<th class="text-center">Product Name</th>
										<th class="text-center">Product Cost</th>
										<th class="text-center">Product Description</th>
										<th class="text-center">Action</th>
									</tr>
									<c:forEach items="${products }" var="product">
										<spring-form:form class="form"
											action="${pageContext.request.contextPath}/user/add-to-cart">
											<tr>
												<td class="text-center"><input class="text-center bg-transparent border-0"
													type="number" name="productId" value="${product.id }"
													${"readonly" }></td>
												<td class="text-center"><input class="text-center bg-transparent border-0"
													type="text" name="productName"
													value="${product.productName }" ${"readonly" }></td>
												<td class="text-center"><input class="text-center bg-transparent border-0"
													type="number" name="pcost" value="${product.cost }"
													${"readonly" }></td>
												<td class="text-center"><input class="text-center bg-transparent border-0"
													type="text" name="productDescription"
													value="${product.productDescription }" ${"readonly" }></td>
												<td class="text-center"><button
														class="btn btn-sm btn-outline-primary" type="submit">Add
														Item</button></td>
											</tr>
										</spring-form:form>
									</c:forEach>
								</table>
								<div class="text-center p-3">
									<a class="btn btn-sm btn-success"
										href="${pageContext.request.contextPath}/user/show-kit">Add
										To Cart</a>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</section>
			</spring-form:form>
		</div>
		<nav>
			<jsp:include page="${pageContext.request.contextPath}/footer" />
		</nav>
	</div>
</body>
</html>