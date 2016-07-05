package com.buaa.shopping.bean;

public class GoodsAndType {
	private Integer id;
	private String goodsname;
	private GoodsType type;
	public GoodsType getType() {
		return type;
	}
	public void setType(GoodsType type) {
		this.type = type;
	}
	private Integer count;
	private Float price;
	private String goodspic;
	private String goodsdesc;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public String getGoodspic() {
		return goodspic;
	}
	public void setGoodspic(String goodspic) {
		this.goodspic = goodspic;
	}
	public String getGoodsdesc() {
		return goodsdesc;
	}
	public void setGoodsdesc(String goodsdesc) {
		this.goodsdesc = goodsdesc;
	}
	
}
