<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.Bid>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Delete</title>
</head>
<body>
    <h3>Are you sure you want to delete this?</h3>
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
    <% using (Html.BeginForm()) { %>
        <p>
            <input type="submit" value="Delete" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
</body>
</html>
