﻿<%@ include file="../common/header.jsp"%>
    <!------------main---------------->
	<div class="main">
    	<div class="current-position"><h2><a href="#">首页</a> > <a href="#">环境控制</a></h2></div>
		<div class="goods-detail-info">
        	<div class="left">
              <div id="play"> 
                <div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="${goods.goodspic1}"  src="${goods.goodspic1}" height="480px" width="480px" /></span> </div>
                </div>  
               
				<div class="spec-scroll">
					<a class="prev">&lt;</a> <a class="next">&gt;</a>
					<div class="items">
						<ul>
							<li><img alt="测试图片" bimg="${goods.goodspic1}" src="${goods.goodspic1}"
								onmousemove="preview(this);">
							</li>
							<li><img alt="测试图片" bimg="${goods.goodspic2}" src="${goods.goodspic2}"
								onmousemove="preview(this);">
							</li>
							<li><img alt="测试图片" bimg="${goods.goodspic3}" src="${goods.goodspic3}"
								onmousemove="preview(this);">
							</li>
						</ul>
					</div>
				</div>
         	</div>
        	<div class="right">
            	<h1>${goods.goodsname}</h1>
                <p class="money">¥<span>${goods.price}</span></p>
                <p class="comment"><img src="public/picture/x5.gif" /><span>3266人评价<ins>|</ins>0个提问</span></p>
                <p class="fit"><strong>适配</strong><span>仅适配偏震式屏幕</span></p>
                <div class="styles">
                	<h2>颜色：</h2>
                    
                    
                    
                    <ul class="style-simg">
                    	<li class="active"><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                    </ul>
                    <h2>尺寸：</h2>
                    <ul class="style-simg">
                    	<li class="active"><a href="#"><div class="style-title">红色</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">黄色</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">蓝色</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">灰色</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">白色</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">土豪金</div></a><i></i></li>
                    </ul>
                    
                    
                    <h2>数量：</h2>
                    <div class="tb-amount-widget">
                    	<input type="text"  value="1" class="input-count"/>
                        <div class="tb-amount-btn">
                            <a href="javascript:;" class="add_btn"></a>
                            <a href="javascript:;" class="min_btn"></a>
                        </div>
                        <span>库存 ${goods.count}件</span>
                    </div>
                </div>
                <div class="pro-detai-cart">
                	<a href="goods.do?a=addcar&id=${goods.id}&buytotal=1" class="cart"><p>加入购物车</p></a>
                    <a href="#" class="collection"></a>
                </div>
                <div class="service">
                	<dl>
                    	<dt>享受服务</dt>
                        <dd class="fqfk"><a href="#">分期付款</a></dd>
                    </dl>
                    <dl style="margin-left:50px">
                    	<dt>享受保障</dt>
                        <dd class="th"><a href="#">15天退货</a></dd>
                        <dd class="bx"><a href="#">一年保修</a></dd>
                    </dl>
                </div>
            </div>
      </div>
      
      <div class="pro-detailed">
      
          <div class="pro-detailed-left">
			<ul class="pro-detailed-left-title">
            	<li class="active"><a href="#goodsDesc">详细信息</a></li>
                <li><a href="#goodsComment">评价晒单</a></li>
                 <li><a href="#goodsComment">成交记录</a></li>
                 <li><a href="#goodsComment">咨询信息</a></li>
            </ul>
            <div class="pro-detailed-left-c">
            	<!--------详细信息---------->
            	<div id="goodsDesc">
                	${goods.goodsdesc}
                </div>
                <!--------规格参数---------->
                <!-- <div id="goodsParam">
                	<div class="title">规格参数</div>
                    <ul>
                    	<li><p><span>品牌 ： </span>MIUI/小米</p></li>
                        <li><p><span>型号 ： </span>国产</p></li>
                        <li><p><span>尺寸 ： </span>20厘米-29厘米</p></li>
                        <li><p><span>编号 ： </span></p></li>
                        <li><p><span>颜色分类 ： </span>红色</p></li>
                        <li><p style="white-space:normal;"><span>适用对象 ： </span>仅适配偏震式屏幕</p></li>
                    </ul>
                </div> -->
                <!--------评价晒单---------->
                <div id="goodsComment">
                	<div class="title"><strong>用户评价</strong><p><a href="#" class="active">很有用</a>|<a href="#">最新</a></p></div>
                    <div class="goodsComment-zj">
                    	<div class="left"><p>96.1<span>%</span></p><pre>五星评价率</pre></div>
                        <div class="right">
                        	<ul class="star">
                            	<li><i class="star5"></i><bdo>1696人</bdo></li>
                                <li><i class="star4"></i><bdo>90人</bdo></li>
                                <li><i class="star3"></i><bdo>5人</bdo></li>
                                <li><i class="star2"></i><bdo>1人</bdo></li>
                                <li><i class="star1"></i><bdo>0人</bdo></li>
                            </ul>
                            <ul class="Impression">
                            	<li>支持国产机</li>
                                <li>性价比高</li>
                                <li>系统流畅</li>
                                <li>功能齐全</li>
                                <li>屏幕大</li>
                                <li>反应快</li>
                                <li>外观漂亮</li>
                            </ul>
                        </div>
                    </div>
                    <div class="goodsComment-c">
                    	<ul>
                        	<li>
                            	<div class="tou-x"><img src="public/picture/hy.gif" width="78" height="78" /><p>行云流水SAGA</p></div>
                                <div class="pl-c">
                                	<div class="pl-c-1"><i class="star5"></i><span>2014-12-1</span></div>
                                    <div class="pl-c-2"><p>产品质量我是说可以 但是我还是给差评 你们不知接不接纳 这个物流速度太慢了整整4天 刚刚才拿到卡 盼到我脖子长了</p></div>
                                    <div class="pl-c-3">
                                    	<p><span>此评价是否有用？</span> <a href="javascript:;">有用(169)</a> <a href="javascript:;">没用(67)</a></p>
                                        <strong>来自于小米网 | <a href="#">回复 (2)</a></strong>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
        			<div class="goodsComment-more"><a href="#">查看全部评价 ></a></div>
                </div> 
                </div>                 
           </div>
        
          <div class="pro-detailed-right">
          	<div class="pro-detailed-right-title"><h3>可能感兴趣</h3></div>
            <div class="pro-detailed-right-c">
            	<ul class="browse-list">
                	<li><a href="#"><img src="public/picture/g01.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/01.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/00.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/4li.jpg" width="80" height="80" /></a></li>
                </ul>
            	<h3>买过的人还买了</h3>
            	<ul class="buy-list">
                	<li><a href="#"><img src="public/picture/g01.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/01.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/00.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/big-pro2.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/4li.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                </ul>
            </div>
          </div>
      </div>
    </div>
 
 <%@ include file="../common/footer.jsp"%>
