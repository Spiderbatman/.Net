<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<FreeUniProject.Debitor>>" %>

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
                <%: Html.DisplayNameFor(model => model.PersonalID) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.FName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.LName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.BirthDate) %>
            </th>
            <th></th>
        </tr>
    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.PersonalID) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.FName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.LName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.BirthDate) %>
            </td>
            <td>
                <% FreeUniProject.BankDBEntities db = new FreeUniProject.BankDBEntities();
                   int k = Int32.Parse(User.Identity.Name);
                   FreeUniProject.AppUser ap = db.AppUsers.FirstOrDefault(r => r.AppUserID == k);
                    if (  ap != null && ap.AppUserType == 1) { %>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.DebitorID }) %> | <% } %>  
                <%: Html.ActionLink("Details", "Details", new { id=item.DebitorID }) %> 
                <% if (ap.AppUserType == 1) {%>|
                <%: Html.ActionLink("Delete", "Delete", new { id=item.DebitorID }) %>
                <% } %>
            </td>
        </tr>
    <% } %>
    
    </table>
</body>
</html>
