using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //获得登陆控件的各个属性值
        string userZgh = Login1.UserName;
        string password = Login1.Password;
        //生成SQL语句和参数对象
        string sql = "select count(*) from userinfo where userZgh=@userzgh and userMm=@usermm";
        SqlParameter[] param ={
                             new SqlParameter("@userzgh",userZgh),
                             new SqlParameter("@usermm",password)
                             };
        //执行SQL语句
        int usercount = (int)sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,
            CommandType.Text, sql, param);
        //判断登陆成功
        if (usercount > 0)
        {
            Session["userZgh"] = userZgh;
            e.Authenticated = true;

        }
        else
            e.Authenticated = false;
    }
}