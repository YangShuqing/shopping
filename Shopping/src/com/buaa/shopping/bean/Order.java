package com.buaa.shopping.bean;

public class Order {
	private Integer id;
	private Integer uid;
	private Integer gid;
	private String ordernum;
	private String buytime;
	private Float total;
	private String status;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public Integer getGid() {
		return gid;
	}
	public void setGid(Integer gid) {
		this.gid = gid;
	}
	public String getBuytime() {
		return buytime;
	}
	public void setBuytime(String buytime) {
		this.buytime = buytime;
	}
	
	public Float getTotal() {
		return total;
	}
	public void setTotal(Float total) {
		this.total = total;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	@Override
	public String toString() {
		return "Order [id=" + id + ", uid=" + uid + ", gid=" + gid
				+ ", ordernum=" + ordernum + ", buytime=" + buytime
				+ ", total=" + total + ", status=" + status + "]";
	}
	
}
