using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class modifyInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }

    protected void FormView1_ItemUpdating(object sender, FormViewUpdateEventArgs e)
    {
        string userzgh = Session["userZgh"].ToString();
        String bgqq = ((TextBox)FormView1.FindControl("userBgqqTextBox")).Text;
        String sql = "update userinfo set userbgqq=@bgqq where userzgh=@userzgh";
        SqlParameter[] param ={
                             new SqlParameter("@userzgh",userzgh),
                             new SqlParameter("@bgqq",bgqq)
                             };
        sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param);
        Response.Redirect("modifyInfo.aspx");

    }

    protected void btnModify_Click(object sender, EventArgs e)
    {
        string oldpwd = txtOldPWD.Text.Replace("'", "");
        string newpwd = txtNewPWD.Text.Replace("'", "");
        string userzgh = Session["userZgh"].ToString();
        //查询数据库，验证 
        string selectsql = "select count(*) from userinfo where userZgh=@userzgh and userMm=@usermm";
        SqlParameter[] param ={
                             new SqlParameter("@userzgh",userzgh),
                             new SqlParameter("@usermm",oldpwd)
                             };
        //执行SQL语句
        int usercount = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,
            CommandType.Text, selectsql, param);
        //判断登陆成功
        if (usercount > 0)
        {
            string updatesql = "update userinfo set usermm=@usermm where userzgh=@userzgh";
            SqlParameter[] updateparam = {
                                           new SqlParameter("@userzgh",userzgh),
                                           new SqlParameter("@usermm",newpwd)
                                        };
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, updatesql, updateparam) > 0)
            {
                lblError.Text = "密码修改成功！";
            }
            else
            {
                lblError.Text = "密码修改失败！";
            }
        }
        else
        {
            lblError.Text = "旧密码输入错误！";
        }
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}