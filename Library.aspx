﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Library.aspx.cs" Inherits="Library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    transition:1s;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar">
    <ul>
    <li id="home"> <a href="/Home1.aspx/"><i class="fa fa-home">&nbsp; </i>Home</a></li>
    <li id="join"><a href="/log/"> <i class="fa fa-group">&nbsp; </i>Join</a></li>
    <li id="cbook"><a href="/products/"><i class="fa fa-edit">&nbsp;</i>Create Book</a></li>
    <li id="lib"><a href="/services/"><i class="fa fa-book">&nbsp;</i>Library</a></li>
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
    
    </form>
</body>
</html>
