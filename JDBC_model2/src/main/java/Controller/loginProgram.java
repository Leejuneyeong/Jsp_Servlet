package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DAO;
import Model.DTO;

@WebServlet("/loginProgram")
public class loginProgram extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// login.jsp로부터 넘어오는 id,pw 가져오기
		
				request.setCharacterEncoding("utf-8");
				
				String id = request.getParameter("id");
				String pw = request.getParameter("pw");
			
				
				// 해당하는 id,pw가 실제 DB에 등록되어 있는지 확인하기 
				
				String sql = "select * from mem where mem_id and mem_pw= ? ? ";
				
				// DB관련 기능들이 작성된 DAO 접근 -> DAO 객체 생성
				
				// import = ctrl+shift+o
				DAO dao = new DAO();
				DTO dto = new DTO(id, pw);
				
			    // -DAO에 있는 login()호출 -> DAO 클래스에 login() 생성 되어 있어야 함!
			    // 로그인에 성공시 회원의 이름값 result 변수에 저장!
			    String result = dao.login(dto);
			    
			    //결과값에 따른 페이지 이동!
			    if(result!=null){
			    	//로그인 성공!
			    	//loginSuccess.jsp->~~님 환영합니다!
			    	//페이지가 넘어갈 때 name값을 가지고 넘어갈 수 있도록 지정하기
			    	response.sendRedirect("loginSuccess.jsp?name=" + URLEncoder.encode(result,"utf-8"));
			    
			    }else{
			    	//로그인 실패!
			    	response.sendRedirect("loginFail.jsp");
			    }
	}

}
