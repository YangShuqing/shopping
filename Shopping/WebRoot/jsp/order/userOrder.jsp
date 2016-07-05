<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单结算</title>

<link href="public/css/user_v1.css" rel="stylesheet" type="text/css" />

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
	<!-- <div class="header1">
		<div class="logo">
			<a href="goods.do"><img src="public/picture/logo.png" width="190" />
			</a>
		</div>
	</div>
	<div class="clr2"></div>
	<hr/> -->
	<div class="header">
		<div class="wrapper clearfix">
			<a href="goods.do" class="logo"></a>
			<div class="searchbox">
				<form action="#" method="get" target="_blank">
					<div class="searchmod">
						<input name="keyword" type="text" class="searchtext" value="搜索商品"
							maxlength="50" autocomplete="off" />
						<ul style="display:none;"></ul>
					</div>
					<input name="do_search" type="submit" class="searchbtn" />
				</form>
			</div>
		</div>
	</div>
	<div class="wrapper">
		<div class="mainbody module clearfix">
			<div class="side">
				<h3>
					<a href="#">买家中心</a>
				</h3>
				<ul class="nav clearfix">
					<li class="current"><span>我买到的商品</span></li>
					<li><a href="#">我的优惠劵</a></li>
					<li><a href="#">评价管理</a></li>
					<li><a href="#">投诉维权</a></li>
					<li><em class="fold"></em> <a href="javascript:void(0)">
							我的关注 </a>
						<ul class="subnav" style="display:none;">
							<li><a href="#">关注的商家 </a></li>
							<li><a href="#">关注的商品 </a></li>
						</ul></li>
					<li><a href="#">个人设置</a></li>
					<li><em class="fold"></em> <a href="javascript:void(0)">
							消息中心 </a>
						<ul class="subnav" style="display:none;">
							<li><a href="#">系统通知 </a></li>
							<li><a href="#">商品咨询 </a></li>
						</ul></li>
					<li><a href="#" style="font-size: 12px;" target="_blank">网购防骗点这里</a>
					</li>
				</ul>
			</div>
			<div class="main">
				<div class="mainbg"></div>
				<div class="complaints-apply">
					<div class="apply-searchbox clearfix">
						<form action="index.php" method="get" id="searchForm">
							<div class="searchmod">
								<input name="searchKeyword" type="text" class="searchtext"
									value="搜索商品" maxlength="50" autocomplete="off" />
								<ul style="display:none;"></ul>
								<input type="hidden" name="searchType" value="1" />
							</div>
							<input name="do_search" type="submit" class="searchbtn" /> <a
								href="javascript:void(0)" class="open-more"><i></i>展开更多筛选</a> <a
								href="javascript:void(0)" style="display:none;"
								class="open-more fold-more"><i></i>展开更多筛选</a> <a
								href="#"
								class="more-tuanlist" target="_blank">查看团购订单&gt;&gt;</a>
							<div class="clear"></div>
							<div class="searchbox-more clearfix"
								style=" position:relative;z-index:11;display:none;">
								<span class="status">订单状态：</span>
								<div class="selectbox form">
									<input type="text" name="searchStatus" id="searchStatus"
										value="全部状态" />
									<ul style="display:none;">
										<li value="0">全部状态</li>
										<li value="1">等待卖家确认</li>
										<li value="2">等待买家付款</li>
										<li value="3">等待卖家发货</li>
										<li value="4">卖家已发货</li>
										<li value="5">交易完成</li>
										<li value="6">交易关闭</li>
									</ul>
								</div>
								<span class="status">评价状态：</span>
								<div class="selectbox appraise">
									<input type="text" name="searchReview" id="searchReview"
										value="全部订单" />
									<ul style="display:none;">
										<li value="0">全部订单</li>
										<li value="1">待评价</li>
										<li value="2">已评价</li>
									</ul>
								</div>
							</div>
							<input type="hidden" name="c" value="OrderManage" />
							<div class="selectbox findmod2">
								<input type="hidden" name="searchOrderType" value="1" />
							</div>
						</form>
					</div>
					
					<c:forEach items="${olist}" var="o">
					<!-- order_list -->
					<table class="order-list-nav">
						<tbody>
							<tr>
								<td class="cell-1">商品信息</td>
								<td class="cell-2">单价(元)</td>
								<td class="cell-3">数量</td>
								<td class="cell-4">售后</td>
								<td class="cell-5">实付款（元）</td>
								<td class="cell-6">
									<div class="selectbox">
										<input type="text" name="searchStatus" value="全部状态" />
										<ul style="display:none;" id='searchStatusList'>
											<li value="0">全部状态</li>
											<li value="1">等待卖家确认</li>
											<li value="2">等待买家付款</li>
											<li value="3">等待卖家发货</li>
											<li value="4">卖家已发货</li>
											<li value="5">交易完成</li>
											<li value="6">交易关闭</li>
										</ul>
									</div></td>
								<td class="cell-7">操作</td>
							</tr>
						</tbody>
					</table>
					
					<div class="order-infor mt">
						<span>订单编号：${o.ordernum}</span> <span>下单时间：${o.buytime}</span>
						<div class="seller">
							<label>店铺：</label> <a href="goods.do" target="_blank"
								class="merchantInfo">某东商城</a> <a title="" href="#"><img
								alt="" width="21" height="21"
								src="http://icon.zol-img.com.cn/newshop/my/company-ico-offline.png" />
							</a>
						</div>
						<span class="cancel-order"><a href="javascript:void(0)"
							onclick="orderDisposeBox('1910973', 'buyerCancelOrder')">取消订单</a>
						</span>
					</div>
					<table class="order-list" border="0" cellspacing="0"
						cellpadding="0">
						<tbody>
							<tr>
						
								<td>
									<div class="product-infor">
										<div class="subproduct first clearfix">
											<a class="pic" href="order.do?a=orderDetail&oid=${o.id}" target="_blank"><img height="60"
												width="80"
												alt="#" src="public/images/dingdan.jpg" />
											</a>
											<div class="infor">
												<h3>
													<a href="order.do?a=orderDetail&oid=${o.id}" target="_blank">订单详情点图片</a>
												</h3>
												<h3>
													<a target="_blank" href="order.do?a=orderDetail&oid=${o.id}">[交易快照]</a>
												</h3>
												<p>
													<span class="color">颜色：<em>玫瑰金</em> </span><span
														class="setdoll">套装：<em>标配</em> </span>
												</p>
											</div>
											<div class="price">${o.total}</div>
											<div class="num">1</div>
											<div class="aftermarket"></div>
										</div>
									</div></td>
								
								<td class="sum">
									<p class="order-price">98.00</p>
									<p class="send-price">（免运费）</p></td>
								<td class="status">
									<p class="red" style="color:#FF5500">等待买家付款</p>

									<p>
										<a target="_blank" class="btn" href="#">立即付款</a>
									</p></td>
								<td class="operate">
									<p>
										<a href="order.do?a=orderDetail&oid=${o.id}">订单详情</a>
									</p></td>
							</tr>
						
						</tbody>
					</table>
					</c:forEach>
					<!-- order_list end-->
				</div>
			</div>
		</div>
	</div>
</body>
</html>