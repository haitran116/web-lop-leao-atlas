package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Get_data;
import model.Lopxe;

/**
 * Servlet implementation class Loc_theo_size
 */
@WebServlet(name = "Loc_theo_size", urlPatterns = "/leao-atlas-michelin-loc-theo-size")
public class Loc_theo_size extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Loc_theo_size() {
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
		Chucnang cn = new Chucnang();

		String size_lop = request.getParameter("sizelop");

		String sapxep = request.getParameter("sapxep");
		if(sapxep == null) {
			sapxep = "md";
		}
		request.setAttribute("sapxep_", sapxep);

		ArrayList<Lopxe> lopxe = gdt.Size_Search(size_lop);

		if(!Objects.isNull(lopxe)) {
			if(sapxep.equals("md")) {
				lopxe = cn.SapXepTheoHangAZ_Lopxe(lopxe);
			}
			if(sapxep.equals("az")) {
				lopxe = cn.SapXepAZ_Lopxe(lopxe);
			}
			if(sapxep.equals("za")) {
				lopxe = cn.SapXepZA_Lopxe(lopxe);
			}
			if(sapxep.equals("hangaz")) {
				lopxe = cn.SapXepTheoHangAZ_Lopxe(lopxe);
			}
			if(sapxep.equals("hangza")) {
				lopxe = cn.SapXepTheoHangZA_Lopxe(lopxe);
			}
			if(sapxep.equals("giatang")) {
				lopxe = cn.SapXepGiaTangDan_Lopxe(lopxe);
			}
			if(sapxep.equals("giagiam")) {
				lopxe = cn.SapXepGiaGiamDan_Lopxe(lopxe);
			}

			request.setAttribute("lopxe", lopxe);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("timkiemsanpham.jsp");
			requestDispatcher.forward(request, response);
		}else {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		}
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
