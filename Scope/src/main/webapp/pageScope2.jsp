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
		//pageScope1에서 지정된 nick이 불러와지는지 확인하기!
		String nick = (String) pageContext.getAttribute("nick");
		
	%>
	
	표현식 : <%=nick %><br>
	
	<!-- 가져올 수 있는 값이 없다면 공백으로 표현한다! -->
	el 표기법 : ${nick}
	
</body>
</html>