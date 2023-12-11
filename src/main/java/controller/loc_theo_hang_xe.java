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

import conect_data.Dbconnect;
import dao.Get_data;
import model.Hangxe;
import model.Lopxe;

/**
 * Servlet implementation class loc_theo_hang_xe
 */
@WebServlet("/loc_theo_hang_xe")
public class loc_theo_hang_xe extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public loc_theo_hang_xe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Dbconnect db = new Dbconnect();
		Get_data gdt = new Get_data();
		Chucnang cn = new Chucnang();

		String tenxe = request.getParameter("tenxe");

		String Page = request.getParameter("page");

		if (Page != null) {
			request.setAttribute("Page_", Page);
		}

		String sapxep = request.getParameter("sapxep");
		if(sapxep == null) {
			sapxep = "md";
		}
		request.setAttribute("sapxep_", sapxep);

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
				//System.out.println(h.getTenxe()+"|"+tenxe);
			}
		}

		if(!xe.getSize().equals("")) {
			if(xe.getSize().split(",").length > 1) {
				ArrayList<Lopxe> lop = new ArrayList<>();
				ArrayList<String> list_size = new ArrayList<>();

				for(String l: xe.getSize().split(",")) {
					list_size.add(l);
				}

				// loại bỏ size trùng nhau
				list_size = cn.loaiBoPhanTuTrungNhau(list_size);

				for(String s: list_size) {
					if(!Objects.isNull(gdt.Size_Search(s))) {
						lop = gdt.Size_Search(s);
						ket_qua_tim_kiem.addAll(lop);
					}
				}
			}else {
				if(!Objects.isNull(gdt.Size_Search(xe.getSize()))) {
					ket_qua_tim_kiem.addAll(gdt.Size_Search(xe.getSize()));
				}
			}
		}

		if(sapxep.equals("md")) {
			ket_qua_tim_kiem = cn.SapXepTheoHangAZ_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("az")) {
			ket_qua_tim_kiem = cn.SapXepAZ_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("za")) {
			ket_qua_tim_kiem = cn.SapXepZA_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("hangaz")) {
			ket_qua_tim_kiem = cn.SapXepTheoHangAZ_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("hangza")) {
			ket_qua_tim_kiem = cn.SapXepTheoHangZA_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("giatang")) {
			ket_qua_tim_kiem = cn.SapXepGiaTangDan_Lopxe(ket_qua_tim_kiem);
		}
		if(sapxep.equals("giagiam")) {
			ket_qua_tim_kiem = cn.SapXepGiaGiamDan_Lopxe(ket_qua_tim_kiem);
		}

		request.setAttribute("hangxe", xe);
		request.setAttribute("ket_qua_tim_kiem", ket_qua_tim_kiem);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("timkiemtenxe.jsp");
		requestDispatcher.forward(request, response);
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
