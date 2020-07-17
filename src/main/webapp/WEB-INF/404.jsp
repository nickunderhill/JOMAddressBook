<%--
  Created by IntelliJ IDEA.
  User: underhill
  Date: 17.07.2020
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404 Not Found</title>
</head>
<body>
<h1>Error 404: Page not found</h1>
<h3>Person with name <%=request.getParameter("first-name")%> <%=request.getParameter("last-name")%> not found in
    Address Book!</h3>
</body>
</html>
