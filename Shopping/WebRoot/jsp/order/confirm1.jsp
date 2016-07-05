<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单结算</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />

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
<div class="wrapper">
<form action="order.do?a=chkorder" name="confirmOrder" id="confirmOrder" method="post">
<input type="hidden" name="cartFrom" value=""/>
	<!-- 收货人信息 -->
    <div class="container consignee">
            <table>
                <tr>
                    <td class="cell-1">收货人信息</td>
                    <td class="cell-2">
                        <ul class="address-list">
                                                                                            
                                <li class="current" id="list_641069" addliid="641069">
                                    <label><input autocomplete='off' id="addressId_641069" onclick="$.changeAddress(this)" truename="斯皮尔伯格" provinceId="1" cityId="476" address="朝阳西大街13号河北建筑工程学院" mobile="18713350000"  tel="" isDefault="1" name="addressId" type="radio" value="641069" checked>
                                        <span><strong>[默认] <em>${sessionScope.user.realname}</em></strong></span> ${sessionScope.user.address}  ${sessionScope.user.tel}</label>
                                    <div class="operate">
                                        <a href="javascript:void(0)" onclick="$.updateAddressBox('641069')">编辑</a>
                                        <a href="javascript:void(0)" onclick="$.deleteAddress('641069')">删除</a>
                                    </div>                                
                                </li>                                    
                                                                
                            
                            <li class="add-edits none">
                                <label><input name="addNewAddress" type="radio" value="" checked>添加新地址</label><div class="closeButton" style="display:block"><a href="#" class="closebtn" onclick="$.closeDeleteAddressBox()">关闭</a></div>                                <div class="infor-editor editBox " id="infor-editor">
                                    <dl>
                                        <dt><em class="xh">*</em>收货人：</dt>
                                        <dd>
                                            <input name="truename" id="deliverName" type="text" value="" class="text recinput" maxlength="10"><span class="wrong-tips none" id="deliverNameTips">请填写收货人</span>
                                        </dd>
                                    </dl>
                                    <dl class="area">
                                        <dt><em class="xh">*</em>所在地区：</dt>
                                        <dd class="clearfix">
                                            <select onChange="$.getCityInfo()" name="provinceId" id="deliverProvinceId">
                                                <option value="">省/市</option>
                                                                                                                                                         <option value="1">北京</option>
													<option value="2">上海</option>
													<option value="3">天津</option>
													<option value="4">重庆</option>
													<option value="5">黑龙江</option>
													<option value="6">辽宁</option>
													<option value="7">吉林</option>
													<option value="8">河北</option>
													<option value="9">内蒙</option>
													<option value="10">陕西</option>
													<option value="11">山西</option>
													<option value="12">甘肃</option>
													<option value="13">宁夏</option>
													<option value="14">新疆</option>
													<option value="15">西藏</option>
													<option value="16">青海</option>
													<option value="17">四川</option>
													<option value="18">云南</option>
													<option value="19">贵州</option>
													<option value="20">湖南</option>
													<option value="21">湖北</option>
													<option value="22">河南</option>
													<option value="23">山东</option>
													<option value="24">安徽</option>
													<option value="25">江苏</option>
													<option value="26">浙江</option>
													<option value="30">广东</option>
													<option value="31">广西</option>
													<option value="32">江西</option>
													<option value="33">福建</option>
													<option value="34">海南</option>
													<option value="150">其它</option>
												</select>
                                            <select name="cityId" id="deliverCityId">
                                                <option value="0">市/县</option>
                                            </select>                  										  
                                            <span class="wrong-tips none" id="deliverAreaTips">请选择地区</span>
                                        </dd>
                                    </dl>                                        
                                    <dl class="detailed-address">
                                        <dt><em class="xh">*</em>详细地址：</dt>
                                        <dd>
                                            <input name="address" id="deliverAddress"  type="text" value="" class="text addinput" maxlength="30"><span class="wrong-tips none" id="deliverAddressTips">请填写详细地址，5~30字</span>
                                        </dd>
                                    </dl>
                                    <div class="number clearfix">
                                        <dl>
                                            <dt><em class="xh">*</em>手机号码：</dt>
                                            <dd>
                                                <input name="moblie" id="deliverMobile" type="text" value="" class="text" maxlength="11">
                                                <em class="tips">或</em>
                                            </dd>
                                        </dl>
                                        <dl class="fixed-line">
                                            <dt>固定电话：</dt>
                                            <dd>
                                                <input name="tel" id="deliverPhone" type="text" value="" class="text"  maxlength="17">
                                                <em class="tips" id="deliverMobilePhoneTips" style="line-height:25px">手机号码和固定电话请至少输入一个</em>
                                            </dd>

                                        </dl>
                                    </div>
                                    <label class="setup-default"><input name="deliverDefault" id="deliverDefault" type="checkbox" class="checkbox" value="0">设置为默认地址</label>
                                    <input addressId="0" id="deliverBotton" type="button" class="savebtn w120-btn" value="确认收货地址" onclick="$.saveAddress()">
                                </div>
							</li>
                        </ul>                  

                            <div class="more-address none" id="addressShow"><a href="#" class="unfolds">更多常用地址</a></div>
                            <div class="more-address none" id="addressHide"><a href="#" class="fold">收起常用地址</a></div>

                            <div class="add-address "><label><input name="addAddress" type="radio" value="1" onclick="$.showAddressBox()">添加新地址（最多可添加10个地址,您还可以添加9个地址）</label></div>
                    </td>
                </tr>
            </table>
        </div>
        
    <!-- //收货人信息 -->
            <!-- 购物车商品信息 -->
        <input type="hidden" name="buyType" value="2"/>
        <input type="hidden" name="allCartIdStr" value="2224976,2227318,2227208"/>
                                   
               <div class="order-list "> 
                    <table>
                        <tbody><tr>
                            <td class="cell-1"><label>商品订单</label></td>
                            <td class="cell-2">
                             <table class="goods">
                                    <tbody>
                                    <tr>
                                        <th class="infor">商品信息</th>
                                        <th class="color-suits">颜色套装</th>
                                        <th class="saletype">销售类型</th>
                                        <th class="price">单价</th>
                                        <th class="agio">优惠</th>
                                        <th class="amount">数量</th>
                                        <th class="total">总价</th>
                                    </tr>
                                    <c:forEach items="${sessionScope.shopcar}" var="g" varStatus="vs">									
                                    <tr>
                                            <td class="infor">
                                                <a href="goos.do?a=show&id=${g.id}" target="_blank" class="pic">
                                                <img width="60" height="60" src="${g.goodspic}" alt="${g.gname}"></a>
                                                <h3 class="title"><a href="goos.do?a=show&id=${g.id}" target="_blank"> ${g.gname}</a></h3>
                                            </td>
                                            
                                           <td class='color-suits'>-</td>
                                                                                        
                                          <td class="saletype">-</td>
                                                                                        
                                           <td class="price">&yen;${g.price}</td>
                                           <td class="agio"><span class="agio-limit">限时：优惠20元</span></td>
                                           <td class="amount">1</td>
                                            <td class="total">&yen;${g.price * g.buytotal}</td>
                                        </tr>
                                        </c:forEach>
                                                                              
                                 </tbody>
                                </table>
                                <div class="order-foot clearfix">
									<div class="store-infor">
										<span class="name">店铺:<a href="goods.do/">某东商城</a> </span>
										
										<a class="tag-security">z保障+</a>
									</div>
									<div class="delivery">
										<div class="payment">
											<select name="payType-191063" onchange="$.changeShipping()"
												id="payType-191063">
												<option value="1" selected>货到付款</option>
												<option value="2" selected>网上支付</option>
											</select> <span>支付方式：</span>
										</div>
										<div class="express">
											<select name="shipping-191063" onchange="$.changeShipping()"
												id="shipping-191063">
												<option value="88" selected>免运费：0元</option>
											</select> <span>到 <em id="sendArea-191063">北京
													朝阳区&nbsp;&nbsp;</em>配送方式：普通快递</span>
										</div>
									</div>
								</div></td>
                        </tr></tbody>
                    </table>
                </div>
                             
                                                                            
                        <!-- //购物车商品信息 -->
        
    <!-- 订单发票 -->
    <div class="container consignee" id="order_invoice_div" style="display;">
        <table>
            <tbody><tr>
                <td class="cell-1">发票</td>
                <td class="cell-2">
                    <div class="invoice clearfix" id="invoice-show-div">
                        <input type="hidden" name="isInvoice" id="is_invoice" value="0"/>
                        <span id="invoice_type_name"></span>
                        <span id="invoice_name_tips" class="invoice-tips">不需要发票</span>
                        <a href="javascript:void(0)" id="invoice-editor" >修改</a>
                    </div>
                    <div class="infor-editor invoice-editor" id="invoice-editor-div">
                        <dl>
                            <dt><em class="xh">*</em>发票类型：</dt>
                            <dd>
                                <label><input name="invoiceType" type="radio" value="1" checked>普通发票</label>
                            </dd>
                        </dl>
                        <dl>
                            <dt><em class="xh">*</em>发票抬头：</dt>
                            <dd>
                                <input name="invoiceName" type="text" value="姓名/公司名称" class="text text-color" maxlength="30">
                                <span class="wrong-tips" id="invoice_error" style="display:none;">发票信息错误</span>
                            </dd>
                        </dl>
                        <div class="btn clearfix">
                            <input type="button" id="save_invoice_info" class="savebtn w120-btn" value="保存发票信息">
                            <a href="javascript:void(0)" id="invoice_cancel" class="cancel">取消</a>
                        </div>
                    </div>
                </td>
            </tr>
        </tbody></table>
    </div>
    <!-- //订单发票 -->
    
	<!-- 订单备注 -->
	<div class="order-note">
		<table>
			<tr>
				<td class="cell-1">订单备注</td>
				<td class="cell-2"><textarea name="buyer-note-191063" id="orderNote" fn="limit" limit="200" tipsId="haveFonts"  onfocus="if(this.value=='您可以填写对商品、配送的要求...') this.value='';this.style.color='#333'" onblur="if(this.value=='') {this.value='您可以填写对商品、配送的要求...';this.style.color='#999999'}" style="color:#999999;">您可以填写对商品、配送的要求...</textarea><span><em id="haveFonts">0</em>/200</span></td>
				<td class="cell-3">
					<ul class="total-price">
						<li><span>商品总价：</span><em id="goods-total-price">&yen;103</em></li>
						<li><span>运费：</span><em id="goods-freight-price">&yen;0</em></li>
						<li><span>订单总计：</span><em class="total" id="total-price">&yen;103</em></li>
					</ul>
				</td>
			</tr>
		</table>
	</div>

	<!-- //订单备注 -->
	<!-- 提交订单 -->
	<div class="submit-order clearfix">
                <a href="#" class="submit-return">返回修改购物车</a>
                <input class="submit-btn" name="confirmOrder" type="submit" value="提交订单"/>
		<div class="submit-loading" style="display:none;">提交中...</div>
		<div class="fail-submit" style='display:none;cursor: not-allowed' title='填写错误，不能提交订单'>不能提交订单</div>
        	</div>
  </form>
	<!-- //提交订单 -->
    
</div>

<hr/>
地址：

商品：
<c:forEach items="${sessionScope.shopcar}" var="g" varStatus="vs">
${g.gname},${g.goodspic}<br/>
</c:forEach>


</body>
</html>