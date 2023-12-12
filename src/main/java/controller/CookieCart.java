package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import conect_data.Dbconnect;
import dao.Get_data;
import model.Hangxe;
import model.Lopxe;

/**
 * Servlet implementation class CookieCart
 */
@WebServlet("/CookieCart")
public class CookieCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CookieCart() {
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
		HttpSession session = request.getSession();

		Dbconnect db = new Dbconnect();
		Get_data gdt = new Get_data();
		Chucnang cn = new Chucnang();

		String thuonghieu = request.getParameter("th");
		if(thuonghieu == null) {
			thuonghieu = "all";
		}
		request.setAttribute("thuonghieu", thuonghieu);

		//System.out.println(thuonghieu);

		String page = request.getParameter("page");
		request.setAttribute("Page_", page);

		String txt = "";

		String id = request.getParameter("masp");
		String num = request.getParameter("num");

		request.setAttribute("masp_cookie", id);

		String sapxep = request.getParameter("sapxep");
		if(sapxep == null) {
			sapxep = "md";
		}
		request.setAttribute("sapxep_", sapxep);

		// kiểm tra nếu cookie có thì đổ vào
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie_ : cookies) {
				if (cookie_.getName().equals("cart")) {
					txt += cookie_.getValue();
					cookie_.setMaxAge(0);
					response.addCookie(cookie_);
					break;
				}
			}
		}

		if (txt.isEmpty()) {
			txt = id + ":" + num + "]";
		} else {
			txt = txt + id + ":" + num + "]";
		}

		Cookie cookie = new Cookie("cart", txt);

		// thời gian sống 5 tiếng
		cookie.setMaxAge(3600 * 20);

		response.addCookie(cookie);

		String countCart = Integer.toString(txt.split("]").length);
		session.setAttribute("number_cart", countCart);

		String jsp = request.getParameter("jsp");

		if (jsp.equals("index")) {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher(jsp + ".jsp");
			requestDispatcher.forward(request, response);
		}

		// nếu thêm sp tại sanpham.jsp thì phải trả lại vị trí page đang ở, và thương
		// hiệu đang xem
		if (jsp.equals("sanpham-tatca") || jsp.equals("sanpham-hang")) {
			// đổ data lốp ra
			try {
				ArrayList<Lopxe> lop_all = db.Data_Lop_All();

				ArrayList<Lopxe> lop = new ArrayList<>();

				if(sapxep.equals("md")) {
					lop_all = db.Data_Lop_All();
				}
				if(sapxep.equals("az")) {
					lop_all = cn.SapXepAZ_Lopxe(db.Data_Lop_All());
				}
				if(sapxep.equals("za")) {
					lop_all = cn.SapXepZA_Lopxe(db.Data_Lop_All());
				}
				if(sapxep.equals("giatang")) {
					lop_all = cn.SapXepGiaTangDan_Lopxe(db.Data_Lop_All());
				}
				if(sapxep.equals("giagiam")) {
					lop_all = cn.SapXepGiaGiamDan_Lopxe(db.Data_Lop_All());
				}

				String thuonghieu_tu_masp = id.substring(0, 2);

				if(jsp.equals("sanpham-tatca")) {
					lop = lop_all;
				}else {
					if (id.split(thuonghieu_tu_masp).length > 1) {
						for (Lopxe l : lop_all) {
							if (l.getMasp().split(thuonghieu_tu_masp).length > 1) {
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
					}
				}

				request.setAttribute("data_lop", lop);

				RequestDispatcher requestDispatcher = request.getRequestDispatcher(jsp + ".jsp");
				requestDispatcher.forward(request, response);

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// trả lại sản phẩm hiện tại,
		if (jsp.equals("chitietsanpham")) {
			Lopxe lopxe = gdt.Masp_Search("al116");

			request.setAttribute("lopxe_tu_masp", lopxe);
			
			response.sendRedirect(request.getContextPath() + "/home");
		}

		if (jsp.equals("timkiemsanpham")) {
			Lopxe lopxe_ = gdt.Masp_Search(id);

			ArrayList<Lopxe> lopxe = gdt.Size_Search(lopxe_.getSize());

			request.setAttribute("lopxe", lopxe);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("timkiemsanpham.jsp");
			requestDispatcher.forward(request, response);
		}

		if (jsp.equals("timkiemtenxe")) {
			Lopxe lopxe = gdt.Masp_Search(id);

			String tenxe = request.getParameter("tenxe");

			ArrayList<Lopxe> ket_qua_tim_kiem = new ArrayList<>();

			Hangxe xe = new Hangxe();

			ArrayList<Hangxe> hangxe = new ArrayList<>();
			for(Hangxe h: db.Data_Hang_Xe_Size_Lop()) {
				String tenxe_ = h.getTenxe().trim().toLowerCase();
				if(tenxe.trim().toLowerCase().equals(tenxe_)) {
					xe.setMaxe(h.getMaxe());
					xe.setTenxe(h.getTenxe());
					xe.setDong(h.getDong());
					xe.setHang(h.getHang());
					xe.setSize(h.getSize());
					xe.setCuthe(h.getCuthe());
				}
			}

			//System.out.println(xe.getCuthe());

			if(!xe.getSize().equals("")) {
				if(xe.getSize().split(",").length > 1) {
					ArrayList<Lopxe> lop = new ArrayList<>();
					for(String s: xe.getSize().split(",")) {
						lop = gdt.Size_Search(s);
						ket_qua_tim_kiem.addAll(lop);
					}
				}else {
					ket_qua_tim_kiem.addAll(gdt.Size_Search(xe.getSize()));
				}
			}

			request.setAttribute("hangxe", xe);
			request.setAttribute("ket_qua_tim_kiem", ket_qua_tim_kiem);

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("timkiemtenxe.jsp");
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
