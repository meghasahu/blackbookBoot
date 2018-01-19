<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home1.aspx.cs" Inherits="Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <!-- <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"/>-->
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <style>

     .navbar{
         text-align:center;
         width:100%;
         background-color:#2683AE;
         font-size:1.5em;
           }
     .navbar ul{
         margin:0;
         padding:0;
         list-style:none;
         position:relative;
     }
        .navbar ul li a {
            display: block;
            padding: 25px;
            color: white;
            text-decoration: none;
            width: 200px;
        }
.navbar ul:after{
    content:"";clear:both;
    display:block;
}
.navbar ul li{
    float:left;
    list-style:none;
}
.navbar ul ul{
    display:none;
}
.navbar ul li:hover>ul{
    display:block;
}
.navbar ul li:hover{
    background:#C1C1C1;
    transition:0.9s;
}
.navbar ul li:hover a{
    color:red;
}
.navbar ul ul{
    background:#2683AE;
    padding:0;
    margin:0;
    position:absolute;top:100%;
    opacity:5;
}
.navbar ul ul li{
    float:none;
    position:relative;
}
.navbar ul ul li a{
    padding:25px;
    color:red;
    width:200px;
    text-align:left;
}
.navbar ul ul li a:hover{
    background:lightblue;
    color:#C1C1C1;
    transition:3s;
}
.navbar ul ul li a:active{
    color:green;
}
 .auto-style1 {
            margin-left: 0px;
            margin-right: 100px;xz
            margin-top: 10px;
            margin-bottom: 50px;
        }
  body {
            background-image:url('img/p1.jpg');
            background-size:cover;
        }
     
     </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar">
    <ul>
    <li id="home"> <a href="/Home1.aspx/"><i class="fa fa-home">&nbsp; </i>Home</a></li>
    <li id="join"><a href="/log/"> <i class="fa fa-group">&nbsp; </i>Join</a></li>
    <li id="cbook"><a href="/Create.aspx/"><i class="fa fa-edit">&nbsp;</i>Create Book</a></li>
    <li id="lib"><a href="Library.aspx"><i class="fa fa-book">&nbsp;</i>Library</a></li>
    <li id="setting" ><a href="/products/">
    <i class="fa fa-asterisk">&nbsp;</i>Setting</a>
        <ul>
            <li id="logout"><a href="loginPage.aspx"><i class="fa fa-sign-out">&nbsp</i>Logout</a></li>
            <li id="chang"><a href="ChangePasswd.aspx"><i class="fa fa-archive" > &nbsp</i>Chang Passwd</a></li>      
        </ul>
      </li>
          <li id="Extra" class="auto-style2"><a href="/products/"><i class="fa fa-inbox">&nbsp;</i>Message</a></li>
   </ul>
</div>
         <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="6000" OnTick="Timer1_Tick"></asp:Timer>
            <asp:Image ID="Image1" runat="server"  Height="649px" Width="1508px" ImageAlign="Middle" CssClass="auto-style1" />
    
        <br />
    
    </div>
    
    </form>
</body>
</html>

     