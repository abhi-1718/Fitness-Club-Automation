<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Header</title>
    <style type="text/css">

		.formdiv{
			padding: 8px;
			border: 2px solid black;
			display: inline-block;

			margin: auto;
			/*width: 50%;*/
		}
        table,th{
            border: 2px solid black;
            border-collapse: collapse;
            padding:24px;
            text-align: center;
            
        }
		.input{
			height: 20px;
			width: 300px;
		}
		  button{
                    background-color: aqua;
                }
                body{
                    background-color: aquamarine;
                    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
                }
                .tab3{
  background-color: yellow;
}
                
</style>
</head>
<body>
    <table class=tab3>
        <tbody>
            <tr>
                <th><a  style="text-decoration: none;" href="/subscriber">Subscribers</a></th>
                <th><a style="text-decoration: none;" href="/trainer">Trainers</a></th>
                <th><a  style="text-decoration: none;"href="/subscriptionplan">Subscription Plans</a></th>
                <th><a  style="text-decoration: none;"href="/payment">Payments</a></th>
                <th><a  style="text-decoration: none;"href="/logout">Log Out</a></th>
                <th colspan="5"><u style="text-align:right">Welcome, ${adminName}</u></th>
            </tr>
        </tbody>
    </table>
</body>
</html>