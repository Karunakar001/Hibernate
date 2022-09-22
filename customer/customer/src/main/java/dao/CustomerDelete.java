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
		PrintWriter pw = resp.getWriter();
		Customerdao cd =new Customerdao();
		
		
		if(req.getParameter("some")!=null)
		{
			//pw.write("<html><body><h2><center>DELETED SUCCESSFULLY</center></h2></body></html>");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.include(req, resp);
		}
		else
		{
			if(req.getParameter("idFromListButton")!=null)
			{
				int id2=Integer.parseInt(req.getParameter("idFromListButton"));
				cd.deleteCustomer(id2);
				pw.write("<html><body><h2><center>DELETED SUCCESSFULLY</center></h2></body></html>");
				RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
				rd.include(req, resp);
			}
			else if(req.getParameter("idFromDeleteButton")!=null)
			{
				int id1=Integer.parseInt(req.getParameter("idFromDeleteButton"));		
				cd.deleteCustomer(id1);
				pw.write("<html><body><h2><center>DELETED SUCCESSFULLY</center></h2></body></html>");
				RequestDispatcher rd = req.getRequestDispatcher("list.jsp");
				rd.include(req, resp);
			}
		}
		
		
		
		
		
		

		
		
	}
}
