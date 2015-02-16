package jp.ac.hal.tokyo.Beans;


public class UserDataBean {
	
	//プロパティ
	private String user;
	private String passwd;
	//コンストラクタはデフォオルト
	
	//ゲッターセッター
	/**
	 * getUserメソッド
	 * @return :String user
	 */
	public String getUser() {
		return user;
	}
	/**
	 * setUserメソッド
	 * @param user :ユーザ名
	 * @return :0 正常 -1:文字数エラー -2:入力値エラー -3:空 or nullエラー
	 */
	public int setUser(String user) {
		//戻り値定義
		int ret = 0;
		//入力チェック
		if(user == null || user.isEmpty()){
			//未入力の場合戻り値を-3
			ret = -3;
		}else if(user.length() > 8){
			//文字数チェック
			ret = -1;
		}
		//入力チェックが正常ならばプロパティを設定
		if(ret == 0){
			this.user = user;
		}
		
		return ret;
	}
	/**
	 * 
	 * @return
	 */
	public String getPasswd() {
		return passwd;
	}
	/**
	 * 
	 * @param passwd
	 */
	public int setPasswd(String passwd) {
		//戻り値定義
		int ret = 0;
		//入力チェック
		if(passwd == null || passwd.isEmpty()){
			//未入力の場合戻り値を-3
			ret = -3;
		}else if(passwd.length() > 8){
			//文字数チェック
			ret = -1;
		}
		//入力チェックが正常ならばプロパティを設定
		if(ret == 0) this.passwd = passwd;
		
		return ret;
	}
}
