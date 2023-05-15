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
				
				<form action="update.jsp" method="post">
				<table align=center>
				<tr><td colspan=2 align=center height=40><b>회원수정</b><td></tr>
				<tr>
					<td align=right>아이디&nbsp;</td>
					<td><input type="text" name="id1" placeholder="Name" required></td>
				</tr>
				<tr>
					<td align=right>수정할아이디&nbsp;</td>
					<td><input type="text" name="id2" placeholder="Name" required></td>
				</tr>
				<tr>
					<td colspan=2 align=center height=50>
						<input type="submit" value="회원수정하기">
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