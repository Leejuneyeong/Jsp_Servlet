package Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex01_Print")
public class Ex01_Print extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 주소를 요청하면 웹 화면에 텍스트가 출력되도록 만들어 보자!
		// 사용자 -> 요청 (URL 주소)
		// 서버 -> 응답 (html 파일)
		
		// 요청된 주소를 console에 띄워보기!
		String ip = request.getRemoteHost();
		System.out.println("요청된 ip : " + ip);
		
		// 텍스트를 넘겨주기 위한 스트림(통로) 기능 불러오기!
		
		// 텍스트로 응답을 전해주기 위해 응답 객체에 출력기능 지정하기!
		PrintWriter out = response.getWriter();
		
		out.print("<html>");
		out.print("<body>");
		
		out.print("<h1>ㅇ_<</h1>");
		
		out.print("</body>");
		out.print("</html>");
		
	}
}