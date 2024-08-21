<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        table { border-collapse: collapse; }
        td { border: 1px solid black; padding: 5px; text-align: center; }
    </style>
</head>
<body>
    <table>
        <% for(int i = 2; i <= 9; i++) { %>
            <tr>
                <% for(int j = 1; j <= 9; j++) { %>
                    <td><%= i + " * " + j + " = " + (i*j) %></td>
                <% } %>
            </tr>
        <% } %>
    </table>
</body>
</html>