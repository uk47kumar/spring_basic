<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!Doctype html>

<html>

<head>
<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
	First name: <form:input path="firstName" />

		<br>
		<br>
	
	Last name: <form:input path="lastName" />

		<br>
		<br>
		
		Country:
		
		<form:select path="country">

			<form:options items="${student.countryOptions}" />


		</form:select>

		<br>
		<br>
		
		Favorite Language:
		
		Java <form:radiobutton path="favouriteLanguage" value="Java"/>
		C# <form:radiobutton path="favouriteLanguage" value="C#"/>
		PHP <form:radiobutton path="favouriteLanguage" value="PHP"/>
		Ruby <form:radiobutton path="favouriteLanguage" value="Ruby"/>
		
		<br>
		<br>
		
		Operating Systems:
		
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>
		
		<br>
		<br>

		<input type="submit" value="Submit" />

	</form:form>


</body>


</html>