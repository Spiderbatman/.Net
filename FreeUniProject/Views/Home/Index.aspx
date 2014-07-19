<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <div>
        <%: Html.ActionLink("დებიტორები", "Index", "Debitor") %> <br />
         <% FreeUniProject.BankDBEntities db = new FreeUniProject.BankDBEntities();
                   int k = Int32.Parse(User.Identity.Name);
                   FreeUniProject.AppUser ap = db.AppUsers.FirstOrDefault(r => r.AppUserID == k);
                    if (  ap != null && ap.AppUserType == 1) { %>
        <%: Html.ActionLink("მომხმარებლები", "Index", "AppUser") %> <br />
        <% } %>
        <%: Html.ActionLink("განაცხადები", "Index", "Bid") %> <br />
    </div>
</body>
</html>
