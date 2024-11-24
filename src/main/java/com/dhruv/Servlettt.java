package com.dhruv;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlettt
 */
public class Servlettt extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
     */
    public Servlettt() {
        // Default constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //response.getWriter().append("Served at: ").append(request.getContextPath());
        
    	
    	PrintWriter pw=response.getWriter();
//    	pw.println("sucessfulllll............");
    	
//		pw.println("hello");
		
		int id=Integer.parseInt(request.getParameter("employeeId"));
		String name=request.getParameter("employeeName");
		float salary=Float.parseFloat(request.getParameter("employeeSalary"));
		
			
		try {
		Configuration cfg=new Configuration();
		cfg.configure();
		SessionFactory sf=cfg.buildSessionFactory();
		Session sess=sf.openSession();
		Employee e= new Employee();
		e.setId(id);
		e.setName(name);
		e.setSalary(salary);
		Transaction tx=sess.beginTransaction();
		sess.save(e);
		tx.commit();
		sess.close();
		
		pw.println("Entry Sucssesfull..........");
		}
		catch(Exception e) {
			pw.println(e.getMessage());
		}
    	
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
