<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mid {
	margin-left: 35%;
	margin-top: 200px;
	background-color: blue;
	width: 400px;
	height: 400px;
	border-radius:10% 
}
</style>

</head>
<body>

	<%
	if (request.getParameter("condition") != null) {
		int i = Integer.parseInt(request.getParameter("idFromDeleteButton"));
	%>
	<div class="mid">
		<form action="delete" method="get" style="padding: 110px">
			<div class="mb-3 row">
				<div class="col-sm-10">
					<input type="hidden" id="staticEmail" name="idFromDeleteButton"
						value=<%=i%>>
				</div>
			</div>
			<h3 style="color: yellow;">Are You Sure?</h3>
			<button type="submit" class="btn btn-primary"
				style="margin-right: 15%">YES</button>
			<button class="btn btn-primary" type="submit" name="some" value="1">NO</button>
		</form>
	</div>
	<%
	}
	else {
	%>
	<form action="" method="get" >
		<div class="mb-3 row">
			<label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
			<div class="col-sm-10">
				<input type="text" id="staticEmail" name="idFromDeleteButton">
			</div>
			<input type="hidden" name="condition" value="1">
		</div>
		<button type="submit" class="btn btn-primary">SUBMIT</button>

	</form>

	<%
	}
	%>


</body>
</html>