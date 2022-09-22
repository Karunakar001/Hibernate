<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="dao.Customerdao"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import=" javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
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
<h1><center>Select the field that YOU want to change!!!</center></h1>

	<form action="updation_post.jsp" method="get" style="margin-left: 35%;margin-top: 190px;">


		<div class="btn-group" role="group"
			aria-label="Basic radio toggle button group">
			<input type="radio" class="btn-check" id="btnradio1"
				autocomplete="off" checked name="radioValue" value="1"> <label
				class="btn btn-outline-primary" for="btnradio1">Change Name?</label> <input
				type="radio" class="btn-check"  id="btnradio2"
				autocomplete="off" name="radioValue" value="2"> <label
				class="btn btn-outline-primary" for="btnradio2">Change Email?</label> <input
				type="radio" class="btn-check"  id="btnradio3"
				autocomplete="off" name="radioValue" value="3"> <label
				class="btn btn-outline-primary" for="btnradio3">Change Country?</label>
		</div>

		<%
		
/* 		class FetchId extends HttpServlet {
			protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { */
				 int i = Integer.parseInt(request.getParameter("id"));
		%>
		<div class="mb-3 row">
			<div class="col-sm-10">
				<input type="hidden" id="staticEmail" name="id1" value=<%=i %>>
			</div>
		</div>
		<%
		
		
		%>
		<button type="submit" class="btn btn-primary">SUBMIT</button>
	</form>


</body>
</html>