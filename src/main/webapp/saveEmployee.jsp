<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE-MANAGEMENT-SYSTEM</title>
</head>
<body>
	<x:form action="addEmployee" modelAttribute="employee">
	<x:input path="employeeName" placeholder="Enter Name"/>
	<x:input path="employeeEmail" placeholder="Enter Email"/>
	<x:input path="employeeSalary" placeholder="Enter Salary"/>
	<input type="submit" value="save">
	</x:form>
</body>
</html>