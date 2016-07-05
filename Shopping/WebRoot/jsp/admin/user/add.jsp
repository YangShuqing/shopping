<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="public/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="jsp/ueditor/lang/zh-cn/zh-cn.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action="user.do?a=save" method="POST">

<table width="300" border="0" align="left">
<tr >
	<td colspan="2" align="center">
	<h2>添加用户</h2>
	</td>
</tr>
<tr>
	<td align="right">用户名:</td>
	<td><input name="username"/></td>
</tr>
<tr>
	<td align="right">密码:</td>
	<td><input name="password"/></td>
</tr>
<tr>
	<td align="right">用户角色:</td>
	<td>
	<select name="role">
		<option value="0">请选择...</option>
		<c:forEach items="${roleList}" var="r">
			<option value="${r.id}">${r.rolename}</option>
		</c:forEach>
	</select>
	</td>
</tr>

<tr>
	<td></td>
	<td><input type="submit" value="添加商品"/></td>
</tr>
</table>
</form>

<script type="text/javascript">

</script>

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');
    
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
  	
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
   
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
   
   //单独调用图片上传模块
     //实例化编辑器
      var o_ueditorupload = UE.getEditor('j_ueditorupload',
      {
        autoHeightEnabled:false
      });
      o_ueditorupload.ready(function ()
      {
     
    o_ueditorupload.hide();//隐藏编辑器
     
    //监听图片上传
    o_ueditorupload.addListener('beforeInsertImage', function (t,arg)
    {
    	var pic= "";
         // alert('这是图片地址：'+arg[0].src);
          for(i=0;i<arg.length;i++){
          	pic = pic + "," + arg[i].src;
          }
          
          $("#goodspic").attr("value", pic);
    });
     
    /* 文件上传监听
     * 需要在ueditor.all.min.js文件中找到
     * d.execCommand("insertHtml",l)
     * 之后插入d.fireEvent('afterUpfile',b)
     */
        o_ueditorupload.addListener('afterUpfile', function (t, arg)
        {
          alert('这是文件地址：'+arg[0].url);
        });
      });
       
      //弹出图片上传的对话框
      function upImage()
      {
        var myImage = o_ueditorupload.getDialog("insertimage");
        myImage.open();
      }
      //弹出文件上传的对话框
      function upFiles()
      {
        var myFiles = o_ueditorupload.getDialog("attachment");
        myFiles.open();
      } 
</script>
</body>
</html>