<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shouye.aspx.cs" Inherits="first" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>公司职员信息管理系统</title>
    <style type="text/css">
        body{ 
        background-image:url("image/bg2.jpg");
        background-size:100% auto;
    }
        div.pos_abs{
        position:absolute;
        left:30%;
        top:85%;
        }
        div.pos_abz{
        position:absolute;
        left:63%;
        top:85%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="pos_abs">
        <asp:Button ID="Button1" runat="server" Text="职员登录" OnClick="Button1_Click" BackColor="#c2cee4" BorderWidth="0" Font-Underline="true" Font-Size="X-Large" />
    </div>
    <div class="pos_abz">
        <asp:Button ID="Button2" runat="server" Text="管理员登录"  BackColor="#cad9ee" BorderWidth="0" Font-Underline="true" Font-Size="X-Large" OnClick="Button2_Click"/>
    </div>
    </form>
</body>
</html>
