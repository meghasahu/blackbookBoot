<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="_Default" %>
<asp:Content ContentPlaceHolderID="content1" ID="temp" runat="server">
    
    <div class="container" style="width:100%;height:500px">
    <div class="carousel slide" id="my" data-ride="carousel">
        <ol class="carousel-control">
            <li data-target="#my" data-slide-to="0" class="active"></li>
            <li data-target="#my" data-slide-to="1"></li>
            <li data-target="#my" data-slide-to="2"></li>
            <li data-target="#my" data-slide-to="3"></li>

        </ol>

        <div class="carousel-inner">
            <div class="item active" >
                <img src="images/black1.jpg" style="width:100%" alt="unable to load" />
                </div>
            <div class="item">
                <img src="images/ki.png" style="width:100%" alt="unable to load" />
            </div>
            <div class="item">
                <img src="images/achieve2.jpg" style="width:100%" alt="unable to load" />
            </div>
            <div class="item">
                <img src="images/basic.jpg" style="width:100%" alt="unable to load" />
            </div>
        </div>

        <a class="left carousel-control" href="#my" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">previous</span>
        </a>
        <a class="right carousel-control" href="#my" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">next</span>
        </a>
        </div>
        </div>

</asp:Content>
