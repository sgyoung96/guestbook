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
					<input type="text" placeholder="작성자명" maxlength="10" style="width: 98%" name="writer">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea placeholder="내용 작성" maxlength="50" rows="5" style="width: 98%" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">비밀번호</div>
				</td>
				<td colspan="2">
					<input type="password" maxlength="10" style="width: 97%;" name="pwd">
				</td>
			</tr>
			<tr>
				<td>
					<div align="center">작성일</div>
				</td>
				<td>
					<input type="text" style="background-color: #eeeeee;" id="w_date" readonly>
				</td>
				<td>
					<input type="submit" value="작성"> 
				</td>
			</tr>
		</table>
	</form>
	
	<script>
		var day = dateFormatter(new Date());
		
		document.getElementById("w_date").value = day;
		
		function leftPad(value) {
			if (value >= 10) {
				return value;
			}
			return '0' + value;
		}
		
		function dateFormatter(source, delimiter = '-') {
			const year = source.getFullYear();
			const month = leftPad(source.getMonth() + 1);
			const day = leftPad(source.getDate());
			
			return [year, month, day].join(delimiter)
		}
	</script>
</body>
</html>