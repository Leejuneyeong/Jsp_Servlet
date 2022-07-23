package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.MemberDTO;
import Model.MemberDAO;
import Model.MemberDAO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	// 1. request 인코딩 작업
		request.setCharacterEncoding("utf-8");
		
    // 2. email, pw, tel, address 값 가져오기
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
	// 3. 잘 넘어오는지 console에 확인!
		System.out.println("email : "+email);
		System.out.println("pw : "+pw);
		System.out.println("tel : "+tel);
		System.out.println("address : "+address);
		
	// 4. 데이터들 한번에 묶어서 보내주기 -> Model -> DTO 클래스 !
		MemberDTO dto = new MemberDTO(email, pw, tel, address);
		//클래스 임포트
		MemberDAO dao = new MemberDAO();
		//클래스 임포트
		int result = dao.join(dto);
		
		String moveURL = null;
		
	if(result > 0) {
		// 회원가입에 성공했다면 -> JoinSuccess.jsp 이동 -> 회원가입된 회원의 email 가지고 이동
		
		// 페이지 이동 방법
		// 1. sendRedirect -> url만 넘겨주는 방식 -> 페이지만 이동
		// 2. forwarding -> request 객체에 데이터를 담아 페이지 이동하는 방식
		
		// 페이지 이동 전에 데이터 먼저 담아주기!
		request.setAttribute("user_email", email);
		
		moveURL = "JoinSuccess.jsp";
		
//		RequestDispatcher re = request.getRequestDispatcher("JoinSuccess.jsp");
//		re.forward(request, response);
//		
	}else {
		// 회원가입에 실패 했다면 -> Main.jsp 이동
		
		moveURL = "Main.jsp";
		
//		RequestDispatcher re = request.getRequestDispatcher("JoinSuccess.jsp");
//		re.forward(request, response);
		
		}
	
	RequestDispatcher re = request.getRequestDispatcher(moveURL);
	re.forward(request, response);
	
	}

}
