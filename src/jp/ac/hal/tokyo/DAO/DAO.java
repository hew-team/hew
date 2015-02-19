package jp.ac.hal.tokyo.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	 * DBに登録しようとしてるIDがすでにあるかチェック
	 * @param id
	 * @return
	 */
	public boolean checkId(String id){
		String sql = "select count(*) from t_user where l_user_id = ?";
		boolean flg = false;
		this.getConnection();
		
		try{
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			rs.next();
			if(rs.getInt("count(*)") == 0){
				flg = true;
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return flg;
	}
	
	/**
	 * 新規ユーザー登録
	 * @param audb
	 * @return int (-1:異常 1:成功)
	 */
	public int addUserData(AddUserDataBean audb){
		String sql = "insert into t_user(sex, register_date, l_user_id, pass_word, user_name, e_mail, birth) values(?,?,?,?,?,?,?)";
		this.getConnection();
		int ret = 0;
		
		//現在の日付を取得
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		try{
			ps = con.prepareStatement(sql);
			
			ps.setString(1, audb.getSex());
			ps.setString(2, sdf.format(date));
			ps.setString(3, audb.getId());
			ps.setString(4, audb.getPasswd());
			ps.setString(5, audb.getName());
			ps.setString(6, audb.getMail());
			ps.setString(7, audb.getBirth());
			
			ret = ps.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
			ret = -1;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return ret;
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
	
	/**
	 * 商品登録
	 * @param pdb
	 * @return int (-1:異常 1:成功)
	 */
	public int uploadFile(ProductDataBean pdb){
		String sql = "insert into t_product(user_id, category_id, product_name, product_point, product_text, product_size, product_file, upload_date) values((select user_id from t_user where l_user_id = ?),?,?,?,?,?,?,?);";
		int ret = 0;
		this.getConnection();

		System.out.println("ユーザID = " + pdb.getUserId()
	    		+ " \n商品名 = " + pdb.getProductName() 
	    		+ " \n商品説明 = " + pdb.getProductText() 
	    		+ " \nファイル名 = " + pdb.getProductFileName()
	    		+ " \nサイズ = " + pdb.getProductSize()
	    		+ " \nカテゴリ = " + pdb.getCategory()
	    		+ " \nポイント = " + pdb.getProductPoint());
		
		//現在の日付を取得
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		try{
			ps = con.prepareStatement(sql);
			
			ps.setString(1, pdb.getUserId());
			ps.setString(2, null);//カテゴリーID
			ps.setString(3, pdb.getProductName());
			ps.setInt(4, pdb.getProductPoint());
			ps.setString(5, pdb.getProductText());
			ps.setString(6, pdb.getProductSize());
			ps.setString(7, pdb.getProductFileName());
			ps.setString(8, sdf.format(date));
			
			ret = ps.executeUpdate();
			
		}catch(SQLException e){
			ret = -1;
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		

		return ret;
	}

}
