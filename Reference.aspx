<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite2/MasterPage.master" AutoEventWireup="true" CodeFile="Reference.aspx.cs" Inherits="WebSite2_Reference" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>  
  

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

  
      <!-- for textbox-->
            
    <script lang="text/JavaScript">
    function loadworddoc() {

        var doc = new ActiveXObject("Word.Application"); // creates the word object

        doc.Visible = false; // doesn't display Word window

        doc.Documents.Open("files/To.docx"); // specify path to document



        //copy the content from my word document and throw it into my variable

        var txt;

        txt = doc.Documents("files/To.docx").Content;

        document.all.myarea.value = txt;

        doc.quit(0); // quit word (very important or you'll quickly chew up memory!)

        }
        </script>
        <script type="text/javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
    tinyMCE.init({
        mode: "textareas",
        theme: "advanced",
        plugins: "safari,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,imagemanager,filemanager",
        theme_advanced_buttons1: "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2: "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3: "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4: "insertlayer,moveforward,movebackward,absolute,|,styleprops,spellchecker,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,blockquote,pagebreak,|,insertfile,insertimage",
        theme_advanced_toolbar_location: "top",
        theme_advanced_toolbar_align: "left",
        theme_advanced_statusbar_location: "bottom",
        theme_advanced_resizing: false,
        template_external_list_url: "js/template_list.js",
        external_link_list_url: "js/link_list.js",
        external_image_list_url: "js/image_list.js",
        media_external_list_url: "js/media_list.js"
    });
</script>

        <div>
            <asp:scriptManager runat="server"></asp:scriptManager>
            <asp:Textbox runat="server" ID="RichTextBox" TextMode="MultiLine" Rows="30" Columns="100"></asp:Textbox>

            <ajaxToolkit:HtmlEditorExtender ID="HtmlEditorExtender_refer" runat="server" EnableSanitization="false" 
    OnImageUploadComplete="ajaxFileUpload_OnUploadComplete"
     TargetControlID="RichTextBox">
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
        <a href="preview.aspx"><input type="button" value="preview"/></a>
        <asp:Button runat="server" Text="Save" ID="save" OnClick="save_Click"/>
       </div>
</asp:Content>

