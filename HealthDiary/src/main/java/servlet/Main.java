package servlet;

// 投稿に関するリクエストを処理するコントローラ

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BmiCheckLogic;
import model.Health;
import model.Mutter;
import model.PostMutterLogic;
import model.User;


@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	// 情報を取得するためのGET()
	// ログインされているかの確認をする、メイン画面ビューを出力するまでの道筋
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// 投稿リストをアプリケーションスコープから取得
		// （ジェネリクスを利用してJavaBeansであるMutterを取得している）
		ServletContext application = this.getServletContext();
		List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
		
		// 取得不可の場合、つぶやきリストを新規作成して
		// アプリケーションスコープに保存
		if (mutterList == null) {
			mutterList = new ArrayList<>();
			application.setAttribute("mutterList", mutterList);
		}
		
		
		// ログインしているか確認するため
		// セッションスコープからユーザー情報を取得
		HttpSession session = request.getSession();
		User loginUser = (User)session.getAttribute("loginUser");
		
		
		if (loginUser == null) {	// ログインしていない場合
			// リダイレクト
			response.sendRedirect("index.jsp");
		} else {					// ログイン済みの場合
			//フォワード
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/main.jsp");
			dispatcher.forward(request, response);
		}

	}

	
	
// 以下未定
// 投稿をするためのメソッド	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String text = request.getParameter("text");
		String weightParam = request.getParameter("weight");
		String heightParam = request.getParameter("height");
		
		   double bmi = 0.0;  // 初期化
		   String bodyType = "";  // 初期化

		if (weightParam != null && !weightParam.trim().isEmpty() && heightParam 
				!= null && !heightParam.trim().isEmpty()) {
		    double weight = Double.parseDouble(weightParam);
		    double height = Double.parseDouble(heightParam);
			
			// 身長、体重の入力値をプロパティに設定
			Health health = new Health();
			health.setHeight(height);
			health.setWeight(weight);
	
			// BMIの計算したBmi~インスタンスを取得
			BmiCheckLogic logic = new BmiCheckLogic();
			logic.execute(health);
	
			// BMIとbodyTypeを取得
		    bmi = health.getBmi();
		    bodyType = health.getBodyType();
		} else if (weightParam == null || heightParam == null) {
			
			System.out.println("weightParam または heightParam がnullです");
			
		}
		
		else {
		    System.out.println("weightParam または heightParam が無効な値です");
		}
		
		 // 入力値チェック
	    if (text != null && text.length() != 0) {
	        
	        // アプリケーションスコープに保存された投稿を取得
	        ServletContext application = this.getServletContext();
	        List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
	        
	        // セッションスコープに保存されたユーザー情報を取得
	        HttpSession session = request.getSession();
	        User loginUser = (User) session.getAttribute("loginUser");
	        
	        // 投稿を作成して投稿リストに追加
	        Mutter mutter = new Mutter(loginUser.getName(), text, bmi, bodyType);
	        PostMutterLogic postMutterLogic = new PostMutterLogic();
	        postMutterLogic.execute(mutter, mutterList);
	        
	        // アプリケーションスコープに投稿リストを保存
	        application.setAttribute("mutterList", mutterList);
	    }
	    
	    // 確認画面にフォワード（現在確認画面中止）
	    RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/main.jsp");
	    dispatcher.forward(request, response);
	}
}