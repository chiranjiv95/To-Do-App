package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveNotesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			//create object of entity i.e, Note, call the constructor and pass values.
			
			Note note=new Note(title, content, new Date());
			//System.out.println(note.getId()+":"+note.getTitle());
			
			//hibernate save()
			Session session=FactoryProvider.getFactory().openSession();
		
			Transaction tx=session.beginTransaction();
			session.save(note);
			tx.commit();
			session.close();
			
			//print something on the browser
			response.setContentType("text/html");
			response.getWriter().println("<h1 style='text-align:center'>Your notes have been saved successfully! Checkout your Database for the same :)</h1>");
			response.getWriter().println("<h1 style='text-align:center'><button type='submit'><a href='all_notes.jsp'>View Notes</a></button></h1>");
			
		
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		
	}

}
