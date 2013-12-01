<%@ Page Language="C#" Inherits="System.Web.UI.Page" %>

<%
    if (Request.HttpMethod == "POST")
    {
        Application["PostedForm"] = Request.Form.ToString();
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Posted Data</title>
    <style type="text/css">
        body {font-family: Arial;}
    </style>
</head>
<body>
    <% if(!String.IsNullOrEmpty(Application["PostedForm"] as string)) { %>

    <p><img src="images/computer-cat.jpg" width="600" height="380" /></p>

    <div style="width: 600px; border: solid 4px #222; background-color: #ffe; padding: 10px;">
        <%= Application["PostedForm"] %>
    </div>

    <% } %>
</body>
</html>