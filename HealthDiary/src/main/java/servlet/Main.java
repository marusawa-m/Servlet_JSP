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
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		// リクエストパラメータの取得
		request.setCharacterEncoding("UTF-8");
		String text = request.getParameter("text");
		String weight = request.getParameter("weight");
		String height = request.getParameter("height");
		
		
		// 身長、体重の入力値をプロパティに設定
		Health health = new Health();
		health.setHeight(Double.parseDouble(height));
		health.setWeight(Double.parseDouble(weight));
		
		// BMIチェックをして結果を設定
			BmiCheckLogic bmiCheckLogic = new BmiCheckLogic();
			bmiCheckLogic.execute(health);

			// セッションスコープに保存
			request.setAttribute("health", health);
			
			
			
		// 入力値チェック
		if (text != null && text.length() != 0) {
			
			// アプリケーションスコープに保存された投稿を取得
			ServletContext application = this.getServletContext();
			List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
			
			// セッションスコープに保存されたユーザー情報を取得
			HttpSession session = request.getSession();
			User loginUser = (User)session.getAttribute("loginUser");
			Health health = (Health)session.getAttribute("Health");			// この行は？
		
			// 投稿を作成して投稿リストに追加
		// ここにBMIの算出を入れたい
			Mutter mutter = new Mutter(loginUser.getName(), text);
			Health health = new Health(health.getBmi(), health.getBodyType());	// この行はsetができない
			PostMutterLogic postMutterLogic = new PostMutterLogic();
			postMutterLogic.execute(mutter, mutterList);
			
			
			// アプリケーションスコープに投稿リストを保存
			application.setAttribute("mutterList", mutterList);
		}
		
		
		// 確認画面にフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/check.jsp");
		dispatcher.forward(request, response);
		
		
		
	}
}