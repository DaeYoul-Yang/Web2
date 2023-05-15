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
				
				<form action="puserList_insert.jsp" method="post">
				<table align=center>
				<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
				<tr>
				    <td align=right>아이디&nbsp;</td>
				    <td><input type="text" name="id" placeholder="Email address" required></td>
				</tr>
				<tr>
				    <td align=right>패스워드&nbsp;</td>
				    <td><input type="password" name="ps" required></td>
				</tr>
				<tr> 
				    <td align=right>패스워드(확인)&nbsp;</td>
				    <td><input type="password" name="ps2" required></td>
				</tr>
				<tr>
				    <td align=right>이름&nbsp;</td>
				    <td><input type="text" name="name" required></td> 
				</tr>
				<tr>
				    <td colspan=2 align=center height=50>
				        <input type="submit" value="회원가입하기">
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