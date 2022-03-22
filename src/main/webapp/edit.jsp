<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container">
		<%@include file="navBar.jsp"%>

		<br>

		<h1>Edit your notes :</h1>
		<br>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		
		
		%>
		
		<form action="UpdateServlet" method="post">

			<input value="<%= note.getId()%>" name="noteId" type="hidden">
		
			<div class="mb-3">
				<label for="title" class="form-label">New Title</label> 
				<input name="title" type="text" class="form-control" id="title"
				placeholder="Enter a title here!" aria-describedby="emailHelp" required
				value="<%= note.getTitle() %>"
				> 
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">New Content</label>
				<textarea name="content" required id="content" placeholder="Enter your Notes here!"
					class="form-control" style="height: 200px;"><%= note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				
				<button type="submit" class="btn btn-success">Save</button>

			</div>
		</form>



	</div>


</body>
</html>