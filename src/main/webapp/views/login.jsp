<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>${pagetitle}</title>
	<style type="text/css">
		.formdiv{
			padding: 8px;
			border: 2px solid black;
			display: inline-block;

			margin: auto;
			/*width: 50%;*/
		}
		.table{
        align-items: center;  
background-color:rgb(242, 255, 0);
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 255, 26, 0.1);
  padding: 20px;
  width: 300px;
    }

		.input{
			height: 20px;
			width: 300px;
		}
		
  body {
  font-family: Arial, sans-serif;
  background-color: #ff0000;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}
button{
	background-color: greenyellow;
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
	</style>
</head>
<body>
	<div class="formdiv">
		<form action="login" method="POST">
			<table class=table>
				<thead>
					<tr>
						<th><h3>Login</h3></th>
						<c:if test="${error==true || success==true}">
						    ${message}
						</c:if>

					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<label for="user_name">E-Mail</label>
						</td>
						<td>
							<input type="email" id="user_email" class="input" name="user_email">
						</td>
					</tr>
					<tr>
						<td>
							<label for="user_password">Password</label>
						</td>
						<td>
							<input type="password" id="user_password" class="input" name="user_password">
						</td>
					</tr>
					<tr>
						<td><button type="submit">Login</button></td>
						<!--td><a href="/registration"><button type="button">Registration</button></a></td-->
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>