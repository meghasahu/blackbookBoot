<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateBook.aspx.cs" Inherits="_Default" %>

<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>  <!-- third party link that we are using-->


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 2.0//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
    <link href="../Common/styles.css" rel="stylesheet" type="text/css" />
     <script src="scripts.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
    <!-- link for icon in navbar-->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
     <!-- link for sticky effect in navbar -->
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
  
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>jQuery Table LiveSearch Example</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<style>
     
              /*sticky effect on nevbar & also create js in form tag*/
.sticky {
    position: fixed;
    width: 100%;
    left: 0;
    top: 0;
    z-index: 100;
    border-top: 0;
}

.content {
    padding: 16px;
}


	</style>

</head>
<body>
    <form id="form1" runat="server">

        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/collegelogo.jpg" Width="180px" Height="40px" style="margin-left:20px" />
      <br />
    <div class="navbar">
    <ul>
    <li id="home"> <a href="Home.aspx"><i class="fa fa-home">&nbsp; </i>Home</a></li>
    <li id="cbook"><a href="CreateBook.aspx"><i class="fa fa-edit">&nbsp;</i>Create Book</a></li>
    <li id="lib"><a href="Home.aspx"><i class="fa fa-book">&nbsp;</i>Library</a>
        <ul>
            <li id="Website"><a href="Website.aspx">Websites</a></li>
             <li id="Website10"><a href="Embedded.aspx">Embedded</a></li>
             <li id="Website2"><a href="app.aspx">Mobile application</a></li>
        </ul>
    </li>
    <li id="setting" ><a href="Home.aspx">
    <i class="fa fa-asterisk">&nbsp;</i>Setting</a>
        <ul>
            <li id="logout"><a href="login.aspx"><i class="fa fa-sign-out">&nbsp</i>Logout</a></li>
            <li id="chang"><a href="changepassword.aspx"><i class="fa fa-archive" > &nbsp</i>ChangPassword</a></li>      
        </ul>
      </li>
          <li id="Extra" class="auto-style2"><a href="Home.aspx"><i class="fa fa-inbox">&nbsp;</i>Message</a></li>
        <li id="about as" class="auto-style2"><a href="Aboutus.aspx"> <i class="fa fa-group">&nbsp; </i>About Us</a></li>
 </ul>
</div>   
             
            <telerik:RadScriptManager runat="server" ID="RadScriptManager1" >
           <Scripts>
               <telerik:RadScriptReference Path="scripts.js" /></Scripts>
           </telerik:RadScriptManager>
        <script type="text/javascript">
            TelerikDemo.rwUploadId = "<%=RadWindow1.ClientID%>";
            TelerikDemo.rnMessagesId = "<%=RadNotification1.ClientID%>";
            TelerikDemo.reId = "<%=RadEditor1.ClientID%>";
    </script>
    
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="false" />
        <div class="demo-containers">
        <div class="demo-container" style="margin-left:400px">
            <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="RadEditor1" ToolbarMode="RibbonBar" ToolsFile="word-like-tools.xml" SkinID ="DefaultSetOfTools"
                Height="675px">
                <ImageManager ViewPaths="~/images"
                    UploadPaths="~/images"
                    DeletePaths="~/images"
                    EnableAsyncUpload="true"></ImageManager>
            </telerik:RadEditor>
        </div>
    </div>
    <telerik:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManager runat="server" ID="RadAjaxManager1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="CheckBoxListEditMode">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="CheckBoxListEditMode" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadioButtonToolsFile">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadioButtonToolsFile" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="CheckBoxListModules">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="CheckBoxListModules" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="RadioButtonListEnabled">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl  ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="RadioButtonListEnabled" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="NewLineModeButtonList">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="NewLineModeButtonList" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="CheckBoxListModules">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="RadEditor1" LoadingPanelID="RadAjaxLoadingPanel1" />
                    <telerik:AjaxUpdatedControl ControlID="CheckBoxListModules" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
        <telerik:RadWindow RenderMode="Lightweight" ID="RadWindow1" runat="server" Width="350px" Height="200px" Title="Upload File" 
             Behaviors="Close,Move" VisibleStatusbar="false" AutoSize="false">
            <ContentTemplate>
           
                Upload a DOCX, DOC or RTF file to load its content for editing. You can also use plain text (.txt) or HTML (.htm, .html) files and content.<br />
                <telerik:RadAsyncUpload RenderMode="Lightweight" runat="server" ID="RadAsyncUpload1" AllowedFileExtensions="doc,docx,rtf,txt,htm,html,md" MaxFileInputsCount="1"
                                        OnClientValidationFailed="TelerikDemo.OnClientValidationFailed" OnClientFileUploaded="TelerikDemo.uploadFile"
                                        OnFileUploaded="RadAsyncUpload1_FileUploaded" Width="100%" Height="100%">
                </telerik:RadAsyncUpload>
           
        </ContentTemplate>
      
    </telerik:RadWindow>
    <telerik:RadNotification RenderMode="Lightweight" ID="RadNotification1" runat="server" Width="350px" Height="150px" Title="An error occured" TitleIcon="warning"
                            ContentIcon="info" Position="Center" AutoCloseDelay="5000" EnableRoundedCorners="true" EnableShadow="true">
    </telerik:RadNotification>
   

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