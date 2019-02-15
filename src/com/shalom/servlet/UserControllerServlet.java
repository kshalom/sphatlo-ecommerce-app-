package com.shalom.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.shalom.dao.SphatloDao;
import com.shalom.model.User;

/**
 * Servlet implementation class UserControllerServlet
 */
@WebServlet("/UserControllerServlet")
public class UserControllerServlet extends HttpServlet {
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
		
		//PrintWriter out = response.getWriter();
		try {
			
			String command = request.getParameter("command");
			System.out.println(command);
			
			switch (command) {
			case "ADD":
				addUser(request, response);
				break;
			case "UPDATE":
				updateUser(request, response);
				break;
			case "USER":
				loadUser(request, response);
				break;
			case "DELETE":
				deleteUser(request, response);
				break;
			case "HOME":
				displayHome(request, response);
				break;
			case "REGISTER":
				displayRegister(request, response);
				break;
				/*
			case "LOGIN":
				login(request, response);
				break;
				*/
			default:
				userLists(request, response);
				System.out.println("Default...");
				break;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	private void displayHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	private void displayRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/register.jsp").forward(request, response);
	}
	private void userLists(HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		List<User> userList = sphatlo.getUsers();
		session.setAttribute("USER_LIST", userList);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/userList.jsp");
		dispatcher.forward(request, response);
	}
	
	private void addUser(HttpServletRequest request,HttpServletResponse response) throws Exception {
		//int userId = Integer.parseInt(request.getParameter("userId"));
		String name = (String) request.getParameter("name");
		String surname = (String) request.getParameter("surname");
		String gender = (String) request.getParameter("gender");
		String mobile = (String) request.getParameter("mobile");
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");
		
		User user = new User(name, surname, gender, mobile, email, password);
		sphatlo.addUser(user);
		request.getRequestDispatcher("login.jsp").forward(request, response);
		
	}
	
	private void deleteUser(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		System.out.println(userId);
		
		sphatlo.deleteUser(userId);
		
		userLists(request, response);
	}
	
	private void loadUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int userId = Integer.parseInt(request.getParameter("userId").toString());
		
		System.out.println(userId);
		
		User user = sphatlo.getUser(userId);
		
		HttpSession session = request.getSession();
		session.setAttribute("USER", user);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/upateUser.jsp");
		dispatcher.forward(request, response);
	}
	
	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int userId = Integer.parseInt(request.getParameter("userId"));
		String name = (String) request.getParameter("name");
		String surname = (String) request.getParameter("surname");
		String gender = (String) request.getParameter("gender");
		String mobile = (String) request.getParameter("mobile");
		String email = (String) request.getParameter("email");
		String password = (String) request.getParameter("password");
		
		User user = new User(userId,name, surname, gender, mobile, email, password);
		sphatlo.updateUser(user);
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
	/*
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email != null && password != null) {
			int result = sphatlo.userLogin(email, password);
				if(result == 1) {
					request.getRequestDispatcher("/sphatloList.jsp").forward(request, response);
				}else {
					request.getRequestDispatcher("login.jsp").forward(request, response);
				}
			
		}else {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
	*/

}
