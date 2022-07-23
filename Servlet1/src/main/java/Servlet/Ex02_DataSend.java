package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02_DataSend")
public class Ex02_DataSend extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 사용자가 요청한 내용중에서 data에 해당하는 값을 가져 오겠다!
		String data = request.getParameter("data"); // Ex02_DataSend에 있는 name="data"임
		
		// 응답 데이터가 한글이라면 인코딩 작업이 필요하다! -> 웹 페이지에 띄울때
		response.setCharacterEncoding("UTF-8");
		
		response.setContentType("text/html; charset=UTF-8");
		
		//PrintWriter 객체 생성!
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		out.print("전송된 데이터 : " + data);
		out.print("</body>");
		out.print("</html>");
		
		System.out.println(data);
		
		
		
		
//	System.out.println("응답 완료");
	
		
		
		
	}
}
