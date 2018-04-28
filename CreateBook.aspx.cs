using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Windows.Forms;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web.UI.Export;
using Telerik.Windows.Documents.FormatProviders.OpenXml.Export;
using Telerik.Windows.Documents.Flow.Model;
using Telerik.Windows.Documents.FormatProviders;
using Telerik.Windows.Documents.Core;
using Telerik.Windows.Documents.Flow.FormatProviders.Docx;
using Telerik.Windows.Documents.Flow.FormatProviders.Pdf;
using System.Text;

using Aspose.Words;
using Aspose.Words.Saving;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        using (FileStream initialFileStream = new FileStream(Server.MapPath("MYPROJECT.docx"), FileMode.Open, FileAccess.Read))
        {
            RadEditor1.LoadDocxContent(initialFileStream);
            //RadEditor1.LoadRtfContent(initialFileStream);
        }




        RadEditor1.RibbonBar.SelectedTabIndex = 1;
        //handle postbacks from the export commands
        try
        {
            string evtArg = Request["__EVENTARGUMENT"];
            switch (evtArg)
            {
                case "SaveAsDocx":
                    RadEditor1.ExportToDocx();
                    break;
                case "SaveAsRtf":
                    RadEditor1.ExportToRtf();
                    break;
                case "SaveAsPDF":

                   


                    /*string FilePath = Server.MapPath("javascript1-sample.pdf");

                    //WebClient User = new WebClient();

                    Byte[] FileBuffer = User.DownloadData(FilePath);

                    if (FileBuffer != null)

                    {

                        Response.ContentType = "application/pdf";

                        Response.AddHeader("content-length", FileBuffer.Length.ToString());

                        Response.BinaryWrite(FileBuffer);

                    }

                    
                    DocxFormatProvider providerDocx = new DocxFormatProvider();

                    FileStream stream = File.Open(Server.MapPath("MYPROJECT.docx"), FileMode.Open);
                    
                    
                    RadFlowDocument document = providerDocx.Import(stream);


                    PdfFormatProvider providerPdf = new PdfFormatProvider();
                    FileStream output = File.Open(Server.MapPath("MYPROJECT.pdf"), FileMode.Create);

                    
                    
                    providerPdf.Export(document,output);

                    MessageBox.Show("hello");

                    using (StreamWriter writer = new StreamWriter(Response.OutputStream, Encoding.UTF8))
                    {
                        writer.Write(RadEditor1.Content);
                    }*/

                    // Open the document
                    using (StreamWriter externalFile = new StreamWriter(Server.MapPath("temp.docx"), false))
                    {
                        externalFile.Write(RadEditor1.Content);
                    }

                   
                    Document doc = new Document(Server.MapPath("~/temp.docx"));


                    // Option 1: Save document to file in the PDF format with default options
                    doc.Save(Server.MapPath("Rendering.PdfDefaultOptions Out.pdf"));

                    // Option 2: Save the document to stream in the PDF format with default options
                    MemoryStream stream = new MemoryStream();
                    doc.Save(stream, SaveFormat.Pdf);
                    // Rewind the stream position back to the beginning, ready for use
                    stream.Seek(0, SeekOrigin.Begin);

                    // Option 3: Save document to the PDF format with specified options
                    // Render the first page only and preserve form fields as usable controls and not as plain text
                    PdfSaveOptions pdfOptions = new PdfSaveOptions();
                    pdfOptions.PageIndex = 0;
                    pdfOptions.PageCount = 1;
                    pdfOptions.PreserveFormFields = true;
                    doc.Save(Server.MapPath("Rendering.PdfCustomOptions Out.pdf"), pdfOptions);






                    break;
                default:
                    break;
            }
        }
        catch (Exception ex)
        {
            // RadNotification1.Show("There was an error during the export operation. Try simplifying the content and removing images/lists.");
        }
    }

    protected void RadAsyncUpload1_FileUploaded(object sender, FileUploadedEventArgs e)
    {
        //the maximum allowed file inputs is one, so there should be no multiple files uploaded

        //see what is the uploaded file extension and attempt to import it accordingly
        try
        {
            string fileExt = e.File.GetExtension();
            switch (fileExt)
            {
                case ".doc":
                case ".docx":
                    RadEditor1.LoadDocxContent(e.File.InputStream);
                    break;
                case ".rtf":
                    RadEditor1.LoadRtfContent(e.File.InputStream);
                    break;
                case ".txt":
                case ".html":
                case ".htm":
                    using (StreamReader sr = new StreamReader(e.File.InputStream))
                    {
                        RadEditor1.Content = sr.ReadToEnd();
                    }
                    break;
                default:
                    //RadNotification1.Show("The selected file is invalid. Please upload an MS Word document with an extension .doc, .docx or .rtf, or a .txt/.html file with HTML content!");
                    break;
            }
        }
        catch (Exception ex)
        {
            //  RadNotification1.Show("There was an error during the import operation. Try simplifying the content.");
        }
    }
}
