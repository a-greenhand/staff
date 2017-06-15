using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showSource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userZgh"] == null || Session["userZgh"].ToString().Length == 0)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Text = "职工号为：" + Session["userZgh"].ToString() + "的工资：";
        }

    }
}