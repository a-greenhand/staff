<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyAdminPassword.aspx.cs" Inherits="admin_modifyAdminPassword" %>

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
  
    color:white;
    clear:both;
    text-align:center;
    padding:0px;
    
}
    .auto-style1 {
        height: 156px;
        width: 374px;
    }
</style>
    <style type="text/css">

        .auto-style4 {
            width: 100%;
            height: 186px;
        }
        .auto-style1 {
            height: 20px;
            text-align: center;
        }
        .auto-style3 {
            text-align: center;
            width: 135px;
        }
        .auto-style5 {
            width: 168px;
        }
        .auto-style2 {
            text-align: center;
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
   
    
  <div id="section"class="pos_abs" style="left: 650px; top: 400px; width: 420px; height: 280px">
    <form id="form1" runat="server">
    <div>
    
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style1" colspan="2"><asp:Label ID="lblError" runat="server" style="font-size:30px;"  ForeColor="Black">密码修改</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="旧密码：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtOldPWD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOldPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="新密码：" Font-Size="X-Large"></asp:Label>&nbsp;</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtNewPWD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOldPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="确认密码："></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtRNewPWD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRNewPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPWD" ControlToValidate="txtRNewPWD" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2"  >
                            <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" style="font-size:17px;" Text="修改密码" Height="26px" Width="83px" />
                        </td>
                    </tr>
                </table>
    
    </div>
    </form>
        </div>
     <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
