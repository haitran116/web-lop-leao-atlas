package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.Get_data;
import model.Lopxe;

/**
 * Servlet implementation class Masp_loadServlet
 */
@WebServlet("/Masp_loadServlet")
public class Masp_loadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Masp_loadServlet() {
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
		String url_name_sanpham = request.getParameter("masp");

		if(url_name_sanpham == "") {
			// về trang chủ khi không nhập gì sau url
			response.sendRedirect(request.getContextPath() + "/home");
		}else {
			// nếu url là tên sản phẩm thì làm tiếp
			if(url_name_sanpham.split("-").length > 4) {
				Get_data gdt = new Get_data();
				
				/*
				String url_hang = url_name_sanpham.split("-")[1];

				String url_size = "";
				String url_tensp = "";
				//check xem size la dang nao 225-55r15 hay 135r14c
		        try {
		        	// nếu trong này đúng thì url dạng vd: lop-leao-215-60R16-LION-SPORT-HP-95H-LA
		            Double.parseDouble(url_name_sanpham.split("-")[2]);
		            url_size = url_name_sanpham.split("-")[2] + "-" + url_name_sanpham.split("-")[3];

		    		int i=0;
		    		for(String n: url_name_sanpham.split("-")) {
		    			if(i > 3) {
		    				url_tensp += n;
		    			}
		    			if(i > 3 && i < url_name_sanpham.split("-").length - 1) {
		    				url_tensp += "-";
		    			}
		    			i++;
		    		}
		        } catch (NumberFormatException e) {
		        	// nếu sai thì dạng lop-leao-135r14c-LION-SPORT-HP-95H-LA
		        	url_size = url_name_sanpham.split("-")[2];

		    		int i=0;
		    		for(String n: url_name_sanpham.split("-")) {
		    			if(i > 2) {
		    				url_tensp += n;
		    			}
		    			if(i > 2 && i < url_name_sanpham.split("-").length - 1) {
		    				url_tensp += "-";
		    			}
		    			i++;
		    		}
		        }*/

				Lopxe lopxe = gdt.url_Search(url_name_sanpham);

				request.setAttribute("lopxe_tu_url", lopxe);

				String title = lopxe.getThuonghieu() + " " + lopxe.getSize() + " " + lopxe.getTensanpham();
				request.setAttribute("Title", title);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("chitietsanpham.jsp");
				requestDispatcher.forward(request, response);
			}else {
				response.sendRedirect(request.getContextPath() + "/home");
			}
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
