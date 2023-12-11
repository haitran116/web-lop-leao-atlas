package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conect_data.Dbconnect;
import model.Lopxe;

/**
 * Servlet implementation class Phantrang_servlet
 */
//@WebServlet("/Phantrang_servlet")
@WebServlet(name = "Phantrang_servlet", urlPatterns = "/leao-atlas-michelin")
public class Phantrang_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Phantrang_servlet() {
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
		//Get_data gdt = new Get_data();
		Dbconnect db = new Dbconnect();
		Chucnang cn = new Chucnang();

		String Page = request.getParameter("page");

		String thuonghieu = request.getParameter("th");

		String sapxep = request.getParameter("sapxep");

		if(sapxep == null) {
			sapxep = "md";
		}
		request.setAttribute("sapxep_", sapxep);

		// định nghĩa lại thương hiệu
		if (thuonghieu == null) {
			thuonghieu = "all";
		}

		if (thuonghieu.equals("leao")) {
			thuonghieu = "la";
		}

		if (thuonghieu.equals("atlas")) {
			thuonghieu = "al";
		}

		if (thuonghieu.equals("michelin")) {
			thuonghieu = "mc";
		}

		if (Page != null) {
			request.setAttribute("Page_", Page);
		}

		try {
			ArrayList<Lopxe> lop_all = new ArrayList<>();

			//thực hiện sắp xếp
			if(sapxep.equals("md")) {
				lop_all = db.Data_Lop_All();
			}
			if(sapxep.equals("az")) {
				lop_all = cn.SapXepAZ_Lopxe(db.Data_Lop_All());
			}
			if(sapxep.equals("za")) {
				lop_all = cn.SapXepZA_Lopxe(db.Data_Lop_All());
			}
			if(sapxep.equals("hangaz")) {
				lop_all = cn.SapXepTheoHangAZ_Lopxe(db.Data_Lop_All());
			}
			if(sapxep.equals("hangza")) {
				lop_all = cn.SapXepTheoHangZA_Lopxe(db.Data_Lop_All());
			}
			if(sapxep.equals("giatang")) {
				lop_all = cn.SapXepGiaTangDan_Lopxe(db.Data_Lop_All());
			}
			if(sapxep.equals("giagiam")) {
				lop_all = cn.SapXepGiaGiamDan_Lopxe(db.Data_Lop_All());
			}

			if (thuonghieu.equals("all")) {
				request.setAttribute("data_lop", lop_all);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("sanpham-tatca.jsp");
				requestDispatcher.forward(request, response);
			} else {
				//nếu thương hiệu gửi lên lại là mã sp thì thực hiện lấy 2 kí tự đầu la101 => la
				thuonghieu = thuonghieu.substring(0, 2);
				ArrayList<Lopxe> lop = new ArrayList<>();
				for (Lopxe l : lop_all) {
					if (l.getMasp().split(thuonghieu).length > 1) {
						Lopxe la = new Lopxe();
						la.setMasp(l.getMasp());
						la.setSize(l.getSize());
						la.setTensanpham(l.getTensanpham());
						la.setMagai(l.getMagai());
						la.setVanh(l.getVanh());
						la.setThuonghieu(l.getThuonghieu());
						la.setDonvi(l.getDonvi());
						la.setGiaban(l.getGiaban());
						la.setSoluong(l.getSoluong());
						la.setTinhtrang(l.getTinhtrang());
						la.setRate(l.getRate());
						la.setXuatxu(l.getXuatxu());
						la.setNamefolder(l.getNamefolder());
						lop.add(la);
					}
				}

				request.setAttribute("thuonghieu", thuonghieu);
				request.setAttribute("data_lop", lop);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher("sanpham-hang.jsp");
				requestDispatcher.forward(request, response);
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
