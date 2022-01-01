<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page import="java.util.*,com.luv2code.jsp.tagdemo.Student" %>

<%
	// just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();

	data.add(new Student("John", "Doe", false));
	data.add(new Student("Maxwell", "Johnson", false));
	data.add(new Student("Mary", "Public", true));

	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>
	<table border="1">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>

	<c:forEach var="tempStudent" items="${myStudents}">

		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
				<c:if test="${tempStudent.goldCustomer}">
					Special Discount
				</c:if>

				<c:if test="${not tempStudent.goldCustomer}">
					-
				</c:if>

			</td>
		</tr>

	</c:forEach>

	</table>
	<c:set var="data" value="luv2code" />

	Length of the string <b>${data}</b>: ${fn:length(data)}

	<br/><br/>

	Uppercase version of the string <b>${data}</b>: ${fn:toUpperCase(data)}

	<br/><br/>

	Does the string <b>${data}</b> start with <b>luv</b>?: ${fn:startsWith(data, "luv")}
<br/>
	<c:set var="data" value="Singapore,Toyko,Mumbai,London" />

	<h3>Split Demo</h3>

	<c:set var="citiesArray" value="${fn:split(data, ',')}" />

	<c:forEach var="tempCity" items="${citiesArray}" >
		${tempCity} <br/>
	</c:forEach>

	<h3>Join Demo</h3>

	<c:set var="fun" value="${fn:join(citiesArray, '*')}" />

	Result of joining: ${fun}
</body>

</html>












