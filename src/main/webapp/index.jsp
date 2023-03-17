<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="icon" href="img/note2.png"/>
    <title>Note Taker</title>
    
    <%@ include file="all_js_css.jsp" %>
  </head>
  <body>
    <div class="container">
    	<%@ include file="navbar.jsp" %>
    	<div class="container text-center my-3 text-primary">
    		<h1>Welcome To Note Taker</h1>
    	</div>
    	
    	<div class="card py-5">
    		<img alt="" class="img-fluid mx-auto" style="max-width: 400px" src="img/notes1.png">
    		<h1 class="text-primary text-uppercase text-center mt-3">Start Taking Your Notes</h1>
    		<div class="container text-center">
    			<a href= "add_notes.jsp " class="btn btn-primary">Start Here</a>
    		</div>
    		
    	</div>
    </div>
  </body>
</html>