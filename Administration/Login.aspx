<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Administration_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Apartments Elvira - Administracija</title>
    <link href="css/Style.css" rel="stylesheet" type="text/css" />
     <link href="css/Responsive.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="lead loginForm">
    <form id="form1" runat="server">


    <header style="background-color: #669999; padding:10px">
    <h3>Administracija</h3>
    <a href="../Index.aspx" target="_blank" style="text-decoration: none; color:White">www.apartmentselvira.com</a>
    </header>
    <section style="width: 250px; padding:20px">
    <fieldset>
    <legend>Prijava</legend>
    <div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="txtUserName" runat="server" placeholder="Korisničko ime"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Lozinka"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

        <div>
        
       
        </div>
        <div style="padding-top: 10px">
        <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Prijava" 
            onclick="btnLogin_Click" />
        </div>
    </div>
    </fieldset>
    </section>
    </form>
</body>
</html>
