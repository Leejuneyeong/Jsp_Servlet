package snippet;

public class Snippet {
	<form action="">
	<h4>직업</h4>
	<!-- select 태그 작성시 각 옵션이 아닌 select 태그에 name 값 한번 지정 -->
	<select>
	<option>학생</option>
	<option>선생님</option>
	<option>개발자</option>
	</select>
	<h4>성별</h4>
	<!-- radio 버튼 : 동일한 name 값이 지정된 버튼 중 하나만 선택 가능 (중복선택 불가능) -->
	<input type="radio" value="man">남자
	<input type="radio" value="woman">여자
	<h4>취미</h4>
	<!-- 체크박스 : 동일한 name 값을 지정하면 그룹으로 묶어줄 수 있음 -->
	<input type="checkbox" >축구
	<input type="checkbox" >야구
	<input type="checkbox" >농구
	<br><br>
	<input type="submit">
	</form>
}

