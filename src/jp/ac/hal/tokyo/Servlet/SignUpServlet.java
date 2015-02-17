package jp.ac.hal.tokyo.Servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.ac.hal.tokyo.Beans.AddUserDataBean;
import jp.ac.hal.tokyo.DAO.DAO;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String msg = "";
		boolean err = false;
		int ret = 0;

		DAO dao = new DAO();
		AddUserDataBean audb = new AddUserDataBean();
		
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String mail = request.getParameter("mail");
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String passwdRetype = request.getParameter("passwdRetype");
		String question = request.getParameter("question");
		String ans = request.getParameter("ans");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		
//		System.out.println(name);
//		System.out.println(sex);
//		System.out.println(mail);
//		System.out.println(id);
//		System.out.println(passwd);
//		System.out.println(passwdRetype);
//		System.out.println(question);
//		System.out.println(year + " " + month + " " + day);

		if(name != null && !name.equals("")){
			audb.setName(name);
		}else{
			err = true;
			msg += "名前が入力されていません。\n";
		}
		if(sex != null){
			audb.setSex(sex);
		}else{
			err = true;
			msg += "性別が入力されていません。\n";
		}
		if(year.matches("^\\d+$") && month.matches("^\\d+$") && day.matches("^\\d+$")){
			
			audb.setBirth(year + "-" + month + "-" + day);
		}else{
			err = true;
			msg += "生年月日が入力されていません。\n";
		}
		if(mail != null && !mail.equals("")){
			audb.setMail(mail);
		}else{
			err = true;
			msg += "メールアドレスが入力されていません\n";
		}
		
		if(id != null && !id.equals("")){
			audb.setId(id);
		}else{
			err = true;
			msg += "IDが入力されていません\n";
		}
		if(!dao.checkId(id)){
			err = true;
			msg += "すでに使用されているIDです。";
		}
		if(passwd != null && !passwd.equals("") && passwdRetype != null && !passwdRetype.equals("")){
			if(passwd.equals(passwdRetype)){
				audb.setPasswd(passwd);
			}
		}else{
			err = true;
			msg += "パスワードが入力されていないか2つのパスワードが一致していません。\n";
		}
		if(question != null){
			audb.setQuestion(question);
		}else{
			err = true;
			msg += "秘密の質問が入力されていません";
		}
		if(ans != null && !ans.equals("")){
			audb.setAns(ans);
		}else{
			err = true;
			msg += "秘密の質問の答が入力されていません。";
		}
		
		
		if(!err){
			ret = dao.addUserData(audb);
		}
		if(ret != 1){
			err = true;
			msg = "データベース処理に失敗しました";
		}else{
			msg = "登録完了しました";
		}


		
		//転送
		RequestDispatcher disp = request.getRequestDispatcher("msg.jsp");
		//エラーフラグをリクエストに設定
		request.setAttribute("err", err);
		//メッセージをリクエストに設定
		request.setAttribute("msg", msg);
		//フォワード
		disp.forward(request, response);
		
	}

}
