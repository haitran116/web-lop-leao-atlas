package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Get_data;
import model.Lopxe;

/**
 * Servlet implementation class Sizelop_tu_chitiet
 */
@WebServlet("/Sizelop_tu_chitiet")
public class Sizelop_tu_chitiet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Sizelop_tu_chitiet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Get_data gdt = new Get_data();

		String size_lop = request.getParameter("servlet_size");

		request.setAttribute("SizeLop_", size_lop);

		try {
			ArrayList<Lopxe> lopxe_tu_size = gdt.Query_sql_Size_Search(size_lop);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("timkiemsanpham.jsp");
			requestDispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("chitietsanpham.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
