<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<html>
    <head>
        <title>Subscription Plan :: ${plan.planTitle}</title>
        <style type="text/css">
        		table,th,td{
        			border: 2px solid black;
        			border-collapse: collapse;
        			padding:8px;
        			text-align: center;
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
        <jsp:include page="header.jsp" ></jsp:include>
        <h2>Subscription Plan Information</h2>
        <c:if test="${error} eq true">
            <h3>${error}</h3>
        </c:if>
        <table class=tab>
    		<thead>
    			<tr>
    				<th colspan="2"><h2>${plan.planTitle}</h2></th>
    			</tr>
    		</thead>
    		<tbody>
    			<tr>
    				<td>ID</td>
    				<td>${plan.planId}</td>
                </tr>
                <tr>
                    <td>Duration(Months)</td>
                    <td>${plan.planDuration}</td>
                </tr>
                <tr>
                    <td>Fees</td>
                    <td>INR. ${plan.planFees}</td>
                </tr>
    		</tbody>
    	</table>
    </body>
</html>