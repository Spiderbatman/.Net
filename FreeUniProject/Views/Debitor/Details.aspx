<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.Debitor>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Details</title>
</head>
<body>
    <fieldset>
        <legend>Debitor</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.PersonalID) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.PersonalID) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.FName) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.FName) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.LName) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.LName) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.BirthDate) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.BirthDate) %>
        </div>
    </fieldset>
    <p>
    
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.DebitorID }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
