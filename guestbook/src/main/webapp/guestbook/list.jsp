<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� > ����</title>
</head>
<body>
	<h3>��ü ���</h3>
	<form action="/list" method="get" name="main">
		<table border="1">
			<tr>
				<th>
					�˻�
				</th>
				<td>
					�۹�ȣ <input type="text">
				</td>
				<td>
					�ۼ��� <input type="text">
				</td>
				<td>
					<input type="button" value="�˻�">
				</td>
				<td>
					<input type="button" value="����" onclick="javascript:location.href='/guestbook/add'">
				</td>
			</tr>
			<tr>
				<th>�۹�ȣ</th>
				<th>�ۼ���</th>
				<th>�ۼ���</th>
				<th>��ȸ��</th>
				<th>��</th>
			</tr>
		</table>
	</form>
</body>
</html>

<%-- <input type="button"  value="����" onclick="javascript:location.href='/webApp2/product/del?num=${vo.num}'" ></td></tr> --%>