<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� > ����</title>
</head>
<body>
	<h3>���� �����</h3>
	<form action="/guestbook/add" method="post" name="add">
		<table border="1">
			<tr>
				<td colspan="3">
					<input type="text" placeholder="�ۼ��ڸ�" maxlength="10" style="width: 98%">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea placeholder="���� �ۼ�" maxlength="50" rows="5" style="width: 98%"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">��й�ȣ</div>
				</td>
				<td colspan="2">
					<input type="password" maxlength="10" style="width: 97%;">
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">�ۼ���</div>
				</td>
				<td>
					<input type="text" style="background-color: #eeeeee;" readonly>
				</td>
				<td>
					<input type="submit" value="�ۼ�"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>