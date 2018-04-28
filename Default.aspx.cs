using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Windows.Documents.FormatProviders.OpenXml.Export;
using Telerik.Windows.Documents.Flow.Model;
using Telerik.Windows.Documents.Model;
using Telerik.Windows.Documents.Flow.FormatProviders.Docx;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.xml.simpleparser;


   public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //select the Home tab by default

            //DocxFormatProvider d = new DocxFormatProvider();
          //FileStream output = new FileStream("Docx.docx", FileMode.OpenOrCreate);


            //RadFlowDocument r = d.Import(output);

            using (FileStream initialFileStream = new FileStream(Server.MapPath("MYPROJECT.docx"), FileMode.Open, FileAccess.Read))
            {
                RadEditor1.LoadDocxContent(initialFileStream);
            }


           // RadEditor1.LoadDocxContent(r);

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

                      
                     

                        RadEditor1.ExportToPdf();
                        break;
                    case "SaveAsMarkdown":
                        RadEditor1.ExportToMarkdown();
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
                    case ".md":
                        using (StreamReader sr = new StreamReader(e.File.InputStream))
                        {
                            RadEditor1.Content = sr.ReadToEnd();
                            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "importMarkdownScript", "TelerikDemo.setMarkdownContent();", true);
                        }
                        break;
                    default:
                        //RadNotification1.Show("");
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('The selected file is invalid.Please upload an MS Word document with an extension.doc, .docx or.rtf, or a.txt .html file with HTML content!')", true);
                        break;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('There was an error during the import operation. Try simplifying the content.')", true);
            }
        }
    }