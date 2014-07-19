<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.Bid>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Create</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>Bid</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.DebitorID, "Debitor") %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("DebitorID", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.DebitorID) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.JobExperience) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.JobExperience) %>
                <%: Html.ValidationMessageFor(model => model.JobExperience) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BidDate) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.BidDate) %>
                <%: Html.ValidationMessageFor(model => model.BidDate) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BidCreator, "AppUser") %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("BidCreator", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.BidCreator) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Amount) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Amount) %>
                <%: Html.ValidationMessageFor(model => model.Amount) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BidStatus) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.BidStatus) %>
                <%: Html.ValidationMessageFor(model => model.BidStatus) %>
            </div>
    
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
