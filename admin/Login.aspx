<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>公司职员信息管理系统</title>
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
    .auto-style2 {
        height: 157px;
        width: 522px;
    }
    .auto-style6 {
        width: 192px;
    }
    .auto-style7 {
        height: 18px;
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

<div id="nav" class="leftbg" style="height: 475px" >
   
公司简介<br/>
<p>公司名称：双龙山有一群怀揣着梦想的少年相信在冬哥的带领下会创造生命的奇迹网络科技有限公司。</p>
    <p>公司类型：有限责任公司（自然人投资或控股）</p>
     <p>公司地址：山东省济南市大学路一号双龙山某知名山头</p>
    <p>经营范围：详情咨询冬哥（联系电话178XXXX0345） 冬哥带你走上人生巅峰。    </p>
    
</div>

<div id="section"class="pos_abs" style="left: 620px; top: 380px; width: 530px; height: 261px;">
   
    <form id="form1" runat="server">
    <div>
     <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/admin/default.aspx" FailureText="用户名或密码不正确。请重试。" OnAuthenticate="Login1_Authenticate" PasswordRequiredErrorMessage="“密码”不能为空。" TitleText="管理员登录" UserNameRequiredErrorMessage="“用户名”不能为空。" Width="40px" Height="181px">
         <LayoutTemplate>
             <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                 <tr>
                     <td>
                         <table cellpadding="0" class="auto-style2">
                             <tr>
                                 <td align="center" colspan="2" style="font-size:30px;">管理员登录</td>
                             </tr>
                             <tr>
                                 <td align="right" class="auto-style6" >
                                     <img alt="1.1" src="../image/1.1.png" width="45px" height="45px" />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="UserName" runat="server" Width="143px" Height="22px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="“用户名”不能为空。" ToolTip="“用户名”不能为空。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" class="auto-style6">
                                     <img alt="1.2" src="../image/1.2.png" width="45px" height="45px" />
                                 </td>
                                 <td>
                                     <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="143px" Height="21px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="“密码”不能为空。" ToolTip="“密码”不能为空。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center"  colspan="2">
                                     <asp:CheckBox ID="RememberMe" runat="server" Text="下次记住我。" />
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" colspan="2" style="color:Red;" class="auto-style7">
                                     <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="right" style="text-align: center;"colspan="2">
                                     <asp:Button ID="LoginButton" runat="server" CommandName="Login" Height="35px" Text="登录" ValidationGroup="Login1" Width="67px" Font-Size="X-Large" />
                                 </td>
                             </tr>
                         </table>
                     </td>
                 </tr>
             </table>
         </LayoutTemplate>
        </asp:Login>
    
    </div>
    </form>
    </div>
       <div id="footer">
    <p class="dibg" style="color:black;" >公司职员信息管理系统</p>
</div>
</body>
</html>
