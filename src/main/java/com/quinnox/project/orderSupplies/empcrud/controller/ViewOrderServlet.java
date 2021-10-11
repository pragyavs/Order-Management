package com.quinnox.project.orderSupplies.empcrud.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.quinnox.project.orderSupplies.empcrud.dao.OrderDAO;
import com.quinnox.project.orderSupplies.empcrud.model.Order;

/**
 * Servlet implementation class Vieworder
 */
@WebServlet("/ViewOrderServlet")
public class ViewOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		List<Order> ulist=OrderDAO.getAllRecords(); // call methods in DAO layer
		request.setAttribute("elist", ulist);
		System.out.println("size of ulist is: " + ulist.size());
		RequestDispatcher rd=request.getRequestDispatcher("vieworder.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
