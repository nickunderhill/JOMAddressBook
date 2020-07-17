<%@ page import="com.nick.underhill.Record" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: underhill
  Date: 16.07.2020
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%
    String pageTitle = "Records List";
%>
<%@include file="header.html" %>

<div class="table-container">
    <div id="table" action="" method="post">
        <h3>Records List</h3>
        <div id="sorting">
            <h4>Sort by:</h4>
            <a href="/records/list?sort=asc">Ascending</a>
            <a href="/records/list?sort=desc">Descending</a>
        </div>
        <table>
            <tr>
                <th>#</th>
                <th>First name</th>
                <th>Last name</th>
                <th>Address</th>
                <th colspan="3">Operations</th>
            </tr>
            <%
                int i = 1;
                for (Record r : (List<Record>) request.getAttribute("records")) {
            %>
            <tr>
                <td><%=i++%>
                </td>
                <td><%=r.getFirstName()%>
                </td>
                <td><%=r.getLastName()%>
                </td>
                <td><%=r.getAddress()%>
                </td>
                <td>
                    <a href="/records/read?first-name=<%=r.getFirstName()%>&last-name=<%=r.getLastName()%>">Read</a>
                </td>
                <td>
                    <a href="/records/update?first-name=<%=r.getFirstName()%>&last-name=<%=r.getLastName()%>">Update</a>
                </td>
                <td>
                    <a href="/records/delete?first-name=<%=r.getFirstName()%>&last-name=<%=r.getLastName()%>">Delete</a>
                </td>
            </tr>

            <%
                }
            %>
        </table>
    </div>
</div>

<%@include file="footer.html" %>