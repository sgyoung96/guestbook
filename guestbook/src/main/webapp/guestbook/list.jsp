<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<c:forEach var="vo" items="${list}">
				<tr>
					<td align="center">${vo.num}</td>
					<td align="center">${vo.writer}</td>
					<td align="center">${vo.w_date}</td>
					<td align="center">${vo.cnt}</td>
					<td><input type="button" value="����" style="background: #eeeee;" readonly></td>
				</tr>
				<tr>
					<td>
						<div align="center">����</div>	
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

<%-- <input type="button"  value="����" onclick="javascript:location.href='/webApp2/product/del?num=${vo.num}'" ></td></tr> --%>