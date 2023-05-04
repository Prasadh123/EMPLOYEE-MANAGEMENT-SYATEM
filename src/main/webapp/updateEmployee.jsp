<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE-MANAGEMENT-SYSTEM</title>
</head>
<body>
	<form:form action="saveUpdatedEmployee" modelAttribute="employee">
		<form:input path="employeeId" readonly="true"/>
		<form:input path="employeeName" />
		<form:input path="employeeEmail"/>
		<form:input path="employeeSalary"/>
		<input type="submit" value="update">
	</form:form>
</body>
</html>