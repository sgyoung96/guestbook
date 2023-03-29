<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>방명록 > 메인</title>
</head>
<body>
	<h3>전체 목록</h3>
	<form action="/list" method="get" name="main">
		<table border="1">
			<tr>
				<th>
					검색
				</th>
				<td>
					글번호 <input type="text">
				</td>
				<td>
					작성자 <input type="text">
				</td>
				<td>
					<input type="button" value="검색">
				</td>
				<td>
					<input type="button" value="쓰기" onclick="javascript:location.href='/guestbook/add'">
				</td>
			</tr>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>상세</th>
			</tr>
		</table>
	</form>
</body>
</html>

<%-- <input type="button"  value="삭제" onclick="javascript:location.href='/webApp2/product/del?num=${vo.num}'" ></td></tr> --%>