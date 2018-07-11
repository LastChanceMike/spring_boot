<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>
        Spring Boot CRUD
    </title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>

<form method="post" action="/save">
    <input type="hidden" name="id" value="${user.id}"><br>
    Name:<br>
    <input type="text" name="name" value="${user.name}"><br>
    Age:<br>
    <input type="number" name="age" value="${user.age}"><br>
    Created date:<br>
    <input type="text" name="created_date" value="${user.created_date}">
    <br><br>
    <input type="submit" name="Submit">
</form>

<body>