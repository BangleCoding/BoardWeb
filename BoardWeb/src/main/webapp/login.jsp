<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="EUC-KR">
	<title>Login</title>
	</head>
	<body>
		<center>
		<h1>로그인</h1>
		<hr>
		<form action="login.do" method="post">
		<table border="1">
			<tr>
				<td bgcolor="orange">ID</td>
				<td><input type="text" name="id" value="${userVO.id }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">Password</td>
				<td><input type="password" name="password" value="${userVO.password }"/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="Log in"/>
				</td>
			</tr>
		</table>
		</form>
		</center>
	</body>
</html>