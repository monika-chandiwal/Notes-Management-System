package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public SaveNoteServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		String title=request.getParameter("title");
		String content = request.getParameter("content");
		Note note=new Note(title,content ,new Date());
		
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		s.save(note);
		
		tx.commit();
		s.close();
		
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
		out.println("<h1 style='text-align:center; text-decoration:none;'><a href='all_notes.jsp'>View all notes</a></h1>");

		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
