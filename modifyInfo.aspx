<%@ Page Language="C#" AutoEventWireup="true" CodeFile="modifyInfo.aspx.cs" Inherits="modifyInfo" %>

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
  div.leftbg {background-image: url("image/modifileftbg.jpg"); padding:20px 0;margin:0px;} 
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
    height:450px;
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
    <style type="text/css">
        .auto-style1 {
            height: 10px;
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            position:absolute;
            left:100px;
            /*text-align: center;
            width: 245px;*/
        }
        .auto-style4 {
            width: 98%;
        }
        .auto-style5 {
             
            width: 168px;
        }
        .auto-style7 {
            width: 168px;
           height: 19px;
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

<div id="nav" class="leftbg" style=" height: 530px; text-align:center;font-size:24px;" >
    <br/>
    <br/>
 <br/> <a href="showSource.aspx" style="color:DodgerBlue ;">查询信息</a>
    <br/>
 <br/> <a href="modifyInfo.aspx" style="color:DodgerBlue;" >修改信息</a>
    <br/>
 <br/> <a href="shouye.aspx" style="color:DodgerBlue;" >返回登录</a>   
  
</div>
   
<div id="section"class="pos_abs" style="left: 620px; top: 300px; width: 420px; height: 280px;">
    <div>
    <form id="form1" runat="server" style="text-align: center;">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userInfoConnectionString %>" SelectCommand="SELECT * FROM [userInfo] WHERE ([userZgh] = @userZgh)">
            <SelectParameters>
                <asp:SessionParameter Name="userZgh" SessionField="userZgh" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="userZgh" DataSourceID="SqlDataSource1" Height="50px" Width="416px" Font-Size="X-Large" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <Fields>
                <asp:BoundField DataField="userZgh" HeaderText="职工号" ReadOnly="True" SortExpression="userZgh" />
                <asp:BoundField DataField="userSfzhm" HeaderText="身份证号码" SortExpression="userSfzhm" />
                <asp:BoundField DataField="userXm" HeaderText="姓名" SortExpression="userXm" />
                <asp:BoundField DataField="userRzsj" DataFormatString="{0:yyyy-MM-dd}" HeaderText="入职时间" SortExpression="userRzsj" />
                <asp:BoundField DataField="userSzbm" HeaderText="所在部门" SortExpression="userSzbm" />
                <asp:CheckBoxField DataField="userSfzz" HeaderText="是否转正" SortExpression="userSfzz" />
                <asp:BoundField DataField="userJtdz" HeaderText="家庭地址" SortExpression="userJtdz" />
                <asp:BoundField DataField="userLxdh" HeaderText="联系电话" SortExpression="userLxdh" />
                <asp:BoundField DataField="userBgqq" HeaderText="请求变更" SortExpression="userBgqq" />
            </Fields>
        </asp:DetailsView>
      <div>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="userZgh" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdating="FormView1_ItemUpdating" OnPageIndexChanging="FormView1_PageIndexChanging" Width="431px" Font-Size="X-Large">
                <EditItemTemplate >
                 <tr> 
                   <td>变更请求:</td>
                   <td> <asp:TextBox ID="userBgqqTextBox" runat="server"  Text='<%# Bind("userBgqq") %>' TextMode="MultiLine" Width="200px" Height="40px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userBgqqTextBox" ErrorMessage="变更请求不能为空">*</asp:RequiredFieldValidator>
                    </td>
                  </tr>
                    <tr>
                      <td align="right">  <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Style="color: DodgerBlue;" Text="更新" /></td>
                        <td align="center" ><asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Style="color: DodgerBlue;" Text="取消" /></td>
                    </tr>               
                </EditItemTemplate>
                <InsertItemTemplate>
                    userZgh:
                    <asp:TextBox ID="userZghTextBox" runat="server" Text='<%# Bind("userZgh") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
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

                </ItemTemplate>
            </asp:FormView>
            <div>
                <table class="pos_abs" style=" width: 420px; height: 100px;">
                    <tr>
                        <td class="auto-style1" colspan="2"><asp:Label ID="lblError" runat="server" ForeColor="Black" Font-Size="X-Large">密码修改</asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="font-size: x-large">旧密码：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtOldPWD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOldPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="font-size: x-large">新密码：</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtNewPWD" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOldPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="font-size: x-large">确认密码：</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtRNewPWD" runat="server" Height="19px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRNewPWD" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPWD" ControlToValidate="txtRNewPWD" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Button ID="btnModify" runat="server" OnClick="btnModify_Click" Text="修改密码" Font-Size="X-Large" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
        </div>
    </div>
    <div id="footer">
    <p class="dibg" style="color:black;">公司职员信息管理系统</p>
</div>
</body>
</html>
