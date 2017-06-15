<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageUserInfo.aspx.cs" Inherits="admin_ManageUserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>职工信息管理系统</title>
    <style type="text/css">
        body{ 
        background-image:url("../image/biaoge.jpg");
        background-size:100% auto;
    }
        </style>
<style type="text/css">
    h1.topbg {background-image: url("../image/timg.jpg"); padding:70px 0;margin:0px; }
    p.topbg1 {background-image: url("../image/timgxia.jpg"); padding:5px 0;margin:0px;word-spacing: 30px; }
      p.dibg {background-image: url("../image/timg.jpg"); padding:5px 0;margin:0px;} 
  div.leftbg {background-image: url("../image/leftbg.jpg"); padding:20px 0;margin:0px;} 
</style>
    
        

  <style type="text/css">
       div.pos_abs
{
position:absolute;
background-image: url("../image/biaoge.jpg"); 
}
</style>
<style type="text/css">
#header {
 
    color:white;
    text-align:center;
    padding:0px;
}
#nav {
    line-height:30px;
    background-color:#eeeeee;
    height:400px;
    width:200px;
    float:left;
    padding:40px;	      
}
#section {
    width:200px;
    float:left;
    padding:10px;	 	 
}
#footer {
  
    color:white;
    clear:both;
    text-align:center;
    padding:0px;
    
}
    .auto-style1 {
        margin-left: 0px;
    }
</style>
</head>
<body>
   <div id="header">
<h1 class="topbg" style="color:black;font-family:宋体;font-weight:900;font-size:50px;"><strong>公 司 职 员 信 息 管 理 系 统</strong> </h1> 
    <table style="width:100%; background-image: url('image/timgxia.jpg');">
            <tr>
                <td><a href="公司新闻.aspx" style="color:DodgerBlue;" >公司新闻</a> </td>
                <td><a href="公司文化.aspx" style="color:DodgerBlue;" >公司文化</a> </td>
                <td><a href="shouye.aspx" style="color:DodgerBlue;" >公司章程</a> </td>
                <td><a href="shouye.aspx" style="color:DodgerBlue;" >公司业务</a> </td>
                <td><a href="shouye.aspx" style="color:DodgerBlue;" >联系方式</a> </td>
                <td><a href="shouye.aspx" style="color:DodgerBlue;" >返回首页</a> </td>
            </tr>
        </table>
</div>

<div id="nav" class="leftbg" style=" height: 501px; text-align:left;font-size:24px;" >
    <br/>
    <br/>
<br/><a href="ManageUserInfo.aspx"style="color:DodgerBlue ;" >职员信息管理</a>
    <br/>
<br/><a href="addUserInfo.aspx"  style="color:DodgerBlue ;" >职员信息添加</a>
    <br/>
<br/><a href="achievement.aspx"  style="color:DodgerBlue ;">职员工资信息添加</a>
    <br/>
<br/> <a href="modifyAdminPassword.aspx"  style="color:DodgerBlue ;">密码修改</a>  <br/>
<br/> <a href="/shouye.aspx"  style="color:DodgerBlue ;">返回登录</a>  <br/>
</div>
   
  <div id="section"class="pos_abs" style="left: 520px; top:400px; width: 900px; height: 300px">
    <form id="form1" runat="server" style="font-size: x-large">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userInfoConnectionString %>" DeleteCommand="DELETE FROM [userInfo] WHERE [userZgh] = @userZgh" InsertCommand="INSERT INTO [userInfo] ([userZgh], [userSfzhm], [userXm], [userRzsj], [userSzbm], [userSfzz], [userJtdz], [userBgqq], [userLxdh]) VALUES (@userZgh, @userSfzhm, @userXm, @userRzsj, @userSzbm, @userSfzz, @userJtdz, @userBgqq, @userLxdh)" SelectCommand="SELECT [userZgh], [userSfzhm], [userXm], [userRzsj], [userSzbm], [userSfzz], [userJtdz], [userBgqq], [userLxdh] FROM [userInfo]" UpdateCommand="UPDATE [userInfo] SET [userSfzhm] = @userSfzhm, [userXm] = @userXm, [userRzsj] = @userRzsj, [userSzbm] = @userSzbm, [userSfzz] = @userSfzz, [userJtdz] = @userJtdz, [userBgqq] = @userBgqq, [userLxdh] = @userLxdh WHERE [userZgh] = @userZgh">
            <DeleteParameters>
                <asp:Parameter Name="userZgh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userZgh" Type="String" />
                <asp:Parameter Name="userSfzhm" Type="String" />
                <asp:Parameter Name="userXm" Type="String" />
                <asp:Parameter Name="userRzsj" Type="DateTime" />
                <asp:Parameter Name="userSzbm" Type="String" />
                <asp:Parameter Name="userSfzz" Type="Boolean" />
                <asp:Parameter Name="userJtdz" Type="String" />
                <asp:Parameter Name="userBgqq" Type="String" />
                <asp:Parameter Name="userLxdh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userSfzhm" Type="String" />
                <asp:Parameter Name="userXm" Type="String" />
                <asp:Parameter Name="userRzsj" Type="DateTime" />
                <asp:Parameter Name="userSzbm" Type="String" />
                <asp:Parameter Name="userSfzz" Type="Boolean" />
                <asp:Parameter Name="userJtdz" Type="String" />
                <asp:Parameter Name="userBgqq" Type="String" />
                <asp:Parameter Name="userLxdh" Type="String" />
                <asp:Parameter Name="userZgh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="userZgh" DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="893px">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="userzgh" DataNavigateUrlFormatString="ModifyUserInfo.aspx?userzgh={0}" Text="修改" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="userXm" HeaderText="姓名" SortExpression="userXm" />
                <asp:BoundField DataField="userZgh" HeaderText="职工号" ReadOnly="True" SortExpression="userZgh" />
                <asp:BoundField DataField="userSfzhm" HeaderText="身份证号" SortExpression="userSfzhm" />
                <asp:BoundField DataField="userRzsj" DataFormatString="{0:yyyy-MM-dd}" HeaderText="入职时间" SortExpression="userRzsj" />
                <asp:BoundField DataField="userSzbm" HeaderText="所在部门" SortExpression="userSzbm" />
                <asp:CheckBoxField DataField="userSfzz" HeaderText="是否转正" SortExpression="userSfzz" />
                <asp:BoundField DataField="userJtdz" HeaderText="家庭地址" SortExpression="userJtdz" />
                <asp:BoundField DataField="userLxdh" HeaderText="联系电话" SortExpression="userLxdh" />
                <asp:BoundField DataField="userBgqq" HeaderText="变更请求" SortExpression="userBgqq" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
    </div>
       <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
