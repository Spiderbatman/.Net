<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.AppUser>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        <legend>AppUser</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.AppUserName) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.AppUserName) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.IsActive) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.IsActive) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.AppUserType) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.AppUserType) %>
        </div>
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
            <input type="submit" value="Delete" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
</body>
</html>
