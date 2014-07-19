<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.Bid>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Details</title>
</head>
<body>
    <fieldset>
        <legend>Bid</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Debitor.PersonalID) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Debitor.PersonalID) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.JobExperience) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.JobExperience) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.BidDate) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.BidDate) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.AppUser.AppUserName) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.AppUser.AppUserName) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Amount) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Amount) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.BidStatus) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.BidStatus) %>
        </div>
    </fieldset>
    <p>
    
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.BidID }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
