﻿<%@ Page  Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs"Inherits="_Default"  %>
 
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns='http://www.w3.org/1999/xhtml'>
<head runat="server">
    <title>Telerik ASP.NET Example</title>
    <link href="../Common/styles.css" rel="stylesheet" type="text/css" />
   
</head>
<body>
    <form id="form1" runat="server">
   <telerik:RadScriptManager runat="server" ID="RadScriptManager1" >
           <Scripts>
               <telerik:RadScriptReference Path="scripts.js" />
           </Scripts>
           </telerik:RadScriptManager>
         <script src="script.js" type="text/javascript"></script>
        <script type="text/javascript">
            TelerikDemo.rwUploadId = "<%=RadWindow1.ClientID%>";
            TelerikDemo.rnMessagesId = "<%=RadNotification1.ClientID%>";
            TelerikDemo.reId = "<%=RadEditor1.ClientID%>";
    </script>
    <telerik:RadSkinManager ID="RadSkinManager1" runat="server" ShowChooser="true" />
    <div class="demo-containers">
        <div class="demo-container">
            <telerik:RadEditor RenderMode="Lightweight" runat="server" ID="RadEditor1" ToolbarMode="RibbonBar" ToolsFile="word-like-tools.xml" 
                SkinID ="DefaultSetOfTools" 
                Height="675px">
                <ExportSettings FileName="blackbook" OpenInNewWindow="true"></ExportSettings>
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
    </form>
</body>
</html>