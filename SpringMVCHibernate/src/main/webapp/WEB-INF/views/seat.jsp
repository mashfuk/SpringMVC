<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<title>Bus Seat Page</title>
<style type="text/css">
html {
	font-size: 16px;
}

.plane {
	margin: 20px auto;
	max-width: 300px;
}

.cockpit {
	height: 250px;
	position: relative;
	overflow: hidden;
	text-align: center;
	border-bottom: 5px solid #d8d8d8; &: before { content : "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	height: 500px;
	width: 100%;
	border-radius: 50%;
	border-right: 5px solid #d8d8d8;
	border-left: 5px solid #d8d8d8;
}

h1 {
	width: 60%;
	margin: 100px auto 35px auto;
}

}
.exit {
	position: relative;
	height: 50px; &: before , & : after {
    content : "EXIT";
	font-size: 14px;
	line-height: 18px;
	padding: 0px 2px;
	font-family: "Arial Narrow", Arial, sans-serif;
	display: block;
	position: absolute;
	background: green;
	color: white;
	top: 50%;
	transform: translate(0, -50%);
}

&
:before {
	left: 0;
}

&
:after {
	right: 0;
}

}
.fuselage {
	border-right: 5px solid #d8d8d8;
	border-left: 5px solid #d8d8d8;
}

ol {
	list-style: none;
	padding: 0;
	margin: 0;
}

.row {
	
}

.seats {
	display: flex;
	flex-direction: row;
	flex-wrap: nowrap;
	justify-content: flex-start;
}

.seat {
	display: flex;
	flex: 0 0 14.28571428571429%;
	padding: 5px;
	position: relative;
	&:
	nth-child
	(3)
	{
	margin-right
	:
	14.28571428571429%;
}

input[type=checkbox] {
	position: absolute;
	opacity: 0;
}

input[type=checkbox]:checked { + label { background:#bada55;
	-webkit-animation-name: rubberBand;
	animation-name: rubberBand;
	animation-duration: 300ms;
	animation-fill-mode: both;
}

}
input[type=checkbox]:disabled { + label { background:#dddddd;
	text-indent: -9999px;
	overflow: hidden; &: after { content : "X";
	text-indent: 0;
	position: absolute;
	top: 4px;
	left: 50%;
	transform: translate(-50%, 0%);
}

&
:hover {
	box-shadow: none;
	cursor: not-allowed;
}

}
}
label {
	display: block;
	position: relative;
	width: 100%;
	text-align: center;
	font-size: 14px;
	font-weight: bold;
	line-height: 1.5rem;
	padding: 4px 0;
	background: #F42536;
	border-radius: 5px;
	animation-duration: 300ms;
	animation-fill-mode: both; &: before { content : "";
	position: absolute;
	width: 75%;
	height: 75%;
	top: 1px;
	left: 50%;
	transform: translate(-50%, 0%);
	background: rgba(255, 255, 255, .4);
	border-radius: 3px;
}

&
:hover {
	cursor: pointer;
	box-shadow: 0 0 0px 2px #5C6AFF;
}

}
}
@
-webkit-keyframes rubberBand { 0% {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

30%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.25
,
0
.75
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.25
,
0
.75
,
1);
}
40%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(0
.75
,
1
.25
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(0
.75
,
1
.25
,
1);
}
50%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.15
,
0
.85
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.15
,
0
.85
,
1);
}
65%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(
.95
,
1
.05
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(
.95
,
1
.05
,
1);
}
75%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.05
,
.95
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.05
,
.95
,
1);
}
100%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
,
1,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
,
1,
1);
}
}
@
keyframes rubberBand { 0% {
	-webkit-transform: scale3d(1, 1, 1);
	transform: scale3d(1, 1, 1);
}

30%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.25
,
0
.75
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.25
,
0
.75
,
1);
}
40%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(0
.75
,
1
.25
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(0
.75
,
1
.25
,
1);
}
50%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.15
,
0
.85
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.15
,
0
.85
,
1);
}
65%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(
.95
,
1
.05
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(
.95
,
1
.05
,
1);
}
75%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
.05
,
.95
,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
.05
,
.95
,
1);
}
100%
{
-webkit-transform
















































































































:
























































 
























































scale3d
















































































































(1
,
1,
1);
transform
















































































































:
























































 
























































scale3d
















































































































(1
,
1,
1);
}
}
.rubberBand {
	-webkit-animation-name: rubberBand;
	animation-name: rubberBand;
}
</style>
</head>
<body>

	<div class="plane">
		<div class="cockpit">
			<h1>Please select a seat</h1>
		</div>
		<div class="exit exit--front fuselage"></div>
		<ol class="cabin fuselage">
			<li class="row row--1">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="1A" /> <label
						for="1A">1A</label></li>
					<li class="seat"><input type="checkbox" id="1B" /> <label
						for="1B">1B</label></li>
					<li class="seat"><input type="checkbox" id="1C" /> <label
						for="1C">1C</label></li>
					<li class="seat"><input type="checkbox" id="1D" /> <label
						for="1D">1D</label></li>
					<li class="seat"><input type="checkbox" id="1E" /> <label
						for="1E">1E</label></li>
				</ol>
			</li>
		</ol>
		<div class="exit exit--back fuselage"></div>
	</div>

	<c:url var="seatslist" value="/seatslist"></c:url>

	<form:form method="POST" commandName="person" action="${seatslist}">
		<table>
			<c:forEach items="${listPersons}" var="person">
				<tr>
					<td><form:checkbox path="name" value="${person}"/></td>
					<td><c:out value="${person.name}" /></td>
				</tr>
			</c:forEach>

			<!-- 			<tr> -->
			<!-- 				<td> -->
			<!-- 					<ul> -->
			<%-- 						<form:select path="name"> --%>
			<%-- 							<form:option value="-" label="--Select phone" /> --%>
			<%-- 							<form:options items="${listPersons}" /> --%>
			<%-- 						</form:select> --%>
			<!-- 					</ul> -->
			<!-- 				</td> -->
			<!-- 			</tr> -->
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form:form>

</body>
</html>
