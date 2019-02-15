package com.shalom.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.shalom.dao.SphatloDao;
import com.shalom.model.Sphatlo;

/**
 * Servlet implementation class SphatloControllerServlet
 */
@WebServlet("/SphatloControllerServlet")
public class SphatloControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private SphatloDao sphatlo;
	
	@Resource(name="jdbc/sphatlodbase")
	private DataSource theDataSource;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		sphatlo = new SphatloDao(theDataSource); 
	}
   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		System.out.println(command);
		if(command == null) {
			command = "SPHATLO";
		}
		
		System.out.println(command + " 222");
		try {
		switch (command) {
		case "SPHATLO":
			sphatloList(request, response);
			break;
		case "LOGIN":
			login(request, response);
			break;
		default:
			System.out.println("default...");
			break;
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void sphatloList(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
		List<Sphatlo> list = sphatlo.getAllSphatlo();
		
		HttpSession session = request.getSession();
		
		session.getAttribute("email");
		session.setAttribute("SPHATLO_LIST", list);
		//request.setAttribute("SPHATLO_LIST", list);
		
		request.getRequestDispatcher("sphatloList.jsp").forward(request, response);
	}
	
	private void addSphatlo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		
		Sphatlo s = new Sphatlo(name, description, price);
		sphatlo.addSphatlo(s);
		
		request.getRequestDispatcher("").forward(request, response);
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email != null && password != null) {
			int result = sphatlo.userLogin(email, password);
				if(result == 1) {
					sphatloList(request, response);
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
				}else {
					
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Wrong email or password');");
					out.println("location='login.jsp';");
					out.println("</script>");
					//request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			
		}else {
			/*
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Please enter your email and password');");
			out.println("location='login.jsp';");
			out.println("</script>");
			*/
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

}
