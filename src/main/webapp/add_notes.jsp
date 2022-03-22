<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navBar.jsp"%>
		<br>

		<h1>Add notes details:</h1>
		<br>

		<!--This is add form --------------------------------------------------------------->

		<form action="SaveNotesServlet" method="post">

			<div class="mb-3">
				<label for="title" class="form-label">New Title</label> 
				<input name="title" type="text" class="form-control" id="title"
				placeholder="Enter a title here!" aria-describedby="emailHelp" required> 
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">New Content</label>
				<textarea name="content" required id="content" placeholder="Enter your Notes here!"
					class="form-control" style="height: 200px;"></textarea>
			</div>

			<div class="container text-center">
				
				<button type="submit" class="btn btn-primary">Add Notes</button>

			</div>
		</form>



	</div>

</body>
</html>