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
<body>


<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Date</th>
        <th></th>
    </tr>
    <c:forEach var="list" items="${lists}">
        <tr>
            <td>${list.id}</td>
            <td>${list.name}</td>
            <td>${list.age}</td>
            <td>${list.created_date}</td>
            <td>
                <a href="/view/${list.id}">View</a>
                <a href="/edit/${list.id}">Update</a>
                <a href="/delete/${list.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<hr/>

<form method="post" action="/save">
    <input type="hidden" name="created_date" value="">
    <input type="hidden" name="id" value="">
    Name:<br>
    <input type="text" name="name"><br/>
    Age:<br>
    <input type="number" name="age">
    <br><br>
    <input type="submit" name="Submit">

</form>

</body>
</html>
