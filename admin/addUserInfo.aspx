<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addUserInfo.aspx.cs" Inherits="admin_addUserInfo" %>

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
</style><style type="text/css">
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
   
   <div id="section"class="pos_abs" style="left: 562px; top: 400px; width: 508px; height: 324px">
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userInfoConnectionString %>" DeleteCommand="DELETE FROM [userInfo] WHERE [userZgh] = @userZgh" InsertCommand="INSERT INTO [userInfo] ([userZgh], [userMm], [userSfzhm], [userXm], [userRzsj], [userSzbm], [userSfzz], [userJtdz], [userLxdh], [userBgqq]) VALUES (@userZgh, @userMm, @userSfzhm, @userXm, @userRzsj, @userSzbm, @userSfzz, @userJtdz, @userLxdh, @userBgqq)" SelectCommand="SELECT * FROM [userInfo]" UpdateCommand="UPDATE [userInfo] SET [userMm] = @userMm, [userSfzhm] = @userSfzhm, [userXm] = @userXm, [userRzsj] = @userRzsj, [userSzbm] = @userSzbm, [userSfzz] = @userSfzz, [userJtdz] = @userJtdz, [userLxdh] = @userLxdh, [userBgqq] = @userBgqq WHERE [userZgh] = @userZgh">
            <DeleteParameters>
                <asp:Parameter Name="userZgh" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userZgh" Type="String" />
                <asp:Parameter Name="userMm" Type="String" />
                <asp:Parameter Name="userSfzhm" Type="String" />
                <asp:Parameter Name="userXm" Type="String" />
                <asp:Parameter Name="userRzsj" Type="DateTime" />
                <asp:Parameter Name="userSzbm" Type="String" />
                <asp:Parameter Name="userSfzz" Type="Boolean" />
                <asp:Parameter Name="userJtdz" Type="String" />
                <asp:Parameter Name="userLxdh" Type="String" />
                <asp:Parameter Name="userBgqq" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userMm" Type="String" />
                <asp:Parameter Name="userSfzhm" Type="String" />
                <asp:Parameter Name="userXm" Type="String" />
                <asp:Parameter Name="userRzsj" Type="DateTime" />
                <asp:Parameter Name="userSzbm" Type="String" />
                <asp:Parameter Name="userSfzz" Type="Boolean" />
                <asp:Parameter Name="userJtdz" Type="String" />
                <asp:Parameter Name="userLxdh" Type="String" />
                <asp:Parameter Name="userBgqq" Type="String" />
                <asp:Parameter Name="userZgh" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="userZgh"  DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="606px" Height="314px" OnPageIndexChanging="FormView1_PageIndexChanging">
            <EditItemTemplate>
                userZgh:
                <asp:Label ID="userZghLabel1" runat="server" Text='<%# Eval("userZgh") %>' />
                <br />
                userMm:
                <asp:TextBox ID="userMmTextBox" runat="server" Text='<%# Bind("userMm") %>' />
                <br />
                userSfzhm:
                <asp:TextBox ID="userSfzhmTextBox" runat="server" Text='<%# Bind("userSfzhm") %>' />
                <br />
                userXm:
                <asp:TextBox ID="userXmTextBox" runat="server" Text='<%# Bind("userXm") %>' />
                <br />
                userRzsj:
                <asp:TextBox ID="userRzsjTextBox" runat="server" Text='<%# Bind("userRzsj") %>' />
                <br />
                userSzbm:
                <asp:TextBox ID="userSzbmTextBox" runat="server" Text='<%# Bind("userSzbm") %>' />
                <br />
                userSfzz:
                <asp:CheckBox ID="userSfzzCheckBox" runat="server" Checked='<%# Bind("userSfzz") %>' />
                <br />
                userJtdz:
                <asp:TextBox ID="userJtdzTextBox" runat="server" Text='<%# Bind("userJtdz") %>' />
                <br />
                userLxdh:
                <asp:TextBox ID="userLxdhTextBox" runat="server" Text='<%# Bind("userLxdh") %>' />
                <br />
                userBgqq:
                <asp:TextBox ID="userBgqqTextBox" runat="server" Text='<%# Bind("userBgqq") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate >
                <asp:Label ID="Label7" runat="server" Text="职  工  号:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="userZghTextBox" runat="server" Text='<%# Bind("userZgh") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userZghTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
               <asp:Label ID="Label6" runat="server" Text="密       码:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="userMmTextBox" runat="server" Text='<%# Bind("userMm") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="userXmTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="身份证号:" Font-Size="X-Large"></asp:Label></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="userSfzhmTextBox" runat="server" Text='<%# Bind("userSfzhm") %>' />
                <br />
               <asp:Label ID="Label4" runat="server" Text="姓       名:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="userXmTextBox" runat="server" Text='<%# Bind("userXm") %>' />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userXmTextBox" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="入职时间:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="userRzsjTextBox" runat="server" Text='<%# Bind("userRzsj") %>' />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="userRzsjTextBox" ErrorMessage="日期格式不正确" ForeColor="#FF3300" ValidationExpression="\d{4}-\d{2}-\d{2}"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="所在部门:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp; 
                <asp:TextBox ID="userSzbmTextBox" runat="server" Text='<%# Bind("userSzbm") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" Text="是否转正:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CheckBox ID="userSfzzCheckBox" runat="server" Checked='<%# Bind("userSfzz") %>' />
                <br />
               <asp:Label ID="Label8" runat="server" Text="家庭住址:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="userJtdzTextBox" runat="server" Text='<%# Bind("userJtdz") %>' />
                <br />
                <asp:Label ID="Label9" runat="server" Text="联系电话:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="userLxdhTextBox" runat="server" Text='<%# Bind("userLxdh") %>' />
                <br />
                <asp:Label ID="Label10" runat="server" Text="变更请求:" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="userBgqqTextBox" runat="server" Text='<%# Bind("userBgqq") %>' />
                <br />
                <br />
                <br />
                <asp:LinkButton ID="InsertButton" Style="color: DodgerBlue;" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" Font-Size="X-Large"/>
                &nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                userZgh:
                <asp:Label ID="userZghLabel" runat="server" Text='<%# Eval("userZgh") %>' />
                <br />
                userMm:
                <asp:Label ID="userMmLabel" runat="server" Text='<%# Bind("userMm") %>' />
                <br />
                userSfzhm:
                <asp:Label ID="userSfzhmLabel" runat="server" Text='<%# Bind("userSfzhm") %>' />
                <br />
                userXm:
                <asp:Label ID="userXmLabel" runat="server" Text='<%# Bind("userXm") %>' />
                <br />
                userRzsj:
                <asp:Label ID="userRzsjLabel" runat="server" Text='<%# Bind("userRzsj") %>' />
                <br />
                userSzbm:
                <asp:Label ID="userSzbmLabel" runat="server" Text='<%# Bind("userSzbm") %>' />
                <br />
                userSfzz:
                <asp:CheckBox ID="userSfzzCheckBox" runat="server" Checked='<%# Bind("userSfzz") %>' Enabled="false" />
                <br />
                userJtdz:
                <asp:Label ID="userJtdzLabel" runat="server" Text='<%# Bind("userJtdz") %>' />
                <br />
                userLxdh:
                <asp:Label ID="userLxdhLabel" runat="server" Text='<%# Bind("userLxdh") %>' />
                <br />
                userBgqq:
                <asp:Label ID="userBgqqLabel" runat="server" Text='<%# Bind("userBgqq") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
                 </div>
      <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
