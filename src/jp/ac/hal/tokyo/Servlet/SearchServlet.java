package jp.ac.hal.tokyo.Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.ac.hal.tokyo.Beans.ProductDataBean;
import jp.ac.hal.tokyo.DAO.DAO;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		
		DAO dao = new DAO();
		
		String text = request.getParameter("text");
		String category = request.getParameter("cate");
		
		System.out.println("text = " + text);
		System.out.println("cate = " + category);
		
		ArrayList<ProductDataBean> ret = dao.searchProduct(text, category);
		
		System.out.println(ret);

		//転送
		RequestDispatcher disp = request.getRequestDispatcher("searchResult.jsp");
		request.setAttribute("ret", ret);
		//フォワード
		disp.forward(request, response);
	}
}
