<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<FreeUniProject.AppUser>" %>

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
            <legend>AppUser</legend>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.AppUserName) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.AppUserName) %>
                <%: Html.ValidationMessageFor(model => model.AppUserName) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsActive) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IsActive) %>
                <%: Html.ValidationMessageFor(model => model.IsActive) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.AppUserType) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.AppUserType) %>
                <%: Html.ValidationMessageFor(model => model.AppUserType) %>
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
