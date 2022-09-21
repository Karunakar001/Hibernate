package dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/delete")
public class CustomerDelete extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id1=Integer.parseInt(req.getParameter("id"));
		CustomerDao cd =new CustomerDao();
		cd.deleteCustomer(id1);
		PrintWriter pw = resp.getWriter();
		pw.write("<html><body><h2>DELETED SUCCESSFULLY</h2></body></html>");
		RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
		rd.include(req, resp);
		
	}
}
