using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Text;
using System.Text.RegularExpressions;
using System.Configuration;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {    
        if (!IsPostBack)
        {
            //Displaying the Data  
            showData();
            //Adding an Attribute to Server Control(i.e. btnDeleteRecord)  
            Button2.Attributes.Add("onclick", "javascript:return DeleteConfirm()");
        }
    }

    //Method for Displaying Data  
    protected void showData()
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        con.Open();
        SqlDataAdapter adapt = new SqlDataAdapter("select * from student", con);
   
        adapt.Fill(dt);
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    //Method for Deleting Record  
    protected void DeleteRecord(int rollno)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        SqlCommand com = new SqlCommand("delete from student where rollno=@rollno", con);
        com.Parameters.AddWithValue("@rollno", rollno);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow grow in GridView1.Rows)
        {
            //Searching CheckBox("chkDel") in an individual row of Grid  
            CheckBox chkdel = (CheckBox)grow.FindControl("chkDel");
            //If CheckBox is checked than delete the record with particular empid  
            if (chkdel.Checked)
            {
                int rollno = Convert.ToInt32(grow.Cells[1].Text);
                DeleteRecord(rollno);
            }
        }
        //Displaying the Data in GridView  
        showData();

    }



    //****** search bar********
    protected void Search(object sender, EventArgs e)
    {
        this.BindGrid();
    }

    private void BindGrid()
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        con.Open();
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT * FROM student WHERE fname LIKE '%' + @fname + '%'";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@fname", TextBox1.Text.Trim());
                DataTable dt = new DataTable();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

    }

    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[2].Text = Regex.Replace(e.Row.Cells[2].Text, TextBox1.Text.Trim(), delegate (Match match)
            {
                return string.Format("<span style = 'background-color:#D9EDF7'>{0}</span>", match.Value);
            }, RegexOptions.IgnoreCase);
        }
    }
    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        //NewEditIndex property used to determine the index of the row being edited.  
        GridView1.EditIndex = e.NewEditIndex;
        showData();
    }

    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        Label rollno1 = GridView1.Rows[e.RowIndex].FindControl("lbl_rollno") as Label;
        TextBox fname1 = GridView1.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
        TextBox username1 = GridView1.Rows[e.RowIndex].FindControl("txt_username") as TextBox;
        TextBox password1 = GridView1.Rows[e.RowIndex].FindControl("txt_password") as TextBox;
        TextBox phoneno1 = GridView1.Rows[e.RowIndex].FindControl("txt_phoneno") as TextBox;
        TextBox email1 = GridView1.Rows[e.RowIndex].FindControl("txt_email") as TextBox;
        TextBox projecttype1 = GridView1.Rows[e.RowIndex].FindControl("txt_projecttype") as TextBox;
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update student set fname='" + fname1.Text + "',username='" + username1.Text + "',password='" + password1.Text + "',phoneno='" + phoneno1.Text + "',email='" + email1.Text + "',projecttype='" + projecttype1.Text + "' where rollno='" +Convert.ToInt32(rollno1.Text) + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //Call ShowData method for displaying updated data  
        showData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        showData();
    }









    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
            con.Open();
            string checkuser = "select count(*) from student where username='" + TextBox3.Text + "'";
            SqlCommand cmd1 = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Label3.Text = "*UserName already exists. ";
                Label3.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into student" + "(rollno,fname,username,password,phoneno,email,projecttype) values (@rollno,@fname, @username, @password,@phoneno, @email,@projecttype)", con);
                cmd.Parameters.AddWithValue("@rollno", TextBox2.Text);
                cmd.Parameters.AddWithValue("@fname", TextBox3.Text);
                cmd.Parameters.AddWithValue("@username", TextBox4.Text);
                cmd.Parameters.AddWithValue("@password", TextBox5.Text);
                //  cmd.Parameters.AddWithValue("@cpassword", TextBox5.Text);
                cmd.Parameters.AddWithValue("@phoneno", TextBox6.Text);
                cmd.Parameters.AddWithValue("@email", TextBox7.Text);
                cmd.Parameters.AddWithValue("@projecttype", TextBox8.Text);
                cmd.ExecuteNonQuery();
                Label3.Text = "Sing up successfull";
                Label3.ForeColor = System.Drawing.Color.Green;

                Clear();
            }
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }

    }
    void Clear()
    {
        TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
    }


}
