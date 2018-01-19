using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            setImageUrl();
        }
        
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        setImageUrl();

    }

    private void setImageUrl()
    {
        Random ran = new Random();
        int i = ran.Next(1, 7);
        Image1.ImageUrl = "~/Imgs/" + i.ToString() + ".jpg";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("loginPage.aspx");

    }
}

