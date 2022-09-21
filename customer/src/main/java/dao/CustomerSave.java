package dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Customer;

@WebServlet(value = "/insert")
public class CustomerSave extends HttpServlet {

	static Customer customer;
	static CustomerDao cd = new CustomerDao();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int i;
		Customer customer1 = new Customer();
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String country = req.getParameter("country");

		customer = new Customer();
		
		customer.setName(name);
		customer.setEmail(email);
		customer.setNationality(country);
	
		customer1 = cd.saveCustomer(customer);
		
		PrintWriter pw = resp.getWriter();
		pw.write("<html><body><h2>INSERTED SUCCESSFULLY</h2></body></html>");
		RequestDispatcher rd = req.getRequestDispatcher("insertion.jsp");
		rd.include(req, resp);

	}

}
