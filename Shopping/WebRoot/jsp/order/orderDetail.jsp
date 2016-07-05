<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单结算</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />

<link href="public/css/cart_v1.css" rel="stylesheet" type="text/css" />
<link href="public/css/order_v1.css" rel="stylesheet" type="text/css" />

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
				<a href="javascript:;" class="collect">收藏</a> <a href="javascript:;"
					class="wechat">微信</a>
			</div>
			<div class="top-right">
				<p>嗨，欢迎来到北航电子商城</p>
				<c:if test="${sessionScope.user.username==null}">
					<p>
						<a href="user.do?a=login">请登录</a> | <a href="user.do?a=register">免费注册</a>
					</p>
				</c:if>
				<p>
					<a href="#">${sessionScope.user.username}</a>
				</p>
				<p>
					<a href="javascript:;">我的订单</a> | <a href="javascript:;">服务中心</a> |
					<a href="user.do?a=exit">退出</a>
				</p>
			</div>
		</div>
	</div>
	<!------------header---------------->
	<div class="header">
		<div class="logo">
			<a href="goods.do"><img src="public/picture/logo.png" width="190" />
			</a>
		</div>
		<div class="flow-step">
			<ul class="flow-step-4">
				<li class="s1">加入购物车</li>
				<li class="s2">下订单</li>
				<li class="s3">去付款</li>
				<li class="s4">确认收货</li>
				<li class="s5">评价</li>
			</ul>
		</div>
	</div>
	<div class="clr2"></div>
	<hr />
	<div class="wrapper">
		<div class="codmod orderinfor mt20">
			<!--<a href="#" class="cancelbtn">取消订单</a>-->
			<dl class="amount clearfix">
				<dt>订单状态：</dt>
				<dd>
					<div style="font-size:20px;color:red">
					<strong>
						<c:if test="${order.status==0}">未发货</c:if>
						<c:if test="${order.status==1}">已发货</c:if>
						</strong>
					</div>
				</dd>
			</dl>
			<dl class="amount clearfix">
				<dt>订单编号：</dt>
				<dd>${order.ordernum}</dd>
			</dl>
		
			<ul class="usemod">
				<li><span>商城服务：</span> <a
					href="#" target="_blank">如何退款</a>
					|<a href="#" target="_blank">服务保障</a>

				</li>
				<li><span>相关操作：</span><a href="#">我买到的商品</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="wrapper">
		<ul class="modgoods-tab mt20 clearfix" id="zp-tab-order">
			<li class="cur" rel="zp-order">订单详细信息</li>
			<li rel="zp-logistics">收货物流信息</li>
		</ul>

		<div class="paymentbox-2 " id="zp-order">
			<div class="informod first">

				<div class="informod">
					<div class="hd">订单信息</div>
					<dl class="orderinfor-mod clearfix">
						<dt>订单编号：</dt>
						<dd>${order.ordernum}</dd>
						<dt>下单时间：</dt>
						<dd>${order.buytime}</dd>
						<dt>付款时间：</dt>
						<dd>${order.buytime}</dd>
						<dt>支付方式：</dt>
						<dd>网上支付</dd>
					</dl>

				</div>

				<div class=" confirm-table">
					<table width="100%">
						<tr>
							<th class="th-1">所选商品</th>
							<th class="th-2">单价（元）</th>
							<th class="th-3">数量</th>
							<th class="th-4">优惠</th>
							<th class="th-5">小计（元）</th>
						</tr>
						<tr class="spacing">
							<td colspan="5"></td>
						</tr>
					<c:forEach items="${odlist}" var="o">
						<tr>
							<td class="s-infor"><a
								href="goods.do?a=show&id=${o.gid}"
								class="pic" target="_blank"><img width="80" height="60"
									src="${o.gpic}"
									alt="" />
							</a>
								<div class="inforbox">
									<h3 class="tit">
										<a
											href="goods.do?a=show&id=${o.gid}"
											target="_blank">${o.gname}</a>
									</h3>
									<div class="security clearfix"></div>
									<p>颜色：黑色</p>
									<div class="info-con zp-suit-show">
										<span>套装：官方标配</span>
										<div class="info-help">
											<h5>官方标配：</h5>
											<p>第二代mambo一台</p>
										</div>
									</div>
								</div></td>
							<td class="s-price"><em>${o.gprice}</em></td>
							<td class="s-amount">
								<div class="buy-num">${o.gtotal}</div></td>
							<td class="s-agio">---</td>
							<td class="s-total"><em>${o.gprice * o.gtotal}</em></td>
						</tr>
					</c:forEach>

						<tr class="total-cost">
							<td colspan="5">
								<dl>
									<dt>应付总额（含运费0元）：</dt>
									<dd>
										<em>98.00</em>元
									</dd>
								</dl></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="paymentbox-2 " id="zp-logistics" style="display:none;">
				<dl class="receiving_infor clearfix">
					<dt>收货地址：</dt>
					<dd>斯皮尔伯格,18713350000,北京 东城区 朝阳西大街13号河北建筑工程学院</dd>
					<dt>买家附言：</dt>
					<dd>无</dd>
					<dt>商家留言：</dt>
					<dd>无</dd>
				</dl>
			</div>
		</div>

		<div class="tipbox" style="display:none;" id="zp-receiptGoods">
			<div class="hd">提示</div>
			<i>关闭</i>
			<div class="content">
				<p>是否确认收货？确认后交易便会完成。</p>
				<div class="viewzu clearfix">
					<input type="button" class="conbtn" value="确认" name="" /> <input
						type="button" class="cancelbtn" value="取消" name="" />
				</div>
			</div>
		</div>
	
      <!--  <div class="footer">
    <p class="links"><a target="_blank" href="#">关于商城</a>|<a target="_blank" href="#">营销中心</a>|<a target="_blank" href="#">服务中心</a>|<a target="_blank" href="#">联系我们</a>|<a target="_blank" href="#">发展历程</a>|<a target="_blank" href="#">媒体报道</a></p>
    <p><span class="copyright">&copy;BUAAs</div> -->
       
</body>
</html>