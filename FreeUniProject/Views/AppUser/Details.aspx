<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.AppUser>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Details</title>
</head>
<body>
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
    <p>
    
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.AppUserID }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
