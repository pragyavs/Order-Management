package com.quinnox.order.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quinnox.order.dao.OrdersDAO;
import com.quinnox.order.model.Orders;


/**
 * Servlet implementation class AcceptServlet
 */
@WebServlet("/AcceptServlet")
public class AcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AcceptServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int order_id=Integer.parseInt(request.getParameter("Order_id"));
		int emp_id=Integer.parseInt(request.getParameter("emp_id"));
		int mgr_id=Integer.parseInt(request.getParameter("mgr_id"));
		String order_date=request.getParameter("Order_date");
		String comments=request.getParameter("Comments");
		int prod_id=Integer.parseInt(request.getParameter("prod_id"));
		int supplier_id=Integer.parseInt(request.getParameter("supplier_id"));
		String rejctedBy=request.getParameter("rejected_by");
		String status=request.getParameter("status");
		String next_state=request.getParameter("next_state");

		//Invoke User Parameterized constructor & initialise values
		Orders u=new Orders( order_id, emp_id, mgr_id, prod_id, supplier_id, comments, rejctedBy, status,next_state,order_date);

		int i=OrdersDAO.acceptOrder(u);
		response.sendRedirect("ViewOrderServlet");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
