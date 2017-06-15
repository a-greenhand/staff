using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string adminuser = Login1.UserName.Replace("'", "");
        string adminpass = Login1.Password.Replace("'", "");
        //生成SQL语句和参数对象





        string sql = "select count(*) from administrator where adminuser=@adminuser and adminpass=@adminpass";
        SqlParameter[] param ={
                             new SqlParameter("@adminuser",SqlDbType.Char),
                             new SqlParameter("@adminpass",SqlDbType.VarChar)
                             };
        param[0].Value = adminuser;
        param[1].Value = adminpass;

        //执行SQL语句
        int usercount = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,
            CommandType.Text, sql, param);
        //判断登陆成功
        if (usercount > 0)
        {
            e.Authenticated = true;
            Session["adminuser"] = adminuser;
        }
        else
            e.Authenticated = false;
    }
}