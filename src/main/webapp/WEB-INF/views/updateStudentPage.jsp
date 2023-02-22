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

<title>Update Student Page</title>
</head>
<body>


	<div class="container mt-5">
		<div class="row">
			<div class="col-6">
				<div class="card">
					<form action="${pageContext.request.contextPath}/updateStudent" method="post">
						<div class="card-header text-center">Edit Student Details</div>
						<div class="card-body">
							<input type="hidden" value="${student.id }" name="id">
							<div class="form-group">
								<label for="name">Name</label> <input type="text"
									class="form-control" id="name" placeholder="Enter Name"
									name="name" value="${student.name }"/>
							</div>
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" placeholder="Enter Email"
									name="email" value="${student.email }">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" placeholder="Enter Password"
									name="password" value="${student.password }" />
							</div>
						</div>
						<div class="card-footer text-center">
							<button type="submit" class="btn btn-primary">Update</button>
						</div>
					</form>
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