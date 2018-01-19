using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Data;

public partial class ChangePasswd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\loginDatabase.mdf;Integrated Security=True");
        SqlDataAdapter sda = new SqlDataAdapter("select Passwd from login1 where Passwd='" + TextBox1.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1" )
        {
            
            if (TextBox2.Text.Length < 11 && TextBox2.Text.Length>0)
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update login1 set Passwd='" + TextBox3.Text + "'where Passwd='" + TextBox1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label4.Text = "Successfully Update";
                    Label4.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label4.Text = "Retry Conform Password ";
                    Label4.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Label4.Text = " New password length can't empty & less then 11 Character";
                Label4.ForeColor = System.Drawing.Color.Red;
                Label4.Font.Bold=true;
            }
        }
        else
            {
               Label4.Text = "Please Check your old password";
               Label4.ForeColor = System.Drawing.Color.Red;
            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home1.aspx");
    }


}

   