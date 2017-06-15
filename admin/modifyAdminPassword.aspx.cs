using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_modifyAdminPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
            Response.Redirect("login.aspx");
    }

    protected void btnModify_Click(object sender, EventArgs e)
    {
        string oldpwd = txtOldPWD.Text.Replace("'", "");
        string newpwd = txtNewPWD.Text.Replace("'", "");
        string adminuser = (string)Session["adminuser"];
        //查询数据库，验证 
        string selectsql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                             new SqlParameter("@adminuser",adminuser),
                             new SqlParameter("@adminpass",oldpwd)
                             };
        //执行SQL语句
        int usercount = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,
            CommandType.Text, selectsql, param);
        //判断登陆成功
        if (usercount > 0)
        {
            string updatesql = "update administrator set adminpass=@adminpass where adminuser=@adminuser";
            SqlParameter[] updateparam = {
                                           new SqlParameter("@adminuser",adminuser),
                                           new SqlParameter("@adminpass",newpwd)
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
}