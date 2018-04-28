

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!-- link for stylesheet.css-->
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <!-- link for icon in navbar-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
     <!-- link for sticky effect in navbar -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  
  
    <style>
 .search{
     margin-top:10px;
     float:right;
 }     
 .input{
     padding:5px;
     font-size:16px;
     font-family:sans-serif;
     width:200px;
     -moz-border-radius:5px;
     -webkit-border-radius:5px;
 }
 .btn{
     float:right;
     background-color:#142b47;
     color:white;
     border-radius:0 5px 5px 0;
     cursor:pointer;
     position:relative;
     padding:7px;
     font-family:sans-serif;
     border:none;
     font-size:16px;
     margin-right:1220px;
 }
 .btn1{
     Width:150px;
     Height:35px ;
     Font-Size:18px;
     color:#ffffff;  
     background-color:#142b47;
     margin-top:15px;
     -moz-border-radius:5px;
     -webkit-border-radius:5px;
     margin-left:435px;
 }
 

  .text1 {
            margin-left: 80px;
            width: 280px;
            height: 30px;
            font-size:18px;
              -moz-border-radius:5px;
        -webkit-border-radius:5px;
        }
         .btn2{
     
           -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        font-size:18px;
 }
  
    </style>
     
 
    <script type="text/javascript">  

        function DeleteConfirm() {
            var Ans = confirm("Do you want to Delete Selected Students Record?");
            if (Ans) {
                return true;
            }
            else {
                return false;
            }
        }  
</script>  
</head>
<body>
      <form id="form1" runat="server">

<asp:Image ID="Image3" runat="server" ImageUrl="~/images/collegelogo.jpg" Width="180px" Height="40px" style="margin-left:20px" />
      <br />
    <div class="navbar">
    <ul>
    <li id="home"> <a href="HomeAdmin.aspx"><i class="fa fa-home">&nbsp; </i>Home</a></li>
    <li id="db"><a href="admin.aspx"><i class="fa fa-edit">&nbsp;</i>Database</a></li>
    <li id="about as" class="auto-style2"><a href="AboutusAdmin.aspx"><i class="fa fa-male">&nbsp;</i>About Us</a></li>
    <li id="logout"><a href="login.aspx"><i class="fa fa-sign-out">&nbsp</i>Logout</a></li>
    
 </ul>
</div>
          <div class="search">
              <asp:TextBox ID="TextBox1" runat="server" CssClass="input" placeholder="Search" ></asp:TextBox>
              <asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn"  BackColor="#003399" OnClick="Search"/>
              </div>
          <br />
          <br />
          <br />
          <table><tr><td>
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="OnPageIndexChanging"
             OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
     AlternatingRowStyle-BackColor = "#C2D69B" HeaderStyle-BackColor = "green">
              <Columns>
                  <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:CheckBox ID="chkDel" runat="server"/>  
                    </ItemTemplate>  
                  </asp:TemplateField> 

                  

                  <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                     <asp:TemplateField HeaderText="">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" ></asp:Label>  
                    </ItemTemplate> 
                   </asp:TemplateField>  
               
                <asp:TemplateField HeaderText="rollno">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_rollno" runat="server" Text='<%#Eval("rollno") %>'></asp:Label>  
                    </ItemTemplate> 
                     </asp:TemplateField>  
                <asp:TemplateField HeaderText="FullName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("fname") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("fname") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Username">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_username" runat="server" Text='<%#Eval("username") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_username" runat="server" Text='<%#Eval("username") %>'></asp:TextBox>  
                    </EditItemTemplate> 
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_password" runat="server" Text='<%#Eval("password") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_password" runat="server" Text='<%#Eval("password") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="PhoneNo">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_phoneno" runat="server" Text='<%#Eval("phoneno") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_phoneno" runat="server" Text='<%#Eval("phoneno") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_email" runat="server" Text='<%#Eval("email") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_email" runat="server" Text='<%#Eval("email") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="ProjectName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_projecttype" runat="server" Text='<%#Eval("projecttype") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_projecttype" runat="server" Text='<%#Eval("projecttype") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                   </asp:TemplateField>
                   
                  
                  



 </Columns>
          </asp:GridView>
          <asp:Button ID="Button2" runat="server" CssClass="btn1" OnClick="Button2_Click" Text="Delete Record"  />
          </td><td>
          <div style="margin-left:90px">
              <asp:Label ID="Label1" runat="server" Text="Add new student's details" Font-Bold="true" Font-Size="24px" style="margin-left:85px"></asp:Label><br />
           <br /> <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom:10px"  CssClass="text1" placeholder="Roll No"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="Full Name."></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="Password" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="Phone number"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="@gmail.com" ></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" style="margin-bottom:10px" CssClass="text1" placeholder="Project topic" ></asp:TextBox><br />
            <asp:Button ID="Button3" runat="server" Text="Submit"  Width="280px" Height="35px"   BackColor="#142b47"  CssClass="btn2"  style="margin-left:80px"  Font-Bold="True" ForeColor="White" OnClick="Button3_Click"  />
            <asp:Label ID="Label3" runat="server"  Font-Bold="True" Font-Size="20px" Text=""></asp:Label>
        
          </div>
            </td>
              </tr>
              </table>



          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]" DeleteCommand="DELETE FROM [student] WHERE [rollno] = @rollno" InsertCommand="INSERT INTO [student] ([rollno], [fname], [username], [password], [phoneno], [email], [projecttype]) VALUES (@rollno, @fname, @username, @password, @phoneno, @email, @projecttype)" UpdateCommand="UPDATE [student] SET [fname] = @fname, [username] = @username, [password] = @password, [phoneno] = @phoneno, [email] = @email, [projecttype] = @projecttype WHERE [rollno] = @rollno" >
              <DeleteParameters>
                  <asp:Parameter Name="rollno" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="rollno" Type="Int32" />
                  <asp:Parameter Name="fname" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="phoneno" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="projecttype" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="fname" Type="String" />
                  <asp:Parameter Name="username" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="phoneno" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="projecttype" Type="String" />
                  <asp:Parameter Name="rollno" Type="Int32" />
              </UpdateParameters>
          
          </asp:SqlDataSource>

          <script>
        <!-- java script for sticky effect on navbar-->     
    $(document).ready(function () {
        var stickyNavTop = $('.navbar').offset().top;

        var stickyNav = function () {
            var scrollTop = $(window).scrollTop();

            if (scrollTop > stickyNavTop) {
                $('.navbar').addClass('sticky');
            } else {
                $('.navbar').removeClass('sticky');
            }
        };

        stickyNav();
        $(window).scroll(function () {
            stickyNav();
        });
    });
   </script>




          </form>
</body>
</html>
