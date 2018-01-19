using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

using System.Text;

using System.Windows.Forms;

using iTextSharp.text;
using iTextSharp.text.pdf;

using Microsoft.Office.Interop;

using System.Drawing.Printing;

using System.Diagnostics;


public partial class WebSite2_Reference : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       try
        {
            //TextReader st = new StreamReader(@"C:/Users/megha ankit/OneDrive/Documents/Project Report on.docx");

           // refer.Text = st.ReadToEnd();
          //  Document d = new Document();
            // refer.Text = (File.ReadAllLines("C://Users/megha ankit/OneDrive/Documents/Project.pdf"));
            //Application Objword = new Application();

            //creating the object of document class  
            //Document objdoc = new Document();

            object readOnly = false;

            object isVisible = true;

            object missing = System.Reflection.Missing.Value;

            object myDoc = Server.MapPath("files/To.docx");
            Microsoft.Office.Interop.Word.ApplicationClass ac = new Microsoft.Office.Interop.Word.ApplicationClass();

            Microsoft.Office.Interop.Word.Document doc = new Microsoft.Office.Interop.Word.Document();

            doc = ac.Documents.Open(ref myDoc, ref missing, ref readOnly, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref missing, ref isVisible);


            // doc.ActiveWindow.Selection.WholeStory();
            //  doc.ActiveWindow.Selection.Copy();


            //IDataObject data = Clipboard.GetDataObject();



            RichTextBox.Text = doc.Content.Text;

       //           Debug.WriteLine(refer.Text);

             

          

            
        
        }
            


        catch (Exception f)
        {

        } 

        

        if (Request.QueryString["preview"] == "1" && !string.IsNullOrEmpty(Request.QueryString["fileId"]))
        {
            var fileId = Request.QueryString["fileId"];
            var fileContents = (byte[])Session["fileContents_" + fileId];
            var fileContentType = (string)Session["fileContentType_" + fileId];

            if (fileContents != null)
            {
                Response.Clear();
                Response.ContentType = fileContentType;
                Response.BinaryWrite(fileContents);
                Response.End();
            }
        }
    }

    protected void ajaxFileUpload_OnUploadComplete(object sender, AjaxControlToolkit.AjaxFileUploadEventArgs e)
    {
        if (e.ContentType.Contains("jpg") || e.ContentType.Contains("gif")
            || e.ContentType.Contains("png") || e.ContentType.Contains("jpeg"))
        {
            Session["fileContentType_" + e.FileId] = e.ContentType;
            Session["fileContents_" + e.FileId] = e.GetContents();
        }

        // Set PostedUrl to preview the uploaded file.         
        e.PostedUrl = string.Format("?preview=1&fileId={0}", e.FileId);
    }



    protected void save_Click(object sender, EventArgs e)
    {
       

        String myDoc = Server.MapPath("files/this3.pdf");

        Document doc = new Document(iTextSharp.text.PageSize.A4,10,10, 42, 35);
        PdfWriter.GetInstance(doc,new FileStream(myDoc,FileMode.OpenOrCreate));

        doc.Open();

        Paragraph p = new Paragraph(RichTextBox.Text);

        doc.Add(p);
        doc.Close();
        


    }

   
}