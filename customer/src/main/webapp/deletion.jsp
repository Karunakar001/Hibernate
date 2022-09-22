<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="" method="get" class="mid">
		<div class="mb-3 row">
			<label for="staticEmail" class="col-sm-2 col-form-label">ID</label>
			<div class="col-sm-10">
				<input type="text" id="staticEmail" name="name">
			</div>
		</div>
		<button type="submit" class="btn btn-primary">SUBMIT</button>

	</form>




	<td><a href="delete?id=<%=c.getId()%>" type="button"><button>DELETE</button></a></td>

</body>
</html>