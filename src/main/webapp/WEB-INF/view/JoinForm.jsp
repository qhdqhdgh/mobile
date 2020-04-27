<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<style>

</style>
<body>
<div class="wrap">

	<form action="/pp/JoinPro.do" method="post">
		<table>		
			<tr>
				<th>아이디</th>
				<td><input type="text" name="MBUSER"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td> <input type="password" name="MBPW"></td>
			</tr>
			<tr>
				<td><input type="submit" value="회원가입"></td>		
				<td><input type="button" value="취소" onclick="location.href='javascript:history.back()'"></td>
			</tr>
			</table>
	</form>

</div>
</body>
</html>