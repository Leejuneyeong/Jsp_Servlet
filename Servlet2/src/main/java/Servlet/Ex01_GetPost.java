package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Ex01_GetPost")
public class Ex01_GetPost extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 요청된 데이터로 부터 인코딩 작업 진행하기
        request.setCharacterEncoding("utf-8");
                                        
        // 응답데이터가 한글이면 인코딩 작업이 필요하다! -> 웹 페이지에 띄울때
//      response.setCharacterEncoding("UTF-8");<- 생략이 가능하지만 들어오는 값이 깨지면 써야함
        
        // 실제 띄우고자 하는 웹 브라우저에 인코딩 값을 지정하는 기능!
        response.setContentType("text/html; charset=UTF-8");

        // 1. 요청된 내용으로 부터 데이터 꺼내오기!
        String name = request.getParameter("name");
    
        // 요청괸 값이 넘어올 떄 어떻게 넘어오는지 확인!
        System.out.println(name);
        
        // 2. 웹 화면에 출력을 위한 스트림 객체(PrintWriter) 생성!
        PrintWriter out = response.getWriter();
        
        out.print("<html>");
        out.print("<body>");
        out.print(name);
        out.print("</body>");
        out.print("</html>");
    
    
    
    }
}
