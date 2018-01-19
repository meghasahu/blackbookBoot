<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginPage.aspx.cs" Inherits="loginPage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style>
        body{
            background-image:url('img/p.jpg');
            background-size:cover;
        }
        h2{
            text-align:center;
        }
        p{
            align-self:center;
        }
        .form1
        {
            padding:4px;
            margin:0px auto;
            background-color:cornflowerblue;
            width:400px;
           shape-outside:content-box;
        }
         .input
        {
            padding:4px;
            margin-left: 228px;
        }
          .roundedcorner
      {
          font-size:11px;
          margin-left:auto;
          margin-right:auto;
          margin-top:1px;
          margin-bottom:1px;
          padding:3px;
          border-top:1px solid;
          border-left:1px solid;
           border-right:1px solid;
          border-bottom:1px solid;
          -moz-border-radius:20px;
          -webkit-border-radius:20px;

      }
        .background {
            background-color: dodgerblue;
            filter: alpha(opacity=90);
            opacity: 0.8;
        }
        .popup{
            background-image:url('img/po.jpg');
             background-size:cover;
            border-width:3px;
            border-style:solid;
            border-color:darkgreen;
            padding-top:10px;
            padding-left:10px;
            -moz-border-radius:40px;
          -webkit-border-radius:40px;
        }
        .bg{
            background-image:url('img/po.jpg');
            
        }
        .auto-style1 {
            width: 404px;
        }
        .auto-style3 {
            width: 69px;
            height: 22px;
        }
        </style>

</head>
<body  >
    <form id="form1" runat="server">
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login1]"></asp:SqlDataSource>
       <div class="form1" style="margin-top:200px">
        <h2>Sign in to continue</h2>
          <asp:Label ID="Label4" runat="server" Text="UserName:" style="margin-left:40px"></asp:Label>
            <asp:TextBox ID="user" runat="server" Height="29px" Width="200px"  style="margin-left:39px" OnTextChanged="user_TextChanged"></asp:TextBox><br /><br />
              <asp:Label ID="Label3" runat="server" Text="PassWord"  style="margin-left:40px"></asp:Label>
        <asp:TextBox ID="passwd" runat="server" Height="29px" Width="200px" TextMode="Password"  style="margin-left:45px"></asp:TextBox><br /><br />
 
        &nbsp;<asp:Button ID="Button1" CssClass="input" runat="server" Text="Login" OnClick="Button1_Click" Width="81px" />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me"  style="margin-left:20px" />
       <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" OnClick="LinkButton1_Click"  style="margin-left:120px">Forget passwd??</asp:LinkButton>
        <br />
        <br />
        <asp:Label ID="Label" runat="server" Font-Bold="True" Font-Size="16pt"></asp:Label>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <div>
              <br />
                <asp:Panel ID="Panel1" runat="server" CssClass="popup" >
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF0066" Text="Forget Password" Font-Bold="true" Font-Size="Large" ></asp:Label>
                    <br />
                    <br />
                     <table>
                     <tr>
                            <td class="auto-style3">
                                  <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="Email-Id"  style="margin-left:70px"></asp:Label>
                                   
                                    <asp:TextBox ID="temail" runat="server" Font-Size="Larger" style="margin-left:10px"></asp:TextBox>
                                    <br />
                                    <br />
                                
                            </td>
                        </tr>
                        <tr>  
                                  <td class="auto-style1">
                                       <asp:Button ID="Button4" runat="server" CssClass="roundedcorner" Font-Size="Larger" Text="Cancel"  style="margin-left:180px"/>
                                       &nbsp;<asp:Button ID="forget" runat="server" CssClass="roundedcorner" Font-Size="Larger"  OnClick="Button3_Click" Text="Submit" style="margin-left:30px" />
                                   </td>
                           
                        </tr>
                    </table>
                    <br />
                    <br />
                </asp:Panel>
                <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1" PopupControlID="Panel1" BackgroundCssClass="background"></cc1:ModalPopupExtender>
            </div>
           
    
        </form>
    </body>
</html>
