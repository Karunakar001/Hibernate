<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.Customerdao"%>
<%@page import="dto.Customer"%>
<%@page import="java.util.*"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%Customerdao cdao = new Customerdao();%>
	<%List<Customer> list = cdao.listAllObject();%>
	
	
	
	
	<table class="table table-striped">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Country</th>
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<%
		for (Customer c : list) {
		%>
		<tr>
			<td><%=c.getId()%></td>
			<td><%=c.getName()%></td>
			<td><%=c.getEmail()%></td>
			<td><%=c.getNationality()%></td>
			<td><a href="delete?id=<%=c.getId()%>" type="button"><button>DELETE</button></a></td>
			<td><a href="updation.jsp?id=<%=c.getId()%>" type="button"><button>UPDATE</button></a></td>
		</tr>
		<%
		}
		%>

	</table>

	<div style="margin-left: 45%;margin-top: 50px;">
		<a href="index.jsp" class="btn btn-primary btn-lg active"
			role="button" aria-pressed="true">HOME PAGE</a>
	</div>

</body>
</html>