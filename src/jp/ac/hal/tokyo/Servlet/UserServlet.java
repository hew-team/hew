package jp.ac.hal.tokyo.Servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.hal.tokyo.DAO.*;
import jp.ac.hal.tokyo.Beans.*;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//セッションオブジェクト生成
				HttpSession session = request.getSession();
				//UserDataBeanオブジェクト生成
				UserDataBean userData = new UserDataBean();
				//DAOオブジェクト生成
				DAO dao = new DAO();
				//戻り値
				int ret = 0;
				//エラーフラグ
				boolean err = false;
				//メッセージ
				String msg = "";
				//転送ページ設定
				String fwPage = "";
				
				//ボタン押下チェック
				if(request.getParameter("login") != null){
					//ログイン処理
					//ユーザとパスワードを取得
					if(userData.setUser(request.getParameter("userId")) == 0 
							&& userData.setPasswd(request.getParameter("passwd")) == 0){
						
						//ログインチェック
						ret = dao.checkLogin(userData);
						if(ret == 1){
							//ログインが成功の場合
							//セッションにユーザー情報（userDataオブジェクト）を格納
							session.setAttribute("userId", userData.getUser());
							
						}else if(ret == 0){
							//ログイン失敗の場合
							err = true;
							msg ="ユーザー名もしくはパスワードが間違ってます。";
						}else{
							//データベース処理失敗
							err = true;
							msg ="データベース処理に失敗しました";
						}
						
					}else{
						//入力データが不正値の場合の処理
						err = true;
						msg ="ユーザ名もしくはパスワードの値が不正です。";
					}
				}else if(request.getParameter("logout") != null){
					//ログアウト処理
					session.invalidate();
					err = true;
					msg ="ログアウトしました。";
					fwPage = "msg.jsp";
				}
				//転送処理
				if(err){
					//エラーの場合
					fwPage = "msg.jsp";
				}else{
					//正常の場合
					fwPage = "mypage.jsp";
				}
				
				//転送
				RequestDispatcher disp = request.getRequestDispatcher(fwPage);
				//エラーフラグをリクエストに設定
				request.setAttribute("err", err);
				//メッセージをリクエストに設定
				request.setAttribute("msg", msg);
				//フォワード
				disp.forward(request, response);
	}
}