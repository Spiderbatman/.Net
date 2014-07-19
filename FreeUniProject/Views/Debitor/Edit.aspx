<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.Debitor>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Edit</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>Debitor</legend>
    
            <%: Html.HiddenFor(model => model.DebitorID) %>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PersonalID) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.PersonalID) %>
                <%: Html.ValidationMessageFor(model => model.PersonalID) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.FName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.FName) %>
                <%: Html.ValidationMessageFor(model => model.FName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.LName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.LName) %>
                <%: Html.ValidationMessageFor(model => model.LName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BirthDate) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.BirthDate) %>
                <%: Html.ValidationMessageFor(model => model.BirthDate) %>
            </div>
    
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
