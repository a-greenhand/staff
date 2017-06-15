using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_achievement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["adminuser"] == null || Session["adminuser"].ToString().Length == 0)
            Response.Redirect("login.aspx");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
    }


    protected void btnAdd_Click1(object sender, EventArgs e)
    {
        string userZgh = ddlXtdZgh.SelectedValue;
        string aeFxsj = txtAeFxsj.Text;
        string aeJbgz = txtAeJbgz.Text;
        string aeJj = txtAeJj.Text;
        string aeJbf = txtAeJbf.Text;
        string aeZgz = txtAeZgz.Text;
        string sql = "select count(*) from achievement where userZgh=@userZgh and aeFxsj=@aeFxsj";
        SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@userZgh",SqlDbType.Char),
                    new SqlParameter("@aeFxsj",SqlDbType.DateTime)
                    };
        param[0].Value = userZgh;
        param[1].Value = aeFxsj;
        int aetcount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction,
            CommandType.Text, sql, param)));
        if (aetcount <= 0)
        {
            string insertSql = "insert into achievement(userZgh,aeFxsj,aeJbgz,aeJj,aeJbf,aeZgz) values(@userZgh,@aeFxsj,@aeJbgz,@aeJj,@aeJbf,@aeZgz)";
            SqlParameter[] insertParam = new SqlParameter[]{
                    new SqlParameter("@userZgh",SqlDbType.Char),
                    new SqlParameter("@aeFxsj",SqlDbType.DateTime),
                    new SqlParameter("@aeJbgz",SqlDbType.Float),
                    new SqlParameter("@aeJj",SqlDbType.Float),
                    new SqlParameter("@aeJbf",SqlDbType.Float),
                    new SqlParameter("@aeZgz",SqlDbType.Float)
                    };
            insertParam[0].Value = userZgh;
            insertParam[1].Value = aeFxsj;
            insertParam[2].Value = aeJbgz;
            insertParam[3].Value = aeJj;
            insertParam[4].Value = aeJbf;
            insertParam[5].Value = aeZgz;
            if (sqlHelp.ExecuteNonQuery(sqlHelp.ConnectionStringLocalTransaction,
                 CommandType.Text, insertSql, insertParam) > 0)
            {
                labMessage.Text = "添加信息成功";
            }
            else
            {
                labMessage.Text = "操作错误";
            }
        }
        else
        {
            labMessage.Text = "职工号为【" + userZgh + "】的职员 【" + aeFxsj + "】时间的工资信息已经录入！";
        }
    }

}