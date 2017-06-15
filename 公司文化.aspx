<%@ Page Language="C#" AutoEventWireup="true" CodeFile="公司文化.aspx.cs" Inherits="公司文化" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>公司职员信息管理系统</title>
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
<style type="text/css">
#header {
 
    color:white;
    text-align:center;
    padding:0px;
}
#nav {
    line-height:30px;
    height:430px;
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

<div id="nav" class="leftbg" style="height: 475px" >
   
公司简介<br/>
<p>公司名称：双龙山有一群怀揣着梦想的少年相信在冬哥的带领下会创造生命的奇迹网络科技有限公司。</p>
    <p>公司类型：有限责任公司（自然人投资或控股）</p>
     <p>公司地址：山东省济南市大学路一号双龙山某知名山头</p>
    <p>经营范围：详情咨询冬哥（联系电话178XXXX0345） 冬哥带你走上人生巅峰。    </p>
    
</div>

<div id="section"class="pos_abs" style="left: 330px; top: 297px; width: 750px; height: 292px; margin-left: 29px;">
   
    
     <div>
        <h2>公司文化</h2>
         <h3>精 神</h3>
         &nbsp;&nbsp;&nbsp; 求实、进取、创新、服务
         <h3>愿 景</h3>
         &nbsp;&nbsp;&nbsp;打造中国最有实效的全媒体营销服务平台<br/>
         <br />
        &nbsp;&nbsp;&nbsp;成为中国企业家圈子首选的全媒体营销服务商<br />
         <h3>使 命</h3>
         &nbsp;&nbsp;&nbsp;成就客户价值 创造公司价值 实现个人价值<br />
     </div>
   
    
     </div>
    <div id="footer">
    <p class="dibg" style="color:black;" >公司职员信息管理系统</p>
</div>
</body>
</html>
