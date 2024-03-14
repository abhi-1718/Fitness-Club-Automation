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
	<title>Add Plan</title>
	<style type="text/css">
        td{
            border: 2px solid black;
            border-collapse: collapse;
            padding:24px;
            text-align: center;
        }
		.formdiv{
			padding: 8px;
			border: 2px solid black;
			display: inline-block;
			margin-top: 24px;
		}

		.input{
			height: 20px;
			width: 300px;
			padding: 8px;
		}
  button{
                    background-color: aqua;
                }
                body{
                    background-color: aquamarine;
                    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                }
                
                .tab{
  background-color: red;
}
	</style>
</head>
<body>
    <jsp:include page="header.jsp"></jsp:include>
    <h2>Plan Information</h2>
    <c:if test="${error==true || success==true}">
        ${message}
    </c:if>
	<div class="formdiv">
		<form action="add" method="POST">
			<table class=tab>
				<thead>
					<tr>
						<th colspan="2"><h3>Add new Subscription Plan</h3></th>
					</tr>
				</thead>
				<tbody>
					<tr>
                        <td>
                            <label for="plan_title">Plan Title</label>
                        </td>
                        <td>
                            <input type="text" id="plan_title" class="input" name="plan_title">
                        </td>
                    </tr>
                    <tr>
						<td>
							<label for="plan_duration">Plan Duration (Months)</label>
						</td>
						<td>
							<input type="number" id="plan_duration" class="input" name="plan_duration">
						</td>
					</tr>
					<tr>
                        <td>
                            <label for="plan_fees">Plan Fees (INR)</label>
                        </td>
                        <td>
                            <input type="number" id="plan_fees" class="input" name="plan_fees">
                        </td>
                    </tr>
					<tr>
						<td colspan="2"><button type="submit">Submit</button></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>