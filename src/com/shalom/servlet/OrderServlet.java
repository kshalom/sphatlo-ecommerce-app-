package com.shalom.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;
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

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private OrderDao order;
	private SphatloDao sphatloDao;
	
	@Resource(name="jdbc/sphatlodbase")
	private DataSource theDataSource;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		order = new OrderDao(theDataSource);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String command = request.getParameter("command");
		System.out.println(command + ": Order servlet");
	
		switch (command) {
		case "ORDER":
			orderPayment(request, response);
			break;
		case "PAYMENT":
			payment(request, response);
			break;
		default:
			orderPayment(request, response);
			break;
		}
	}
	
	private void orderPayment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		request.getRequestDispatcher("payment.jsp").forward(request, response);
	}
	
	private void payment(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String bankName = request.getParameter("bankname");
		int cardNumber = Integer.parseInt(request.getParameter("cardnumber"));
		int branchCode = Integer.parseInt(request.getParameter("branchcode"));
		
		boolean isValid = order.isAccountValid(cardNumber, branchCode,bankName);
		
		if(isValid) {
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Your oder will be served in few minutes. Thank you');");
			out.println("location='sphatloList.jsp';");
			out.println("</script>");
			
			//request.getRequestDispatcher("confirmition.jsp").forward(request, response);
		}else {
		
			out.println("<script type=\"text/javascript\">");
			out.println("alert('insuffient fund');");
			out.println("location='cart.jsp';");
			out.println("</script>");
			
			//request.getRequestDispatcher("sphatloList.jsp").forward(request, response);
		}
	}
	
	private void orderList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Order> list = order.getOrder();
		
		HttpSession session = request.getSession();
		session.setAttribute("ORDER", list);
		
		request.getRequestDispatcher("orderList.jsp").forward(request, response);
	}
	
	private void addOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		List<Item> cart =  (List<Item>) session.getAttribute("cart");
		
		int sphatloId = Integer.parseInt(request.getParameter("sphatloId"));
		int index = getIndex(sphatloId ,cart);
		
		if(index == -1) {
			request.getRequestDispatcher("payment.jsp").forward(request, response);
		}else {
			
		int quantity = cart.get(index).getQuantity();
		Item item = new Item(sphatloDao.getSphatlo(index), quantity);
		order.addOrder(item);
		request.getRequestDispatcher("payment.jsp").forward(request, response);
		}
	}
	
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
