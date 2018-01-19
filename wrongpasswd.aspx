<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wrongpasswd.aspx.cs" Inherits="wrongpasswd" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .popup {
            background-image: url('img/po.jpg');
            background-size:cover;
            border-width: 3px;
            border-style: solid;
            border-color: darkgreen;
            padding-top: 10px;
            padding-left: 10px;
            -moz-border-radius: 40px;
            -webkit-border-radius: 40px;
        }
        .auto-style2 {
            width: 590px;
            height: 37px;
        }
        .auto-style4 {
            width: 434px;
            height: 132px;
            margin-right: 0px;
        }
        .auto-style5 {
            width: 590px;
            height: 80px;
        }
          .roundedcorner1
      {
          font-size:11px;
          margin-left:auto;
          margin-right:auto;
          margin-top:1px;
          margin-bottom:1px;
          padding:10px;
          border-top:1px solid;
          border-left:1px solid;
           border-right:1px solid;
          border-bottom:1px solid;
          -moz-border-radius:20px;
          -webkit-border-radius:20px;

      }
        </style>

  </head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <asp:Button ID="Button2" runat="server"  Text="Button" CssClass="roundedcorner" Font-Size="Larger" /> 
        <asp:Panel ID="Panel2" runat="server" CssClass="popup">
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Oops! invalide usernam or password" style="margin-left:70px"  Font-Size="Large" Font-Bold="True" Height="40px"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button3" runat="server" Text="Ok" style="margin-left:200px" Font-Size="Large" CssClass="roundedcorner1"  />
                <br />
                
                <br />
            </td>
        </tr>
    </table>
            </asp:Panel>
        <cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel2" TargetControlID="Button2" ></cc1:ModalPopupExtender>
    </div>
    </form>
</body>
</html>
