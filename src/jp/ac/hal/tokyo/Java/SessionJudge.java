package jp.ac.hal.tokyo.Java;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SessionJudge {

	HttpServletRequest request = null;
	HttpServletResponse response = null;
	HttpSession session = null;

	/**
	 * セッション情報を判定する
	 * @param request
	 * @param response
	 */
	public SessionJudge(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.session = request.getSession(true);
	}
	
	/**
	 * セッションにユーザ名とユーザIDを格納する。
	 * @param userName
	 * @param userId
	 */
	public void setUserSession(String userName ,String userId) {
		//ユーザ名をuserNameという名前でセッションに格納
		session.setAttribute("userName", userName);		
		//ユーザIDをuserIdという名前でセッションに格納
		session.setAttribute("userId", userId);
	}
	
	/**
	 * boolean型でセッション情報があるかどうか判定。。
	 * @return boolean
	 */
	public boolean getUserSession() {
		boolean b = false;//返すときに使う
		
		if(session.getAttribute("userName") != null){
			//セッション情報があった時。
			b = true;
		}
		
		return b;
	}
	
	/**
	 * セッションに格納されたユーザ名をStringで返す
	 * @return セッションに格納されたユーザー名
	 */
	public String getUserName() {
		return (String)session.getAttribute("userName");
	}

	
	/**
	 * セッションに格納されたユーザIDをStringで返す
	 * @return セッションに格納されたユーザーID
	 */
	public String getUserId() {
		return (String)session.getAttribute("userId");
	}
	
	public void sessionInvalidate(){
		session.invalidate();
	}

}
