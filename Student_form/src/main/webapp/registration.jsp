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
<title>Insert title here</title>
</head>
<body>



  <div>
    <h1>Welcome to college Student Registration Page</h1>
  </div>




  <form action="servlet" method="post">
    <div class="mb-3 row">
      <label for="inputPassword" class="col-sm-2 col-form-label">Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="inputName"
          name="studentname">
      </div>
    </div>


    <div class="mb-3 row">
      <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
      <div class="col-sm-10">
        <input type="text" readonly class="form-control-plaintext"
          id="staticEmail" value="email@example.com" name="studentemail">
      </div>
    </div>

    <div>
      <button type="button" class="btn btn-success">Success</button>
    </div>
  </form>


</body>
</html>