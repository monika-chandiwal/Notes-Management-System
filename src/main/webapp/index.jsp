<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <%@include file="add_js_css.jsp" %>
  </head>
  <body>
    
    <div class="container-fluid p-0">
       <%@include file="navbar.jsp" %>
    </div>
    
    <div class="card m-5">
      <img class="img-fluid mx-auto" style="max-width : 400px;" src="sticky-note.png">
      <h1 class="text-primary text-uppercase text-center mt-3">Start Taking your notes</h1>
      
      <div class="container text-center m-4">
         <a href="all_notes.jsp"class="btn  btn-outline-primary ">Start here</a>
      </div>
    </div>
        
  </body>
</html>