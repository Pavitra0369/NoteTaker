<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Page</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
	<div class="container">
    	<%@ include file="navbar.jsp" %>
    	<h1>This Is Edit Page</h1>
    	<%
    	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    	Session s = FactoryProvider.getFactory().openSession();
		
		Note note =  s.get(Note.class, noteId);
    	%>
    	<div class="container">
    	<%@ include file="navbar.jsp" %>
    	<h1>Fill Your Notes</h1>
    	
    	<!-- This Is Add Form................ -->
    	
    	<form action="UpdateServlet" method="post">
    	<input value="<%= note.getId()%>" name="noteId" type="hidden">
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input name="title" required="required" type="text" value="<%=note.getTitle()%>" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Note va">
		    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
		    
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required="required" id="content" placeholder="Enter Your Content" class="form-control" style="height:200px"><%=note.getContent()%></textarea>
		  </div>
		  <!-- <div class="form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">Check me out</label>
		  </div> -->
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Update</button>
		  </div>
		  
		</form>
    </div>
    </div>
</body>
</html>