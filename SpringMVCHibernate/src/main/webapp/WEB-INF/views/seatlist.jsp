<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>

</head>

<body>



	<c:forEach items="${person.name}" var="person">
			${person}<br />
	</c:forEach>



</body>
</html>
