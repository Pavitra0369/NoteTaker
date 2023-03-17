<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/note2.png"/>
<title>All Notes</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
	
	<div class="container">
		<%@ include file="navbar.jsp" %>
		<h1>Here All Notes</h1>
		
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for(Note note: list){
					%>
					<div class="card mt-3">
					  <img class="card-img-top m-3" style="width: 80px" src="img/notes.png" alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title text-primary"><b><%= note.getTitle()%></b></h5>
					    <p class="card-text"><%=note.getContent() %>
					    <p class="text-primary"><b><%=note.getAddeDate()%></b>
					    <div class="container text-center">
					    	<a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
					    	<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
					    </div>
					  </div>
					</div>
					<!-- out.println(note.getId()+":"+note.getTitle()+"<br><br>"); -->
					<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>