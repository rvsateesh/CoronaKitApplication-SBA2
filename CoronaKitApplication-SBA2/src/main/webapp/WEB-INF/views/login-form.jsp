<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<title>Corona Kit Application</title>
	</head>
	<body>
		<core:if test="${param.error != null}">
			<i>Invalid Credentials!!!</i>
		</core:if>
		<spring-form:form class="form-group" action="${pageContext.request.contextPath}/validate" method="POST">
			<div class="container text-center well border p-3">
				<div class="p-3"><h4>Enter your credentials for login!</h4></div>
				<label class="col-form-label">Username</label>
				<label class="col-form-label"><input class="form-control text-center" type="text" name="username" /></label><br/>
				<label class="col-form-label">Password</label>
				<label class="col-form-label"><input class="form-control text-center" type="password" name="password" /></label>
				<div class="p-4">
					<input class="btn btn-secondary" type="submit" value="Login" />
				</div>
			</div>
		</spring-form:form>
		<core:if test="${param.logout != null}">
			<div class="text-center well font-weight-bold p-3">
				<i>You have been logged out successfully!!!</i>
			</div>
		</core:if>		
		<nav>
			<jsp:include page="${pageContext.request.contextPath}/footer" />
		</nav>
	</body>
</html>