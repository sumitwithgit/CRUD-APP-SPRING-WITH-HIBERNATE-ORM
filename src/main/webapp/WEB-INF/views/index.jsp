<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />

<title>Spring CRUD APP</title>
</head>
<body>


	<div class="conatiner mt-5">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Email</th>
							<th scope="col">Password</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${student }" var="student">
							<tr>
								<th scope="row">${student.id }</th>
								<td>${student.name }</td>
								<td>${student.email }</td>
								<td>${student.password }</td>
								<td><a href="delete/${student.id }"><i class="fa fa-trash text-danger"></i></a>&nbsp;&nbsp;
									<a href="update/${student.id }"><i class="fa fa-pencil"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="container text-center">
					<a href="addStudentPage" class="btn btn-outline-primary">Add
						New Student</a>
				</div>
			</div>
		</div>
	</div>








	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>