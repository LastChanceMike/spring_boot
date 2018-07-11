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

<table>
    <tr>
        <th>ID</th>
        <td>${user.id}</td>
    </tr>
    <tr>
        <th>Name</th>
        <td>${user.name}</td>
    </tr>
    <tr>
        <th>Age</th>
        <td>${user.age}</td>
    </tr>
    <tr>
        <th>Date</th>
        <td>${user.created_date}</td>
    </tr>
    <a href="/">Back</a>
</table>

<body>