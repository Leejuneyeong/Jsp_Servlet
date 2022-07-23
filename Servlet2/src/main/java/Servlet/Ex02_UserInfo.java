package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02_UserInfo")
public class Ex02_UserInfo extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String job = request.getParameter("job");
		String gender = request.getParameter("gender");
		
		// 여러개의 값이 그룹으로 들어올 때에는 getParameter를 사용할 수 없다.
		// values 의 값에 대하여 getParameterValues() 써야댐
		
		//String hobby = request.getParameter("hobby");
		
		String[] hobbies = request.getParameterValues("hobby");
		// 중복을 허용하므로 [] 배열문 써야함
		
		System.out.println(job);
		System.out.println(gender);
		//System.out.println(hobby);
		
		for(int i=0;i<hobbies.length;i++) {
			System.out.println(hobbies[i]);
		}
	}

}
