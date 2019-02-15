package com.shalom.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.shalom.dao.OrderDao;
import com.shalom.dao.SphatloDao;
import com.shalom.model.Item;
import com.shalom.model.Order;
import com.shalom.model.Sphatlo;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private SphatloDao sphatlo;
	private OrderDao order;
	
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
		try {
			switch (command) {
			case "SPHATLO":
				buySphatlo(request, response);
				break;
			case "REMOVE":
				removeSphatlo(request, response);
				break;
			default:
				diplaySphatlo(request, response);
				break;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	
	}

	private void diplaySphatlo(HttpServletRequest request, HttpServletResponse response) throws Exception, IOException {
		request.getRequestDispatcher("sphatloList.jsp").forward(request, response);
	}
	
	private void buySphatlo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		if(session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<>();
			cart.add(new Item(sphatlo.getSphatlo(Integer.parseInt(request.getParameter("sphatloId"))), 1));
			session.setAttribute("cart", cart);
		}else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = getIndex(Integer.parseInt(request.getParameter("sphatloId")), cart);
			
			if(index == -1) {
				cart.add(new Item(sphatlo.getSphatlo(Integer.parseInt(request.getParameter("sphatloId"))), 1));
				session.setAttribute("cart", cart);
			}else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		response.sendRedirect("cart.jsp");
	}
	
	private void removeSphatlo(HttpServletRequest request, HttpServletResponse response) throws Exception {
				HttpSession session = request.getSession();
		
				List<Item> cart =  (List<Item>) session.getAttribute("cart");
				
				int sphatloId = Integer.parseInt(request.getParameter("sphatloId"));
				int index = getIndex(sphatloId ,cart);
				
				
				if(index == -1) {
					request.getRequestDispatcher("sphatloList.jsp").forward(request, response);
				}else {
					cart.remove(index);
					session.setAttribute("cart", cart);
					request.getRequestDispatcher("cart.jsp").forward(request, response);
				}
				
					
	}
	
	/*
	private void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		List<Item> cart =  (List<Item>) session.getAttribute("cart");
		
		int sphatloId = Integer.parseInt(request.getParameter("sphatloId"));
		int index = getIndex(sphatloId ,cart);
		
		if(index == -1) {
			request.getRequestDispatcher("payment.jsp").forward(request, response);
		}else {
			Sphatlo s = sphatlo.getSphatlo(index);
			int quantity = cart.get(index).getQuantity();
			
			Item item = new Item(s, quantity);
			order.addOrder(item);
			request.getRequestDispatcher("payment.jsp").forward(request, response);
		}
		
	}
	*/
	
	private int getIndex(int sphatloId, List<Item> cart) {
			if(cart == null) {
				return -1;
			}
				for(int x = 0; x < cart.size(); x++) {
					if(cart.get(x).getSphatlo().getSphatloId() == sphatloId) {
						return  x;
					}
				}
				
		return -1;
	}
}
