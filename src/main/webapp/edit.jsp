<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import= "com.helper.FactoryProvider" %>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entities.Note" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="add_js_css.jsp" %>
  </head>
<body>
    
    <div class="container-fluid p-0">
       <%@include file="navbar.jsp" %>
    </div>

    <%
       int noteId=Integer.parseInt(request.getParameter("note_id").trim());
       Session s= FactoryProvider.getFactory().openSession();
       Note note=(Note)s.get(Note.class ,noteId);
    %>
    <div class="mx-auto p-2" style="width: 80%;">
    <h1>Update your note detail</h1><br>
    <form action="UpdateServlet" method="post" >
     
     <input value="<%= note.getId()%>" name="id"  type ="hidden">
     
  <div class="mb-3">
    <label for="title" class="form-label">Note title</label>
    <input type="text" name="title" class="form-control" id="title" aria-describedby="emailHelp" value="<%=note.getTitle() %>" required>
  </div>
  
  <div class="mb-3">
    <label for="password" class="form-label">Note Content</label>
    <textarea id="content" name="content" class="form-control" 
    style="height:auto; overflow:hidden;" oninput="this.style.height = ''; this.style.height = this.scrollHeight + 'px';" 
    required><%=note.getContent() %></textarea>

   </div>
  
  <div class="container text-center">
  <button type="submit" class="btn btn-success">Update your note</button>
  </div>
</form>
</div>
</body>
</html>