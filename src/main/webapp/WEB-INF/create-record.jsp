<%--
  Created by IntelliJ IDEA.
  User: underhill
  Date: 16.07.2020
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%
    String pageTitle = "Create Record";
%>
<%@include file="header.html" %>

<div class="container">
    <form id="contact" action="/records/create" method="post">
        <h3>Create new record</h3>
        <% if(request.getAttribute("error") == null) { %>
        <h4>Create new record</h4>
        <% } else { %>
        <h4 class="error"><%=request.getAttribute("error")%></h4>
        <% } %>
        <fieldset>
            <input name="first-name" placeholder="First name" type="text" tabindex="1" required autofocus>
        </fieldset>
        <fieldset>
            <input name="last-name" placeholder="Last name" type="text" tabindex="2" required>
        </fieldset>
        <fieldset>
            <textarea name="address" placeholder="Type address here...." tabindex="3" required></textarea>
        </fieldset>
        <fieldset>
            <button name="create" type="submit" id="contact-submit" data-submit="...Sending">Create</button>
        </fieldset>
        <fieldset>
            <button name="clear" type="reset" id="contact-reset" data-submit="...Sending">Reset</button>
        </fieldset>
    </form>
</div>

<%@include file="footer.html" %>
