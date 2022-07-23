<%@page import="Model.DTO"%>
<%@page import="Model.DAO"%>
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
		// joinProgram.jsp -> Controller 역할!
		
		// ID, PW, NAME 받아오기!
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		
		// join.jsp 부터 받아온 값들을 Model을 통해 DB에 저장하기!
		
		// DAO 객체 생성
		// import 해줘야 객체를 가져올 수 있음 -> ctrl+space
		DAO dao = new DAO();
		
		DTO dto = new DTO(id,pw,name);
		
		int cnt = dao.join(dto);
		
		if(cnt > 0){
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("join.jsp");
		}
		
	%>
</body>
</html>