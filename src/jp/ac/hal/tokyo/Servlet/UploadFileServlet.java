package jp.ac.hal.tokyo.Servlet;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.hal.tokyo.Beans.ProductDataBean;
import jp.ac.hal.tokyo.Beans.UserDataBean;
import jp.ac.hal.tokyo.DAO.DAO;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadFileServlet
 */
@WebServlet("/UploadFileServlet")
public class UploadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFileServlet() {
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
		//(1)アップロードファイルを格納するPATHを取得
		//String path = getServletContext().getRealPath("files");
		String path = "/upload";
		String msg = "";
		String fileName = "";
		
		request.setCharacterEncoding("UTF-8");
		HttpSession hs = request.getSession();
		UserDataBean udb = (UserDataBean) hs.getAttribute("userData");
		DAO dao = new DAO();
		ProductDataBean pdb = new ProductDataBean();
		
		String name = "";
		String desc = "";
		long size = 0;


		//(2)ServletFileUploadオブジェクトを生成
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//(3)アップロードする際の基準値を設定
		factory.setSizeThreshold(1024);
		upload.setSizeMax(-1);
		upload.setHeaderEncoding("utf-8");
		
		try {
			//(4)ファイルデータ(FileItemオブジェクト)を取得し、
			//   Listオブジェクトとして返す
			List list = upload.parseRequest(request);
			
			//(5)ファイルデータ(FileItemオブジェクト)を順に処理
			Iterator iterator = list.iterator();
			while(iterator.hasNext()){
				FileItem fItem = (FileItem)iterator.next();
				//(6)ファイルデータの場合、if内を実行
				if(!(fItem.isFormField())){
					//(7)ファイルデータのファイル名(PATH名含む)を取得
					fileName = fItem.getName();
					if((fileName != null) && (!fileName.equals(""))){
						//(8)PATH名を除くファイル名のみを取得
						fileName=(new File(fileName)).getName();
						//(9)ファイルデータを指定されたファイルに書き出し
						File file = new File(path + "/" + udb.getUser());
						//ユーザ事のフォルダ作成
						file.mkdir();
						//ファイル書き込み
						size = fItem.getSize();
						fItem.write(new File(path + "/" + udb.getUser() + "/" +fileName));
					}
					//フォームの内容を取得
					}else if(fItem.isFormField()){
						if(fItem.getFieldName().equals("name")){
							name = new String(fItem.getString().getBytes("iso-8859-1"),"utf-8");
							}
						if(fItem.getFieldName().equals("description")){
							desc = new String(fItem.getString().getBytes("iso-8859-1"),"utf-8");
						}
					}
			}
		}catch (FileUploadException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		pdb.setProductName(name);
		pdb.setProductText(desc);
		pdb.setProductFileName(fileName);
		pdb.setProductSize(String.valueOf(size));
		
		//DAOに商品情報オブジェクトを渡す
		dao.uploadFile(pdb);



		//転送
		RequestDispatcher disp = request.getRequestDispatcher("msg.jsp");
		//メッセージをリクエストに設定
		request.setAttribute("msg", "送信しました。");
		//フォワード
		disp.forward(request, response);
	}
}
