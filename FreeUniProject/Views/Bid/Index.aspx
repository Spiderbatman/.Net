<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<FreeUniProject.Bid>>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <form action="/Bid/FilterBids" method="post">
    <p>
        <%: Html.ActionLink("Create New", "Create") %>

    </p>
    <table>
        <tr>
            <th>
                <%: Html.DisplayNameFor(model => model.Debitor.FName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Debitor.LName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.JobExperience) %>
            </th>
            <th>
                BId Date From
            </th>
            <th>
                Bid Date To
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.AppUser.AppUserName) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Amount) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.BidStatus) %>
            </th>
            <th></th>
        </tr>
        
       <tr>
           
           <% FreeUniProject.Bid bid = new FreeUniProject.Bid(); %>
            <td>
                <%: Html.TextBox("DebitorFName") %>
            </td>
           <td>
               <%:Html.TextBox("DebitorLName") %>
           </td>
            <td>
                <%: Html.TextBox("JobExperience") %>
            </td>
            <td class="editor-field">
                 <%: Html.EditorFor(model => model.ElementAtOrDefault(0).BidDate,  "", "dateFrom") %>
                <%: Html.ValidationMessageFor(model => model.ElementAtOrDefault(0).BidDate) %>
            </td>
              <td class="editor-field">
                 <%: Html.EditorFor(model => model.ElementAtOrDefault(0).BidDate, "", "dateTo") %>
                <%: Html.ValidationMessageFor(model => model.ElementAtOrDefault(0).BidDate) %>
            </td>
            <td>
                <%: Html.TextBox("BidCreator") %>
            </td>
            <td>
                <%: Html.TextBox("Amount") %>
            </td>
            <td>
                <%: Html.TextBox("BidStatus") %>
            </td>
            <td>
                 <input type="submit" value="Filter" />
            </td>
        </tr>

    
    <% foreach (var item in Model) { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.Debitor.FName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Debitor.LName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.JobExperience) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.BidDate) %>
            </td>
            <td>
             
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.AppUser.AppUserName) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Amount) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.BidStatus) %>
            </td>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.BidID }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.BidID }) %> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.BidID }) %>
            </td>
        </tr>
    <% } %>
    
    </table>
        </form>
</body>
</html>
