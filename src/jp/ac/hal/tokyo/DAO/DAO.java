package jp.ac.hal.tokyo.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jp.ac.hal.tokyo.Beans.*;

public class DAO {
	
	//クラス内で使用するオブジェクト定義(属性)
	//コネクションオブジェクト定義
	Connection con;
	//プリペアードステートメントオブジェクト定義
	PreparedStatement ps;
	//ステートメントオブジェクト定義
	Statement st;
	//リザルトセットオブジェクト定義
	ResultSet rs;
	
	/**
	 * コンストラクター
	 */
	public DAO(){
		//コネクションオブジェクト初期化
		con = null;
		//プリペアードステートメントオブジェクト初期化
		ps = null;
		//ステートメントオブジェクト初期化
		st = null;
		//リザルトセットオブジェクト初期化
		rs = null;
	}
	/**
	 * getConnectionメソッド
	 * @param 無し
	 * @return 無し
	 */
	private void getConnection(){
		//MySQLへの接続情報の設定
		String url = "jdbc:mysql:///hew?user=jv23_user&password=jv23jv23&useUnicode=true&characterEncoding=utf8";
		
		try {
			//ドライバーの読み込み
			Class.forName("com.mysql.jdbc.Driver");
			
			//コネクションを作成
			con = DriverManager.getConnection(url);
			
		} catch (ClassNotFoundException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		} catch (SQLException e){
			e.printStackTrace();
		}
	}
	
	private void close(){

		try {
			//リザルトセットオブジェクトのクローズ
			if(rs != null){
				rs.close();
			}
			//プリペアードステートメントオブジェクトのクローズ
			if(ps != null){
				ps.close();
			}
			//ステートメントオブジェクトのクローズ
			if(st != null){
				st.close();
			}
			//コネクションオブジェクトのクローズ
			if(con != null){
				con.close();
			}
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}
	
	/**
	 * checkLoginメソッド
	 * @param UserDataBeanオブジェクト
	 * @return 1:OK 0:NG -1:Error
	 */
	@SuppressWarnings("finally")
	public int checkLogin(UserDataBean userData){
		//戻り値
		int ret = 0;
		
		//プリペアードステートメントSQL
		String sql = "select count(*) from t_user where l_user_id = ? and pass_word = ?;";
		//コネクション作成
		this.getConnection();
		
		//プリペアードステートメント作成
		try {
			ps = con.prepareStatement(sql);
			
			//ユーザを設定
			ps.setString(1, userData.getUser());
			ps.setString(2, userData.getPasswd());
			
			//SQL実行
			rs = ps.executeQuery();
			
			rs.next();
			//レコード数取得
			ret = rs.getInt("count(*)");
			
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			ret = -1;
		}finally{
			this.close();
			return ret;
		}
	}
	
	public int uploadFile(ProductDataBean pdb){
		String sql = "insert into value t_product(product_id,user_id,)";
	    System.out.println("ユーザID = " + pdb.getUserId()
	    		+ " \n商品名 = " + pdb.getProductName() 
	    		+ " \n商品説明 = " + pdb.getProductText() 
	    		+ " \nファイル名 = " + pdb.getProductFileName()
	    		+ " \nサイズ = " + pdb.getProductSize()
	    		+ " \nカテゴリ = " + pdb.getCategory()
	    		+ " \nポイント = " + pdb.getProductPoint());
	    return 0;
	}

}
