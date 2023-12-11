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

import dao.do_dulieu_vao_data;

/**
 * Servlet implementation class ghilienhe
 */
@WebServlet("/ghilienhe")
public class ghilienhe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ghilienhe() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// response.setCharacterEncoding("UTF-8");
		// response.setContentType("text/html; charset=UTF-8");

		String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "UTF-8");
		String email = new String(request.getParameter("email").getBytes("iso-8859-1"), "UTF-8");
		String phone = request.getParameter("phone");
		String message = new String(request.getParameter("message").getBytes("iso-8859-1"), "UTF-8");

		do_dulieu_vao_data ddl = new do_dulieu_vao_data();
		try {
			// Lấy datetime hiện tại
			LocalDateTime currentDateTime = LocalDateTime.now();

			// Đặt múi giờ Việt Nam
			ZoneId vietnamZone = ZoneId.of("Asia/Ho_Chi_Minh");

			// Chuyển đổi datetime hiện tại sang múi giờ Việt Nam
			ZonedDateTime vietnamDateTime = currentDateTime.atZone(vietnamZone);

			ddl.Sql_y_kien_khach_hang(name, email, phone, message, vietnamDateTime);

			request.setAttribute("thongbao", "Đã nhận được ý kiến của quý khách, bên em sẽ liện lạc lại ngay ạ !");

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
			requestDispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
