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
	String id = request.getParameter("id");
	int pw = Integer.parseInt(request.getParameter("pw"));

	String user = "smart";
	int userpw = 123;

	if ((id.equals(user)) && (userpw == pw)) {
		// sendRedirect() -> 요청이 두번 진행되며 첫번째 요청시에만 데이터 전달 가능!
		// 1번 요청 -> id 전송
		// 2번 요청 -> 페이지 전송
		
		//response.sendRedirect("Ex04LoginSuccess.jsp");
		
		// 요청을 한번만 진행하되 데이터 값을 유지하며 요청 하기!
		
		// -> forwarding 방식
		RequestDispatcher re = request.getRequestDispatcher("Ex04LoginSuccess.jsp");
		//setAttribute(key, 실제 데이터 값)
		request.setAttribute("id",id);
		re.forward(request,response);
	} else {
		response.sendRedirect("Ex04LoginFail.jsp");
	}
	%>
	
</body>
</html>