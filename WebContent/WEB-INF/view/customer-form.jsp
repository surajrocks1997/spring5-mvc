<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Customer Registration Form</title>
<style>
.error {
	color: red
}
</style>
</head>
<body>

	Fill out the following Form:


	<form:form action="processForm" modelAttribute="customer">
		First Name: <form:input path="firstName" />
		<br>
		Last Name (*): <form:input path="lastName" />
		<br>
		<form:errors path="lastName" cssClass="error"></form:errors>
		<br>
		<input type="submit" value="submit" />
	</form:form>

</body>
</html>