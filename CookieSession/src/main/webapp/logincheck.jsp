<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//클라이언트로부터 넘어온 값들이 로그인에 해당하는 내용인지 판단!
	
	//만약? 클라이언트로부터 한글값이 들어온다면..? ->  인코딩!
	
	request.setCharacterEncoding("utf-8");
	
	String id = "test";
	int pw = 12345;

	String input_id = request.getParameter("input_id");
	int input_pw = Integer.parseInt(request.getParameter("input_pw"));
	
	// 로그인 여부 판단 !
	if (id.equals(input_id) && pw==input_pw) {
		// 로그인 성공 페이지 이동!
		
		session.setAttribute("id","몬스터하우스");
		//포워딩 방식
		RequestDispatcher re = request.getRequestDispatcher("main.jsp");
		re.forward(request,response);
	} else {
		// 로그인 실패로 longinform.jsp로 이동
		//response.sendRedirect("loginform.jsp");
		RequestDispatcher re = request.getRequestDispatcher("loginform.jsp");
		re.forward(request,response);
	}
	%>
</body>
</html>