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


<%@page import="dto.Customer"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="UTF-8">
<style type="text/css">
.mid
{
margin-left:35%;
margin-top:200px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Customerdao cdao = new Customerdao();
	%>
	<%
	if (request.getParameter("condition") != null) {
		int i = Integer.parseInt(request.getParameter("condition"));
		int j = Integer.parseInt(request.getParameter("custId"));
		if (i == 1) {
			String name = request.getParameter("name");
			cdao.updateStudentName(j, name);
			PrintWriter pw = response.getWriter();
			pw.write("<html><body><h1>Data Updated Successfully</h1></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.include(request, response);
		} else if (i == 2) {

			String email = request.getParameter("email");
			cdao.updateStudentEmail(i, email);
			PrintWriter pw = response.getWriter();
			pw.write("<html><body><h1>Data Updated Successfully</h1></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.include(request, response);
		} else if (i == 3) {
			String country = request.getParameter("country");
			cdao.updateStudentCountry(j, country);
			PrintWriter pw = response.getWriter();
			pw.write("<html><body><h1>Data Updated Successfully</h1></body></html>");
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.include(request, response);
		}

	} else {

		/*  	@WebServlet(value = "/kana")
			class FetchId extends HttpServlet {
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { */
		int i = Integer.parseInt(request.getParameter("radioValue"));
		int j = Integer.parseInt(request.getParameter("id1"));
		if (i == 1) {
	%>
	<form action="" method="get" class="mid">
		<div class="mb-3 row">
			<label for="staticEmail" class="col-sm-2 col-form-label">NAME</label>
			<div class="col-sm-10">
				<input type="text" id="staticEmail" name="name">
			</div>
		</div>
		<input type="hidden" id="staticEmail" name="condition" value=<%=i%>>
		<input type="hidden" id="staticEmail" name="custId" value=<%=j%>>
		<button type="submit" class="btn btn-primary">SUBMIT</button>

	</form>

	<%
	} else if (i == 2) {
	%>

	<form action="" method="get" class="mid">
		<div class="mb-3 row">
			<label for="inputPassword" class="col-sm-2 col-form-label">EMAIL</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputPassword"
					name="email">
			</div>
		</div>
		<input type="hidden" id="staticEmail" name="condition" value=<%=i%>>
		<input type="hidden" id="staticEmail" name="custId" value=<%=j%>>
		<button type="submit" class="btn btn-primary">SUBMIT</button>
	</form>
	<%
	} else if (i == 3) {
	%>
	<form action="" method="get" class="mid">
		<div class="mb-3 row">
			<label for="inputPassword" class="col-sm-2 col-form-label">NATIONALITY</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputPassword"
					name="country">
			</div>
		</div>
		<input type="hidden" id="staticEmail" name="condition" value=<%=i%>>
		<input type="hidden" id="staticEmail" name="custId" value=<%=j%>>
		<button type="submit" class="btn btn-primary">SUBMIT</button>
	</form>
	<%
	}
	}
	%>

</body>
</html>