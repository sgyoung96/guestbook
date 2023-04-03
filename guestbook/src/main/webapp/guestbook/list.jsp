<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<c:forEach var="vo" items="${list}">
				<tr>
					<td align="center">${vo.num}</td>
					<td align="center">${vo.writer}</td>
					<td align="center">${vo.w_date}</td>
					<td align="center">${vo.cnt}</td>
					<td><input type="button" value="수정" style="background: #eeeee;" readonly></td>
				</tr>
				<tr>
					<td>
						<div align="center">내용</div>	
					</td>
					<td colspan="4">
						<input type="text" style="background: #eeeeee; width: 98%;" value="${vo.content}" readonly>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>

<%-- <input type="button"  value="삭제" onclick="javascript:location.href='/webApp2/product/del?num=${vo.num}'" ></td></tr> --%>