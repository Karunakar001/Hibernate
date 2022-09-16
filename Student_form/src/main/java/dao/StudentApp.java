package dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Student;

@WebServlet(value="/register")
public class StudentApp extends HttpServlet {

	Student student= new Student();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String studentName=req.getParameter("studentname");
		String studentEmail=req.getParameter("studentemail");
		
		student.setStudName(studentName);
		student.setStudEmail(studentEmail);
		
		StudentDao sd=new StudentDao();
		sd.saveStudent(student);
		PrintWriter pw=resp.getWriter();
		
		pw.write("<html><body><h1>Namaste</h1></body></html>");
		
		RequestDispatcher dispatcher=req.getRequestDispatcher("registration.jsp");
		
		dispatcher.include(req, resp);
	}
}
