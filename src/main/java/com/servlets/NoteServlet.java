package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class NoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public NoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// title , content fetch

			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content, new Date());
			
			
			// hibernate save.......

			Session s = FactoryProvider.getFactory().openSession();
			
			Transaction tr = s.beginTransaction();
			s.save(note);
			tr.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 st text-align:center>note is added</h1>");
			out.println("<h1 text-align:center><a href='all_notes.jsp'>View All Notes</a></h1>");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
