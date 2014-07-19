<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<FreeUniProject.AppUser>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.AppUserName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.IsActive) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.AppUserType) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.AppUserName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.IsActive) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.AppUserType) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.AppUserID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.AppUserID }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.AppUserID }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
