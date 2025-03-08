<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add notes</title>
<%@include file="add_js_css.jsp" %>
</head>
<body>
    <div class="container-fluid p-0">
       <%@include file="navbar.jsp" %>
    </div>
   
    <div class="mx-auto p-2" style="width: 80%;">
    <h1>Please fill your note detail</h1><br>
    <!-- add form -->
  <form action="SaveNoteServlet" method="post" >
     
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" placeholder="enter your title here" required>
  </div>
  
  <div class="mb-3">
    <label for="password" class="form-label">Note Content</label>
    <textarea  id="content" name="content" class="form-control" placeholder="enter your content here"
    style="height:150px" required></textarea>
   </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-primary">Add</button>
  </div>
</form>
   </div> 

</body>
</html>