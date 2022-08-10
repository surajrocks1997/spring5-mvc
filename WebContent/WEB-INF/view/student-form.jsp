<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!Doctype html>
<html>
<head>
<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		First Name: <form:input path="firstName"/>
		<br>
		Last Name: <form:input path="lastName"/>
		<br>
		Country: 
		<%-- <form:select path="country">
			<form:option value="Brazil" label="Brazil"></form:option>
			<form:option value="Germany" label="Germany"></form:option>
			<form:option value="France" label="France"></form:option>
			<form:option value="India" label="India"></form:option>
		</form:select> --%>
		
		<form:select path="country">
			<form:options items="${student.countryOptions}" />
		</form:select>
		<br>
		
		Favorite Language: 
		<br>
		
		Java <form:radiobutton path="favoriteLanguage" value="Java"/>
		C# <form:radiobutton path="favoriteLanguage" value="C#"/>
		Node <form:radiobutton path="favoriteLanguage" value="Node"/>
		
		<br>
		
		Operating System Experience
		<br>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		MacOS <form:checkbox path="operatingSystems" value="MacOS"/>
		
		<br>
		<input type="submit" value="submit">
	</form:form>
</body>
</html>