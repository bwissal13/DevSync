<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>User Form</title></head>
<body>
<h1>${user == null ? 'Create' : 'Edit'} User</h1>
<form action="users" method="post">
    <input type="hidden" name="id" value="${user.id}">
    <label>Username: <input type="text" name="username" value="${user.username}"></label><br>
    <label>Password: <input type="password" name="password" value="${user.password}"></label><br>
    <label>First Name: <input type="text" name="firstName" value="${user.firstName}"></label><br>
    <label>Last Name: <input type="text" name="lastName" value="${user.lastName}"></label><br>
    <label>Email: <input type="email" name="email" value="${user.email}"></label><br>
    <label>Manager: <input type="checkbox" name="manager" ${user.manager ? 'checked' : ''}></label><br>
    <button type="submit">${user == null ? 'Create' : 'Update'}</button>
</form>
<a href="users?action=list">Back to User List</a>
</body>
</html>
