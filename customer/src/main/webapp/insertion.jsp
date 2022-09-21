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
</head>
<body>
	<form action="insert" method="post">

		<div class="mb-3 row">
			<label for="staticEmail" class="col-sm-2 col-form-label">NAME</label>
			<div class="col-sm-10">
				<input type="text" id="staticEmail" name="name">
			</div>
		</div>
		<div class="mb-3 row">
			<label for="inputPassword" class="col-sm-2 col-form-label">EMAIL</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputPassword"
					name="email">
			</div>
		</div>
		<div class="mb-3 row">
			<label for="inputPassword" class="col-sm-2 col-form-label">NATIONALITY</label>
			<div class="col-sm-10">
				<input type="text" class="form-control" id="inputPassword"
					name="country">
			</div>
		</div>
		<button type="submit" class="btn btn-primary">SUBMIT</button>

	</form>
	<div style="margin-left: 45%; margin-top: 50px;">
		<a href="index.jsp" class="btn btn-primary btn-lg active"
			role="button" aria-pressed="true">HOME PAGE</a>
	</div>
</body>
</html>