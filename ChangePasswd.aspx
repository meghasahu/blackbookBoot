<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePasswd.aspx.cs" Inherits="ChangePasswd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url('img/ps.jpg');
            background-size:cover;
            }
          .form1
        {
            padding:4px;
            margin:0px auto;
            background-color:cornflowerblue;
            width:450px;
           shape-outside:ellipse();
           height:450px;
        }
          .form2{
              margin-left:500px;
              margin-top:230px;
          }
       .textbox{
           Height:25px;
           Width:170px;
       }
       
    </style>
</head>
<body >
    <form id="for" runat="server" class="form2"> 
        
            <h2 >
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Change The Password" style="margin-left:100px" Font-Bold="True" Font-Size="22" Font-Underline="true"></asp:Label></h2>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Old Password" style="margin-left:50px" Font-Size="18"  ></asp:Label>    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" ></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="New Password " style="margin-left:50px" Font-Size="18" ></asp:Label>
                    <br />
                </td>
                <td >
                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="textbox"></asp:TextBox>
                &nbsp;
                    
&nbsp;</td>
            </tr>
       <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Conform Password " style="margin-left:50px"  Font-Size="18"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"  CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
             <tr><td> 
                <br /><br />
               </td>
                <td ><br/>
                    <asp:Button ID="Button2" runat="server" BackColor="#9999FF" Font-Italic="True" Height="29px" Text="Cancel" Width="70px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#9999FF" Font-Italic="True" Height="29px" Text="Update" Width="70px" OnClick="Button3_Click" />
&nbsp;
                    <br />
                </td>
            </tr>
           </table><br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" style="margin-left:230px" Font-Size="20pt" ForeColor="#003300"></asp:Label>
            <br />
               
      
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [login1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [login1] ([Id], [Uname], [Passwd], [email]) VALUES (@Id, @Uname, @Passwd, @email)" SelectCommand="SELECT * FROM [login1]" UpdateCommand="UPDATE [login1] SET [Uname] = @Uname, [Passwd] = @Passwd, [email] = @email WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Uname" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Uname" Type="String" />
                    <asp:Parameter Name="Passwd" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>
        </div>
            </form>
</body>
</html>
