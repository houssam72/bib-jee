<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajout Livre</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.js"></script>
</head>
<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<div class="Container">
		<div class="row justify-content-center ">
			<div class="col-4 mt-5">
				<%
				if (request.getParameter("res") != null) {
					if (request.getParameter("res").equals("err")) {
				%>
				<li class="list-group-item list-group-item-danger">remplissez les champs ! </li>

				<%
				}
				}
				%>

				<form action="addBook" method="Post">
					<div class="form-group  mt-3">
						<label for="name">Nom : </label> <input type="text"
							class="form-control" id="name" name="name" placeholder="nom">
					</div>
					<div class="form-group mt-3">
						<label for="Categorie">Categorie : </label> <input type="text"
							class="form-control" id="Categorie" name="categorie"
							placeholder="Categorie">
					</div>
					<div class="form-group mt-3">
						<label for="Autheur">Author : </label> <input type="text"
							class="form-control" id="Autheur" name="author"
							placeholder="Autheur">
					</div>
					<div class="form-group mt-3">
						<button type="submit" class="btn btn-primary px-5">Add</button>
						
					</div>


				</form>
			</div>
		</div>
	</div>



</body>
</html>