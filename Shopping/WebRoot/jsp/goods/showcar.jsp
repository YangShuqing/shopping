<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />
<link href="public/css/cart_v1.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="public/js/jquery-1.7.1.min.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="public/js/dd_belatedpng.js"></script>
<script>DD_belatedPNG.fix('*')</script>
<![endif]-->

</head>

<body>
	<!------------top---------------->
	<div class="top">
	    	<div class="top-c">
	        	<div class="top-left">
	            	<a href="javascript:;" class="collect">收藏</a>
	                <a href="javascript:;" class="wechat">微信</a>
	            </div>
	            <div class="top-right">
	            	<p>嗨，欢迎来到北航电子商城</p>
	            	<c:if test="${sessionScope.user.username==null}">
					 <p><a href="user.do?a=login">请登录</a> | <a href="user.do?a=register">免费注册</a></p>
					</c:if>
	          		<p><a href="#">${sessionScope.user.username}</a></p>
	                <p><a href="javascript:;">我的订单</a> | <a href="javascript:;">服务中心</a> | <a href="user.do?a=exit">退出</a> </p>
	            </div>
	        </div>
	    </div>
	<!------------header---------------->
	<div class="header">
    	<div class="logo"><a href="goods.do"><img src="public/picture/logo.png" width="190" /></a></div>
    		<div class="flow-step">
			<ul class="flow-step-3">
				<li class="s1">加入购物车</li>
				<li class="s2">下订单</li>
				<li class="s3">去付款</li>
				<li class="s4">确认收货</li>
				<li class="s5">评价</li>
			</ul>
		</div>
    </div>
	<div class="clr2"></div>
    <!------------main---------------->
	
	<!-- cart -->
	<div class="wrapper">        
        
                <form action="order.do?a=confirmOrder" method="post">
        <input type="hidden" name="buyType" value="2">
	<div class="cart-state mt">	
		<p>购物车状态<em>（1/30）</em></p>
		<div class="total"><input name="submitCart" type="submit" value="去结算"><span>总计（不含运费）：<em>￥</em><em class="total-cart-price">64</em></span></div>
	</div>            
	<div class="order-table mt20">
		<table width="100%">
			<tbody><tr>
				<th class="th-1"><label><input name="checkAllCart" type="checkbox" value="1" checked="">全选</label></th>
				<th class="th-2">所选商品</th>
				<th class="th-3">单价（元）</th>
				<th class="th-4">数量</th>
				<th class="th-5">优惠</th>
				<th class="th-6">小计（元）</th>
				<th class="th-7">操作</th>
			</tr>                              
                                       
			<tr id="merchant_191063">
				<td colspan="7" class=" store-infor clearfix">
					<div class="shopname"><input name="merchantId[]" type="checkbox" rel="forshop" value="191063" checked="">店铺：<a href="#" target="_blank">某东商城</a>
                                        </div>
                                        <div class="contact">
                                                                                        <a class="tag-security" style="margin: 0 -9px 0 0">&nbsp;</a>
                                                                                </div>        
					<div class="contact">
                                                                                        
                                        <a target="_blank" href="#"><img border="0" src="http://wpa.qq.com/pa?p=2:834898877:52" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
                                        					</div>
				</td>
			</tr>
			
			<c:forEach items="${sessionScope.shopcar}" var="g" varStatus="vs">	
							<tr rel="goods-order" id="cart_2224976" class="">
								<td colspan="2" class="s-infor"><input name="cartId[]"
									type="checkbox" value="2224976" item="item" rel="foritem"
									merchantid="191063" checked=""> <a
										href="goods"
										class="pic" target="_blank"><img width="80" height="60"
											src="${g.goodspic}"
											alt="${g.gname}">
									</a>
										<div class="inforbox">
											<h3 class="tit">
												<a
													href="goods.do?a=show&id=${g.id}"
													title="${g.gname}" target="_blank">${g.gname}</a>
											</h3>
											<div class="security clearfix">
												<a href="goods.do?a=show&id=${g.id}" title="7天退换货"
													class="security-a" target="_blank"></a>
											</div>

										</div>
								</td>
								<td class="s-price "><em class="s-old-price">${g.price+20}</em> <em>${g.price}</em>
									<em class="limit-price">省20元</em></td>
								<td class="s-amount ">
									<div class="buy-num">
										<a class="minus" href="javascript:void(0)" title="减一"
											onclick="$.updateCartnumber({cartId:&#39;2224976&#39;, maxNumber:&#39;42&#39;, updateType:&#39;minus&#39;, costNumber:&#39;1&#39;, merchantId:&#39;191063&#39;})">-</a>
										<input type="text" autocomplete="off" class="text-amount"
											value="1"
											onblur="$.updateCartnumber({cartId:&#39;2224976&#39;, maxNumber:&#39;42&#39;,updateType:&#39;change&#39;, costNumber:&#39;1&#39;, merchantId:&#39;191063&#39;})"
											id="cartNumber_2224976"> <a class="plus"
											href="javascript:void(0)" title="加一"
											onclick="$.updateCartnumber({cartId:&#39;2224976&#39;, maxNumber:&#39;42&#39;,updateType:&#39;plus&#39;, costNumber:&#39;1&#39;, merchantId:&#39;191063&#39;})">+</a>
											<div class="tips-2" id="tips_2224976" style="display:none;"></div>
									</div></td>
								<td class="s-agio">

									<div class="agio-limit">
										限时抢购
									</div></td>
								<td class="s-total"><em id="cartGoodsPcie_2224976">64</em>
								</td>
								<td class="s-del">
									<div class="s-delbox">
										<a href="javascript:void(0)" title="移入收藏夹"
											onclick="$.deleteCart({cartId:&#39;2224976&#39;, deleteType:&#39;collect&#39;})">移入收藏夹</a>
										<a href="goods.do?a=delcar&count=${vs.count}"
											onclick="$.deleteCart({cartId:&#39;2224976&#39;})">删除</a>
										<div class="deletebox" style="display:none;"
											id="zp-cart-2224976">
											<p>确认要删除该商品吗？</p>
											<a href="javascript:void(0)"
												onclick="$.deleteCart({cartId:&#39;2224976&#39;, deleteType:&#39;delete&#39;})">是的</a><a
												href="javascript:void(0)"
												onclick="$.closeDeleteCart({cartId:&#39;2224976&#39;})">取消</a>
											<i></i>
										</div>
									</div></td>
							</tr>
				
				</c:forEach>	
							
						</tbody></table>
		
		<div class="total-price">商品总价<span>（不含运费）</span>：<em>￥</em><em class="total-cart-price">64</em></div>
		
		<div class="order-foot clearfix">
			<label><input name="checkAllCart" type="checkbox" value="1" checked="">全选</label>
			<a href="javascript:void(0)" onclick="$.deleteAll()">批量删除</a>
                        			
			<a href="goods.do" class="go-shopping">&lt;&lt;继续购物</a>
			<input type="submit" value="去结算" name="submitCart" class="accounting-btn" >			
		</div>		
	</div>    
                </form>    
</div>


<script type="text/javascript">
//选中购物车物品样式切换
$("input[name='cartId[]']").click(function(){
    $.changeBackColor();
});

// 套装
$(".info-con").mouseover(function(){
    $(this).addClass("info-con-hover");
}).mouseleave(function(){
    $(this).removeClass("info-con-hover");
});         

$("input[type=checkbox][name != 'checkAllCart']").click(function(){     
    var rel        = $(this).attr("rel");
    var merchantId = 0;
    if ($(this).is(":checked")){        
        $("input[name=submitCart]").attr("disabled", false);        
        if ('forshop' == rel){
            merchantId = $(this).val();
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    $(this).get(0).checked = true;
                }
            });
        }
        
        if ('foritem' == rel){
            merchantId = $(this).attr('merchantId');
            var merchantflag = true;
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    if (!$(this).is(":checked")){
                        merchantflag = false;
                    }
                }
            });
            
            if (merchantflag){                
                $("input[rel=forshop]").each(function(){
                    if (merchantId == $(this).val()){
                        $(this).get(0).checked = true;
                    }
                });
            }
        }       
        $.getCartInfo();
    }else{
        if ('forshop' == rel){
            merchantId = $(this).val();
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    $(this).get(0).checked = false;
                }
            });
        }   
        if ('foritem' == rel){
            merchantId = $(this).attr('merchantId');            
            $("input[rel=forshop]").each(function(){                
                if (merchantId == $(this).val()){
                    $(this).get(0).checked = false;
                }
            });
        }    
        $.getCartInfo();
    }
    $.changeBackColor();
});
 
// 全选
$("input[name=checkAllCart]").click(function(){
    var cartIdArr = new Array();
    if ($(this).is(":checked")){
        $("input[type=checkbox]").each(function(){
            if (!$(this).is(":checked")){
                $(this).get(0).checked = true;
            }
            if ('item' == $(this).attr("item")){
                cartId = parseInt($(this).val());
                if (cartId){
                    cartIdArr.push(cartId);
                }
            }
        });        
        $.getCartInfo();
    }else{
        $("input[type=checkbox]").each(function(){
            if ($(this).is(":checked")){
                $(this).get(0).checked = false;
            }
        });  
        $(".total-cart-price").html("0");
        $("input[name=submitCart]").attr("disabled", "true");        
    }
    $.changeBackColor();
});
// 显示更多链接
$("#show_more_link").toggle(function(){
        $(".cbsi_zh > p").show();
        $(this).html("收起").attr("class", "more_hov");
}, function(){
        $(".cbsi_zh > p:gt(0)").hide();
        $(this).html("更多").attr("class", "more");		
});

$(".agio-limit").mouseover(function(){
    $(this).children("div").show();
}).mouseleave(function(){
    $(this).children("div").hide();
})
$(function($){
    //遍历处理商品的背景颜色
    $.extend({
        changeBackColor:function(){
            $("input[name='cartId[]']").each(function(){
                var isChecked   = $(this).is(":checked");
                var cartVal     = $(this).val();
                if(isChecked){
                    $("#cart_"+cartVal).removeClass("other");
                }else{
                    $("#cart_"+cartVal).addClass("other");
                } 
            });
        }
    });
    $.changeBackColor();
    
    //获得购物车信息
    $.extend({
        getCartInfo:function(){
            var cartIdArr = new Array();
            var cartIdStr = '';
            var cartId    = 0; 
            var rel       = '';
            $("input[type=checkbox]").each(function(){     
                rel = $(this).attr("rel");
                if (('foritem' == rel) && $(this).is(":checked")){
                    cartId = parseInt($(this).val());
                    if (cartId){
                        cartIdArr.push(cartId);
                    }                    
                }
            });  
            if (cartIdArr.length){
                 cartIdStr = cartIdArr.join(",");
            }
            //更新数量
            var url = "index.php?c=Ajax_ShopCart&a=UpdateCartNumber&callback=?&t="+Math.random();
             $.getJSON(
                url,
                {cartIdStr:cartIdStr, goodsNumber:0, operate:0},            
                function(data){
                    if (data.flag){
                        $(".total-cart-price").html(data.totalCartPrice);                    
                        $("input[name=submitCart]").attr("disabled", false);
                    }
                }
             );              
        }
    });
    
    // 修改购物车数量 
    $.extend({
       updateCartnumber:function(options){
        var defaults = {    
           cartId     : 0,    
           merchantId : 0,
           maxNumber  : 0,
           costNumber : 0,
           updateType : 'plus'           
         };            
         var options     = $.extend(defaults, options);
         var cartId      = defaults.cartId;
         var merchantId  = defaults.merchantId;
         var costNumber  = defaults.costNumber;
         var maxNumber   = defaults.maxNumber;
         var updateType  = defaults.updateType;         
         var goodsNumber = $("#cartNumber_"+cartId).val();
             goodsNumber = parseInt(goodsNumber);
        if ((isNaN(goodsNumber))||(goodsNumber <= 0)){
            $("#cartNumber_"+cartId).val(costNumber);                 
            return false;
        }        
        
             
         // 更新商品类型
         switch(updateType){
             case 'plus':
                 goodsNumber++
                 break;
             case 'minus':
                 goodsNumber-- 
                 break;             
         }
                 
         if (!goodsNumber){
             goodsNumber = 1;
         }                 
         if ((1 == costNumber) && (1 == goodsNumber)){
             //return false;
         }
         if (goodsNumber > maxNumber){
             goodsNumber = maxNumber;             
             $("#tips_"+cartId).html("最多只能购买" + maxNumber + "件").show();
         }else{
             $("#tips_"+cartId).hide();
         }                  
         $("#cartNumber_"+cartId).val(goodsNumber);         
         
        var cartIdStr = "";        
        var cartIdArr = new Array();
        $("input[item=item]").each(function(){                      
            if (this.checked){
                cartIdArr.push($(this).val());
            }
        });
        if (cartIdArr.length){
            cartIdStr = cartIdArr.join(",");
        }   
        var noChecked = false;
        if ('' == cartIdStr){
            noChecked = true;
        }
        var url = "index.php?c=Ajax_ShopCart&a=UpdateCartNumber&callback=?&t="+Math.random();
         $.getJSON(
            url,
            {cartIdStr:cartIdStr, goodsNumber:goodsNumber, operate:cartId},            
            function(data){
                if (data.flag){
                    if (!noChecked){
                        $(".total-cart-price").html(data.totalCartPrice);
                    }
                                        
                    $("#cartGoodsPcie_"+cartId).html(data.totalGoodsPrice);
                }else{
                    alert(data.msg);
                }
            }
         );
       } 
    });
    
    // 删除购物
    $.extend({
        deleteCart:function(options){
            var defaults = {    
               cartId     : 0,                   
               deleteType : ''           
            };             
            var options     = $.extend(defaults, options);
            var cartId     = defaults.cartId;            
            var deleteType = defaults.deleteType;
            var cartIdStr  = '';
//            var conf = confirm("您确实要删除该商品吗?");
//            if (!conf){
//                return false;
//            }
            if ('' == deleteType){
                $("#zp-cart-"+cartId).show();
                return false;                
            }

            var cartIdArr  = new Array();
            $("input[item=item]").each(function(){            
                if (this.checked){
                    cartIdArr.push($(this).val());
                }
            });              
            cartIdStr = cartIdArr.join(",");
            //删除
            var url = "index.php?c=Ajax_DeleteCart&a=DeleteCart&callback=?&t="+Math.random();
            $.getJSON(
                url,
                {cartIdStr:cartIdStr, operate:cartId, deleteType:deleteType},
                function(data){
                    if (data.flag){                             
                        if (!data.isDelAll){
                            window.location.reload();
                            return false;
                        }else{
                            if (data.isDelMer){
                                $("#merchant_"+data.merchantId).remove();
                            }                               
                        }
                      
                        if ('collect' == deleteType){
                           alert("收藏成功"); 
                        }
                        
                        if (data.isUpdate){
                            $(".total-cart-price").html(data.totalCartPrice);                            
                        }
                        
                        $("#cart_"+cartId).remove();                        
                    }else{
                        alert(data.msg);
                    }
                }
            );
             
        }
    });
    
    $.extend({
        closeDeleteCart:function(options){
            var defaults = {    
               cartId : 0                                  
            };             
            var options = $.extend(defaults, options);
            var cartId  = defaults.cartId;               
            $("#zp-cart-"+cartId).hide();             
        }
    });
    
    // 批量删除商品    
    $.extend({
        deleteAll : function(){
            var cartIdStr  = '';
            var cartIdArr  = new Array();
            $("input[item=item]").each(function(){            
                if (this.checked){
                    cartIdArr.push($(this).val());
                }
            });       
            cartIdStr = cartIdArr.join(",");
            if ('' == cartIdStr){
                alert("请选择商品");
                return false;
            }
            var conf = confirm("确认要删除选中的商品吗？");
            if (!conf){                
                return false;
            }            
            var url = "index.php?c=Ajax_DeleteCart&a=DeleteAll&callback=?&t="+Math.random();
            $.getJSON(
                url,
                {cartIdStr:cartIdStr},
                function(data){
                    if (data.flag){
                        window.location.reload();
                    }else{
                        alert(data.msg);
                    }
                }
            );
        }
    });
    
    // 批量删除失效产品
    $.extend({
        clearInvalid : function(){
            var url = "index.php?c=Ajax_DeleteCart&a=clearInvalid&callback=?&t="+Math.random();
            $.getJSON(
                url,
                function(data){
                    if (data.flag){
                        window.location.reload();
                    }else{
                        alert(data.msg);
                    }                    
                }
            );
        }
    });
    
})        
</script>


<%@ include file="../common/footer.jsp"%>
