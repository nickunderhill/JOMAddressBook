<%--
  Created by IntelliJ IDEA.
  User: underhill
  Date: 17.07.2020
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%
    String pageTitle = "Update Record";
%>
<%@include file="header.html" %>

<div class="container">
    <form id="contact" action="" method="post">
        <h3>Update contact address</h3>
        <h4>Please, edit address and press Update</h4>
        <fieldset>
            <input placeholder="<%=request.getParameter("first-name")%>" type="text" tabindex="1" disabled>
        </fieldset>
        <fieldset>
            <input placeholder="<%=request.getParameter("last-name")%>" type="text" tabindex="2" disabled>
        </fieldset>
        <fieldset>
            <textarea name="address" placeholder="Type new address here...." tabindex="3" autofocus required></textarea>
        </fieldset>
        <fieldset>
            <button name="update" type="submit" id="contact-submit" data-submit="...Sending">Update</button>
        </fieldset>
        <fieldset>
            <button name="clear" type="reset" id="contact-reset" data-submit="...Sending">Reset</button>
        </fieldset>
    </form>
</div>

<%@include file="footer.html" %>
