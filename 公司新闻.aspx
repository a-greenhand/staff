<%@ Page Language="C#" AutoEventWireup="true" CodeFile="公司新闻.aspx.cs" Inherits="公司新闻" %>

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
        <h2>公司新闻</h2>
         <h3>1、互联网视频新闻发展：融合、内容、技术</h3>
         <p>&nbsp;&nbsp;&nbsp; 联合与互融，是第一财经商业数据中心(CBNData)作为互联网消费大数据研究的领军者，对待大数据价值挖掘一直以来所持有的态度。根据CBNData去年底发布的首份《2016中国互联网消费生态大数据报告》显示，在以消费者需求为核心要素的驱动下，中国的互联网消费，也越来越多地呈现出融合发展的趋势。</p>
         <h3>2、互联网+教育，借助科技龙头改变行业格局</h3>
         &nbsp;&nbsp;互联网先进技术的引用，不仅在于信息沟通方面提供了更高效的管理模式，同时，通过大数据的收集，可以从多个角度对学生进行测评而不仅仅是依靠分数。<br />
         <h3>3第二届中国大数据国际峰会2017</h3>
     </div>
   
    
     </div>
    <div id="footer">
    <p class="dibg" style="color:black;" >公司职员信息管理系统</p>
</div>
</body>
</html>
