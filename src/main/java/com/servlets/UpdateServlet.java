package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title=request.getParameter("title");
			String content = request.getParameter("content");
			int noteId=Integer.parseInt(request.getParameter("id").trim());
			
			
			Session s=FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			
			Note note=s.get(Note.class, noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setUpdateDate(new Date());
			response.sendRedirect("all_notes.jsp");
			tx.commit();
			s.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
