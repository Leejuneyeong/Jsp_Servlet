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
	 //page 영역에 값을 설정하기
	 //내장객체 활용! -> pageContext 객체
	 //pageContext <- 자체가 객체임 
	 pageContext.setAttribute("nick","팡규팡규");
	 
	 //page영역에 값 불러오기 -> 저장 후 웹페이지에 띄우겠다!
	 String result = (String) pageContext.getAttribute("nick");	 
	%>
	
	<!-- 표현식을 통한 출력 (변수를 써야함)-->
	표현식 기법 : <%= result %> <br>
	
	<!-- el표기법을 통한 출력 (불러오는 네임값을 써야함)-->
	<!--el 표기법 처음은 error 나오니 ctrl+x 하고 복붙하자 -->
	el 표기법 : ${pageScope.nick}

	<a href = "pageScope2.jsp"> page2로 이동 </a>
	
</body>
</html>