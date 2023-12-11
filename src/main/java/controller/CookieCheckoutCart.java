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

import conect_data.Dbconnect;
import model.Cart;
import model.Cookie_model;
import model.Lopxe;

/**
 * Servlet implementation class CookieCheckoutCart
 */
@WebServlet("/CookieCheckoutCart")
public class CookieCheckoutCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CookieCheckoutCart() {
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
		Dbconnect db = new Dbconnect();

		String txt = "";

		String id = request.getParameter("masp");
		String num = request.getParameter("num");

		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie_ : cookies) {
				if (cookie_.getName().equals("cart")) {
					txt = cookie_.getValue();
					cookie_.setMaxAge(0);
					response.addCookie(cookie_);
					break;
				}
			}
		}

		if (txt == "") {
			txt = id + ":" + num + "]";
		} else {
			txt += id + ":" + num + "]";
		}

		String[] ar = txt.split("]");

		ArrayList<Cookie_model> cookie_cart = new ArrayList<>();
		for (String co : ar) {
			if (co != "") {
				Cookie_model ck = new Cookie_model();
				ck.setMasp(co.split(":")[0]);
				ck.setSoluong(Integer.parseInt(co.split(":")[1]));
				cookie_cart.add(ck);
			}
		}

		ArrayList<Cart> cart_ = new ArrayList<>();

		ArrayList<Lopxe> data;
		try {
			data = db.Data_Lop_All();
			Lopxe lopxe = new Lopxe();
			for (Cookie_model c_cart : cookie_cart) {
				for (Lopxe l : data) {
					if (c_cart.getMasp().equals(l.getMasp())) {
						Cart cc = new Cart();
						cc.setSize(l.getSize());
						cc.setTensp(l.getTensanpham());
						cc.setNamefolderimage(l.getNamefolder());
						cc.setGia(l.getGiaban());
						cc.setThanhtien(c_cart.getSoluong(), l.getGiaban());
						cc.setSoluong(c_cart.getSoluong());
						cart_.add(cc);
					}
				}
			}

			request.setAttribute("cart_", cart_);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("cart.jsp");
			requestDispatcher.forward(request, response);
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
