<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="Certificate.aspx.cs" Inherits="WebSite2_Certificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <!-- for textbox-->
                
    
        <div>
            <asp:scriptManager runat="server"></asp:scriptManager>
            <asp:TextBox runat="server" ID="certificate" TextMode="MultiLine" Rows="30" Columns="150" style="padding:0px;margin-top:0px;"></asp:TextBox >

            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender2" runat="server" EnableSanitization="false" 
    OnImageUploadComplete="ajaxFileUpload_OnUploadComplete"
     TargetControlID="certificate">
    <Toolbar> 
                <ajaxToolkit:Undo />
                <ajaxToolkit:Redo />
                <ajaxToolkit:Bold />
                <ajaxToolkit:Italic />
                <ajaxToolkit:Underline />
                <ajaxToolkit:StrikeThrough />
                <ajaxToolkit:Subscript />
                <ajaxToolkit:Superscript />
                <ajaxToolkit:JustifyLeft />
                <ajaxToolkit:JustifyCenter />
                <ajaxToolkit:JustifyRight />
                <ajaxToolkit:JustifyFull />
                <ajaxToolkit:InsertOrderedList />
                <ajaxToolkit:InsertUnorderedList />
                <ajaxToolkit:CreateLink />
                <ajaxToolkit:UnLink />
                <ajaxToolkit:RemoveFormat />
                <ajaxToolkit:SelectAll />
                <ajaxToolkit:UnSelect />
                <ajaxToolkit:Delete />
                <ajaxToolkit:Cut />
                <ajaxToolkit:Copy />
                <ajaxToolkit:Paste />
                <ajaxToolkit:BackgroundColorSelector />
                <ajaxToolkit:ForeColorSelector />
                <ajaxToolkit:FontNameSelector />
                <ajaxToolkit:FontSizeSelector />
                <ajaxToolkit:Indent />
                <ajaxToolkit:Outdent />
                <ajaxToolkit:InsertHorizontalRule />
                <ajaxToolkit:HorizontalSeparator />
                <ajaxToolkit:InsertImage />
                </Toolbar>
    </ajaxToolkit:HtmlEditorExtender>

        </div>
    <br />
    <div>
        <a href="Acknowledgement.aspx"><input type="button" value="previous" /></a>
        &nbsp
     <a href="Certificate.aspx"><input type="button" value="next" /></a>
        </div>
</asp:Content>

