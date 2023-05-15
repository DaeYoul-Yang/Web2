<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>
	<%@ include file="menu.jsp"%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				
				<form action="./login.jsp">
				<table align=center>
				<tr><td colspan=2 align=center height=40><b>로그인</b><td></tr>
				<tr>
				<td align=right>아이디&nbsp;</td> 
				<td><input type="text" name="id" placeholder="정현숙" required></td>
				</tr>
				<tr>
				<td align=right>패스워드&nbsp;</td> 
				<td><input type="password" name="ps" required></td>
				</tr>
				<tr>
				<td colspan=2 align=left height=50>
					
					<input type="submit" value="OK">
					<input type="reset" value="Cancel">
					<input type="reset" value="Reset">
					<button type="button" onclick="location.href='signupp.jsp' ">회원가입</button>
					<button type="button" onclick="location.href='withdrawp.jsp' ">회원탈퇴</button>
					<button type="button" onclick="location.href='puserList_update.jsp' ">회원수정</button>
					<button type="button" onclick="location.href='puserList.jsp' ">회원조회</button>
					
				</td>
			</tr>
			</table>
			</form>
			</h1>
		</div>
	</div>	

	
	<div class="container">
		<div class="text-center">
			
			
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>