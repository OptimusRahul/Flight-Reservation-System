package com.Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RedirectToBookingJSP extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RedirectToBookingJSP() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int index = Integer.parseInt(request.getParameter("book-btn"));
		System.out.println(index);
		HttpSession session = request.getSession();
		String id = session.getAttribute("flight_id").toString();
		String arr[] = id.trim().split(" ");
		String airplane_id="";
		for(int i=0; i<arr.length; i++) {
			airplane_id = arr[i].trim().split("-")[2]+" ";
		}
		session.setAttribute("flight_num", arr[index]);
		session.setAttribute("ids", airplane_id);
		response.sendRedirect("./jsp/BookTicket.jsp");
	}

}
