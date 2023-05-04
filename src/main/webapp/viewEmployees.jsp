<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMPLOYEE-MANAGEMENT-SYSTEM</title>
</head>
<body>
		<h2>EMPLOYEE LIST</h2>
		
		<table>
			<tr>
				<th>EMP ID</th>
				<th>EMP NAME</th>
				<th>EMP EMAIL</th>
				<th>EMP SALARY</th>
				<th>UPDATE</th>
				<th>DELETE</th>
			</tr>
		<c:forEach var="employee" items="${employees}">
			<tr>
				<td>${employee.getEmployeeId()}</td>
				<td>${employee.getEmployeeName()}</td>
				<td>${employee.getEmployeeEmail()}</td>
				<td>${employee.getEmployeeSalary()}</td>
				<td><a href="updateEmployee?id=${employee.getEmployeeId()}">Update</a></td>
				<td><a href="deleteEmployee?id=${employee.getEmployeeId()}">Delete</a></td> 
			</tr>
		
		</c:forEach>
		
		</table>
</body>
</html>