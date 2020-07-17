<%@ page import="com.nick.underhill.Record" %>
<%--
  Created by IntelliJ IDEA.
  User: underhill
  Date: 17.07.2020
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%
    String pageTitle = "Contact Summary";
%>
<%@include file="header.html" %>

<%Record record = (Record) request.getAttribute("record");%>

<div class="container">
    <div id="contact">
        <h3>Contact Summary</h3>
        <table>
            <tr>
                <td>First name: </td>
                <td><%=record.getFirstName()%></td>
            </tr>
            <tr>
                <td>Last name: </td>
                <td><%=record.getLastName()%></td>
            </tr>
            <tr>
                <td>Address: </td>
                <td><%=record.getAddress()%></td>
            </tr>
        </table>
    </div>
</div>

<%@include file="footer.html" %>
