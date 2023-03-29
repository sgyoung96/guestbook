<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>방명록 > 쓰기</title>
</head>
<body>
	<h3>방명록 남기기</h3>
	<form action="/guestbook/add" method="post" name="add">
		<table border="1">
			<tr>
				<td colspan="3">
					<input type="text" placeholder="작성자명" maxlength="10" style="width: 98%">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea placeholder="내용 작성" maxlength="50" rows="5" style="width: 98%"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">비밀번호</div>
				</td>
				<td colspan="2">
					<input type="password" maxlength="10" style="width: 97%;">
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">작성일</div>
				</td>
				<td>
					<input type="text" style="background-color: #eeeeee;" readonly>
				</td>
				<td>
					<input type="submit" value="작성"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>