package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Get_data;
import dao.do_dulieu_vao_data;

/**
 * Servlet implementation class DatHang
 */
@WebServlet("/DatHang")
public class DatHang extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DatHang() {
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

		String tenkhachhang = request.getParameter("tenkh");
		String email = request.getParameter("email");
		String diachi = request.getParameter("diachi");
		String sodienthoai = request.getParameter("sodt");
		String ghichu = request.getParameter("ghichu");

		String sanpham = request.getParameter("sanpham");

		try {
			Get_data gdt = new Get_data();
			do_dulieu_vao_data dodulieu = new do_dulieu_vao_data();

			// tạo mã khách hàng mới
			int makhachhang = gdt.Query_sql_Max_MaKhachHang() + 1;

			// nếu mua 2 mã sp
			if (sanpham.split("-").length > 1) {
				String[] array_sanpham = sanpham.split("-");

				for (String sp : array_sanpham) {
					if (sp != "") {
						String size = sp.split("_")[0];
						String tensanpham = sp.split("_")[1];

						int soluong = Integer.parseInt(sp.split("_")[2]);

						dodulieu.Sql_khach_hang_dat_hang(makhachhang, size, tensanpham, soluong);
					}
				}
			} else {
				sanpham = sanpham.split("-")[0];

				String size = sanpham.split("_")[0];
				String tensanpham = sanpham.split("_")[1];
				int soluong = Integer.parseInt(sanpham.split("_")[2]);

				dodulieu.Sql_khach_hang_dat_hang(makhachhang, size, tensanpham, soluong);
			}
			// Lấy datetime hiện tại
			LocalDateTime currentDateTime = LocalDateTime.now();

			// Đặt múi giờ Việt Nam
			ZoneId vietnamZone = ZoneId.of("Asia/Ho_Chi_Minh");

			// Chuyển đổi datetime hiện tại sang múi giờ Việt Nam
			ZonedDateTime vietnamDateTime = currentDateTime.atZone(vietnamZone);

			dodulieu.Sql_thong_tin_khach_dat_hang(makhachhang, tenkhachhang, email, diachi, sodienthoai, ghichu,
					vietnamDateTime);

			request.setAttribute("thongbao", "Quý khách đã đặt hàng thành công, bên em sẽ liện lạc lại ngay ạ !");

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		} catch (SQLException e) {
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
