<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="img/note2.png"/>
<title>Add Notes</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>

	<div class="container">
    	<%@ include file="navbar.jsp" %>
    	<h1>Fill Your Notes</h1>
    	
    	<!-- This Is Add Form................ -->
    	
    	<form action="NoteServlet" method="post">
		  <div class="form-group">
		    <label for="title">Note Title</label>
		    <input name="title" required="required" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Note">
		    <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
		    
		  </div>
		  <div class="form-group">
		    <label for="content">Note Content</label>
		    <textarea name="content" required="required" id="content" placeholder="Enter Your Content" class="form-control" style="height:200px"></textarea>
		  </div>
		  <!-- <div class="form-check">
		    <input type="checkbox" class="form-check-input" id="exampleCheck1">
		    <label class="form-check-label" for="exampleCheck1">Check me out</label>
		  </div> -->
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Add</button>
		  </div>
		  
		</form>
    </div>
</body>
</html>