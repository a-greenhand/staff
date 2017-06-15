<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showSource.aspx.cs" Inherits="showSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>职员信息管理系统</title>
    <style type="text/css">
        body{ 
        background-image:url("image/biaoge.jpg");
        background-size:100% auto;
    }
        </style>
 <style type="text/css">
    h1.topbg {background-image: url("image/timg.jpg"); padding:70px 0;margin:0px; }
    p.topbg1 {background-image: url("image/timgxia.jpg"); padding:5px 0;margin:0px;word-spacing: 30px; }
      p.dibg {background-image: url("image/timg.jpg"); padding:5px 0;margin:0px;} 
  div.leftbg {background-image: url("image/leftbg.jpg"); padding:20px 0;margin:0px;} 
</style>
   <style type="text/css">
       div.pos_abs
{
position:absolute;
background-image: url("image/biaoge.jpg"); 
}
</style>
<style>
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
    width:450px;
    float:left;
    padding:10px;	 	 
}
#footer {

    color:white;
    clear:both;
    text-align:center;
   padding:15px;	 	 
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

<div id="nav" class="leftbg" style=" height: 400px; text-align:center;font-size:24px;" >
    <br/>
    <br/>
 <br/> <a href="showSource.aspx" style="color:DodgerBlue ;">查询信息</a>
    <br/>
 <br/> <a href="modifyInfo.aspx" style="color:DodgerBlue;" >修改信息</a>
    <br/>
 <br/> <a href="shouye.aspx" style="color:DodgerBlue;" >返回登录</a>   
  
</div>
   
<div id="section"class="pos_abs" style="left: 620px; top: 300px; width: 600px; height: 280px;">
    <div>
    <form id="form1" runat="server" style="text-align: center; font-size: x-large;">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="aeid" DataSourceID="SqlDataSource1" Width="595px">
            <Columns>
                <asp:BoundField DataField="userZgh" HeaderText="职工号" SortExpression="userZgh" />
                <asp:BoundField DataField="aeFxsj" HeaderText="发薪时间" SortExpression="aeFxsj" DataFormatString="{0:yyyy-MM-dd}" />
                <asp:BoundField DataField="aeJbgz" HeaderText="基本工资" SortExpression="aeJbgz" />
                <asp:BoundField DataField="aeJj" HeaderText="奖金" SortExpression="aeJj" />
                <asp:BoundField DataField="aeJbf" HeaderText="加班费" SortExpression="aeJbf" />
                <asp:BoundField DataField="aeZgz" HeaderText="总工资" SortExpression="aeZgz" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userInfoConnectionString %>" SelectCommand="SELECT * FROM [achievement] WHERE ([userZgh] = @userZgh)">
            <SelectParameters>
                <asp:SessionParameter Name="userZgh" SessionField="userZgh" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#666666" PostBackUrl="ModifyInfo.aspx">修改个人信息</asp:LinkButton>
    </form>
        </div>
     </div>
    <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
