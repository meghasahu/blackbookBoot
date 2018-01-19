using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Net.Configuration;
public partial class loginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\loginDatabase.mdf;Integrated Security=True");

            con.Open();

            string uid = user.Text;
            string pass = passwd.Text;
            string qry = "select * from login1 where Uname='" + uid + "' and Passwd='" + pass + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter sda =new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            if (dt.Rows.Count>0)
            {
               
                Response.Redirect("Home1.aspx");
            }
            else
            {
                Label.Text = "You're username and password is incorrect";
                Label.ForeColor = System.Drawing.Color.Red;

            }

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        //Label5.Text = SendMail(temail.Text);
    }




    protected void user_TextChanged(object sender, EventArgs e)
    {

    }
}