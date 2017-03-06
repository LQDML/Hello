package com.bdqn.entity;

public class Goods {
    private Integer id;

    private String goodsname;

    private String billstatus;

    private String goodsdistrict;

    private Integer goodsprice;

    private Integer goodscount;

    private String creationtime;

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
        this.goodsname = goodsname == null ? null : goodsname.trim();
    }

    public String getBillstatus() {
        return billstatus;
    }

    public void setBillstatus(String billstatus) {
        this.billstatus = billstatus == null ? null : billstatus.trim();
    }

    public String getGoodsdistrict() {
        return goodsdistrict;
    }

    public void setGoodsdistrict(String goodsdistrict) {
        this.goodsdistrict = goodsdistrict == null ? null : goodsdistrict.trim();
    }

    public Integer getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Integer goodsprice) {
        this.goodsprice = goodsprice;
    }

    public Integer getGoodscount() {
        return goodscount;
    }

    public void setGoodscount(Integer goodscount) {
        this.goodscount = goodscount;
    }

    public String getCreationtime() {
        return creationtime;
    }

    public void setCreationtime(String creationtime) {
        this.creationtime = creationtime == null ? null : creationtime.trim();
    }

	public Goods(Integer id, String goodsname, String billstatus,
			Integer goodsprice, Integer goodscount) {
		super();
		this.id = id;
		this.goodsname = goodsname;
		this.billstatus = billstatus;
		this.goodsprice = goodsprice;
		this.goodscount = goodscount;
	}

	public Goods() {
		super();
	}

	@Override
	public String toString() {
		return "Goods [id=" + id + ", goodsname=" + goodsname + ", billstatus="
				+ billstatus + ", goodsdistrict=" + goodsdistrict
				+ ", goodsprice=" + goodsprice + ", goodscount=" + goodscount
				+ ", creationtime=" + creationtime + "]";
	}

	
}