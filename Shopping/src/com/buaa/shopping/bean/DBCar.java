package com.buaa.shopping.bean;


public class DBCar {
	
	private Integer id;
	private Integer uid;
	private Integer gid;
	private String buytime;
	private Integer buytotal;
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
	public Integer getBuytotal() {
		return buytotal;
	}
	public void setBuytotal(Integer buytotal) {
		this.buytotal = buytotal;
	}
	public void setCar(Car car) {
		this.uid = car.getUid();
		this.gid = car.getGid();
		this.buytime = car.getBuytime();
		this.buytotal = car.getBuytotal();
		
	}	
}
