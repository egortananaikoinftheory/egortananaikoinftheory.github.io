<html>
  <head>
      <style type="text/css">
          .style1
          {
          }
          .style2
          {
              height: 39px;
          }
          .style3
          {
              width: 158px;
          }
          .style4
          {
              height: 39px;
              width: 158px;
          }
      </style>
  </head>
  <body>
   <hr>
    <form runat="server">
      <table cellpadding="8">
        <tr>
          <td rowspan="2">
            <asp:Button Text="Log In" OnClick="OnLogIn"
              RunAt="server" Font-Size="XX-Large" Font-Bold="True" Height="62px" />
          </td>
          <td class="style1">
            User Name:
          </td>
          <td class="style1">
            <asp:TextBox ID="UserName" RunAt="server" />
          </td>
          <td class="style3">
              <font color="red"><asp:Label ID="l_Login" RunAt="server" /></font> &nbsp;
              <font color="black"><asp:Label ID="l_or" runat="server" Text=""></asp:Label></font>
          </td>
          <td class="style1" rowspan="2">
              &nbsp;</td>
        </tr>
        <tr>	
          <td class="style2">
            Password:
          </td>
          <td class="style2">
            <asp:TextBox ID="Password" TextMode="password"
              RunAt="server" />
          </td>
          <td class="style4">
            <asp:Label ID="l_Password" runat="server" Text="" ForeColor="Red"></asp:Label>
          </td>
        </tr>
        </table>
    </form>
    <hr>
    <h3>&nbsp;</h3>
  </body>
</html>

<script language="C#" runat="server">
  void OnLogIn (Object sender, EventArgs e)
  {
      if (FormsAuthentication.Authenticate (UserName.Text,
          Password.Text))
          FormsAuthentication.RedirectFromLoginPage (UserName.Text,
              false);
      else
          { 
          l_Login.Text = "<= Invalid login"; 
          l_or.Text="or"; 
          l_Password.Text="<= Invalid password"; 
          }
  }
</script>