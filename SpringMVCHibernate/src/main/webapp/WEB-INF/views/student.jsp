<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Person Page</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
</style>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- <script> 
// 	$(function() {	
// 		$("#name").datepicker();
// 	});
</script> -->

</head>
<body>

	<h1>Student</h1>

	<c:url var="searchAction" value="/student/search"></c:url>

	<form:form action="${searchAction}" commandName="searchCriteria">
		<table>
			<tr>
				<td><form:label path="name">
						<spring:message text="Search" />
					</form:label></td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit"
					value="<spring:message text="Search Student"/>" /></td>
			</tr>
		</table>
	</form:form>


	<br>
	<h3>Students List</h3>
	<c:if test="${!empty listPersons}">
		<table class="tg">
			<tr>
				<th width="80">Person ID</th>
				<th width="120">Person Name</th>
				<th width="120">Person Country</th>
			</tr>
			<c:forEach items="${listPersons}" var="person">
				<tr>
					<td>${person.id}</td>
					<td>${person.name}</td>
					<td>${person.country}</td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
