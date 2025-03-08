<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="org.hibernate.Session"%>
<%@page import ="com.helper.FactoryProvider"%>
<%@page import ="org.hibernate.query.Query"%>
<%@page import ="java.util.List" %>
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
    
    <div class="row m-1">
     
       <div class="col-12">
       
		    <%
		       Session s=FactoryProvider.getFactory().openSession();
		       Query q=s.createQuery("from Note");
		       List<Note> list=q.list();
		       for(Note note:list){  
		       String  up = note.getUpdateDate();
		     %>
		   
		    
	    	   <div class="card mt-5" >
				 <img  src="sticky-note.png" style="max-width:70px;"  class="card-img-top mx-auto m-3" alt="Card image cap">
				  <div class="card-body px-5">
				    <h5 class="card-title"><%= note.getTitle() %></h5>
				    <p class="card-text"><%= note.getContent() %></p>
				    <i><%= note.getAdddedDate() %></i>
				   <br>
				    <%if(up!=null) { %>
				    <i > Last updated on : <%= note.getUpdateDate() %></i>
				    <% } %>
				  
				   <div class="container text-center mt-3">
				    <a href="DeleteServelt?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
				    <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a></div> 
				  </div>
				</div>
		    <%
		       }
		       s.close();
		     
		    %>
       </div>
    
    </div>


    
</body>
</html>