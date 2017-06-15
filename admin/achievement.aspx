<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achievement.aspx.cs" Inherits="admin_achievement" %>

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
    width:280px;
    float:left;
    padding:40px;	      
}
#section {
    width:200px;
    float:left;
    padding:10px;	 	 
}
    #footer {
        color: white;
        clear: both;
        text-align: center;
        padding: 0px;
    }
    <style type="text/css">

        .style2
        {
            text-align: center;
        }
        .style1
        {
            width: 279px;
        }
        .auto-style1 {
            width: 123px;
        }
        .auto-style2 {
        width: 153px;
        text-align: center;
    }
        .auto-style3 {
            width: 61%;
        }
        .auto-style4 {
        width: 123px;
        text-align: right;
    }
        .auto-style6 {
        left: 368px;
        top: 400px;
        width: 784px;
    }
    .auto-style7 {
        width: 102px;
    }
    .auto-style8 {
        width: 153px;
    }
    .auto-style9 {
        width: 123px;
        text-align: right;
        height: 33px;
    }
    .auto-style10 {
        width: 153px;
        text-align: center;
        height: 33px;
    }
    .auto-style11 {
        width: 102px;
        height: 33px;
    }
    .auto-style12 {
        font-size: x-large;
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
   
    
  <div id="section"class="pos_abs" style="left: 604px; top: 400px; width: 466px; height: 280px">
    <form id="form1" runat="server" class="auto-style6" >
        <table class="auto-style3"style="text-align: center;">
            <tr >
                <td class="style2" colspan="3"align="center" style="font-size:30px;"><span class="auto-style12">职工工资信息录入</span><asp:Label ID="labMessage" runat="server" ForeColor="Red"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userInfoConnectionString %>" SelectCommand="SELECT [userZgh], [userXm] FROM [userInfo]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="姓名：" Font-Size="X-Large"></asp:Label>
                </td>
                <td class="auto-style2" >
                    <asp:DropDownList ID="ddlXtdZgh" runat="server"  DataSourceID="SqlDataSource1" DataTextField="userXm" DataValueField="userZgh">
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><asp:Label ID="Label2" runat="server" Text="发薪时间：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtAeFxsj" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAeFxsj" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAeFxsj" ErrorMessage="时间格式不对" ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="Label3" runat="server" Text="基本工资：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAeJbgz" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAeJbgz" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="Label4" runat="server" Text="奖金：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAeJj" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAeJj" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="Label5" runat="server" Text="加班费：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAeJbf" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAeJbf" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="总工资："></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAeZgz" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAeZgz" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td  align="center" class="auto-style8" >
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click1" style="font-size:17px;" Text="添加信息" Height="25px" Width="100px" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
  
    </form>
        </div>
  <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
