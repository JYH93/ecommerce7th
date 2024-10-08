/**
 * YOU ARE STRICTLY PROHIBITED TO COPY, DISCLOSE, DISTRIBUTE, MODIFY OR USE THIS PROGRAM
 * IN PART OR AS A WHOLE WITHOUT THE PRIOR WRITTEN CONSENT OF HIMEDIA.CO.KR.
 * HIMEDIA.CO.KR OWNS THE INTELLECTUAL PROPERTY RIGHTS IN AND TO THIS PROGRAM.
 * COPYRIGHT (C) 2024 HIMEDIA.CO.KR ALL RIGHTS RESERVED.
 *
 * 하기 프로그램에 대한 저작권을 포함한 지적재산권은 himedia.co.kr에 있으며,
 * himedia.co.kr이 명시적으로 허용하지 않는 사용, 복사, 변경 및 제 3자에 의한 공개, 배포는 엄격히 금지되며
 * himedia.co.kr의 지적재산권 침해에 해당된다.
 * Copyright (C) 2024 himedia.co.kr All Rights Reserved.
 *
 *
 * Program		: kr.co.himedia.ecommerce
 * Description	:
 * Environment	: JRE 1.7 or more
 * File			: SaloDto.java
 * Notes		:
 * History		: [NO][Programmer][Description]
 *				: [20241001112543][cydgate4957@gmail.com][CREATE: Initial Release]
 */
package kr.co.bravomylife.front.sale.dto;

/**
 * @version 1.0.0
 * @author cydgate4957@gmail.com
 * 
 * @since 2024-10-01
 * <p>DESCRIPTION:</p>
 * <p>IMPORTANT:</p>
 */
public class SaleDto {

	private int rnum				= 0;
	private int seq_mbr				= 0;
	private String sle_nm			= "";
	private Integer seq_sle			= 0;
	private String img				= "";
	private int price_sale			= 0;
	private String desces			= "";
	private String cd_ctg_b			= "";
	private String cd_ctg_m			= "";
	private String cd_state_sale	= "";
	private int rate_star			= 0;
	private int count				= 0;
	private int average_rate		= 0;
	private String prd_type			= "";
	private int count_stock			= 0;
	private String corp_nm			= "";
	private String flg_delete		= "";
	private String dt_sale_atart	= "";
	private String dt_sale_end		= "";
	private int discount			= 0;
	private String dt_reg			= "";
	private int register			= 0;
	private String dt_upt			= "";
	private int updater				= 0;
	private int discount_sale		= 0;
	private String flg_best			= "";
	private String flg_like			= "";
	private int point_stack			= 0;
	private int point_value			= 0;
	private String rate_review		= "";
	private String mbr_nm			= "";
	
	
	private String searchKey		= "";
	private String searchWord		= "";
	
	
	public int getPoint_value() {
		return point_value;
	}
	public void setPoint_value(int point_value) {
		this.point_value = point_value;
	}
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getSeq_mbr() {
		return seq_mbr;
	}
	public void setSeq_mbr(int seq_mbr) {
		this.seq_mbr = seq_mbr;
	}
	public String getSle_nm() {
		return sle_nm;
	}
	public void setSle_nm(String sle_nm) {
		this.sle_nm = sle_nm;
	}
	public Integer getSeq_sle() {
		return seq_sle;
	}
	public void setSeq_sle(Integer seq_sle) {
		this.seq_sle = seq_sle;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getPrice_sale() {
		return price_sale;
	}
	public void setPrice_sale(int price_sale) {
		this.price_sale = price_sale;
	}
	public String getDesces() {
		return desces;
	}
	public void setDesces(String desces) {
		this.desces = desces;
	}
	public String getCd_ctg_b() {
		return cd_ctg_b;
	}
	public void setCd_ctg_b(String cd_ctg_b) {
		this.cd_ctg_b = cd_ctg_b;
	}
	public String getCd_ctg_m() {
		return cd_ctg_m;
	}
	public void setCd_ctg_m(String cd_ctg_m) {
		this.cd_ctg_m = cd_ctg_m;
	}
	public String getCd_state_sale() {
		return cd_state_sale;
	}
	public void setCd_state_sale(String cd_state_sale) {
		this.cd_state_sale = cd_state_sale;
	}
	public int getRate_star() {
		return rate_star;
	}
	public void setRate_star(int rate_star) {
		this.rate_star = rate_star;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getAverage_rate() {
		return average_rate;
	}
	public void setAverage_rate(int average_rate) {
		this.average_rate = average_rate;
	}
	public String getPrd_type() {
		return prd_type;
	}
	public void setPrd_type(String prd_type) {
		this.prd_type = prd_type;
	}
	public int getCount_stock() {
		return count_stock;
	}
	public void setCount_stock(int count_stock) {
		this.count_stock = count_stock;
	}
	public String getCorp_nm() {
		return corp_nm;
	}
	public void setCorp_nm(String corp_nm) {
		this.corp_nm = corp_nm;
	}
	public String getFlg_delete() {
		return flg_delete;
	}
	public void setFlg_delete(String flg_delete) {
		this.flg_delete = flg_delete;
	}
	public String getDt_sale_atart() {
		return dt_sale_atart;
	}
	public void setDt_sale_atart(String dt_sale_atart) {
		this.dt_sale_atart = dt_sale_atart;
	}
	public String getDt_sale_end() {
		return dt_sale_end;
	}
	public void setDt_sale_end(String dt_sale_end) {
		this.dt_sale_end = dt_sale_end;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getDt_reg() {
		return dt_reg;
	}
	public void setDt_reg(String dt_reg) {
		this.dt_reg = dt_reg;
	}
	public int getRegister() {
		return register;
	}
	public void setRegister(int register) {
		this.register = register;
	}
	public String getDt_upt() {
		return dt_upt;
	}
	public void setDt_upt(String dt_upt) {
		this.dt_upt = dt_upt;
	}
	public int getUpdater() {
		return updater;
	}
	public void setUpdater(int updater) {
		this.updater = updater;
	}
	public int getDiscount_sale() {
		return discount_sale;
	}
	public void setDiscount_sale(int discount_sale) {
		this.discount_sale = discount_sale;
	}
	public String getFlg_best() {
		return flg_best;
	}
	public void setFlg_best(String flg_best) {
		this.flg_best = flg_best;
	}
	public String getFlg_like() {
		return flg_like;
	}
	public void setFlg_like(String flg_like) {
		this.flg_like = flg_like;
	}
	public int getPoint_stack() {
		return point_stack;
	}
	public void setPoint_stack(int point_stack) {
		this.point_stack = point_stack;
	}
	public String getRate_review() {
		return rate_review;
	}
	public void setRate_review(String rate_review) {
		this.rate_review = rate_review;
	}
	public String getMbr_nm() {
		return mbr_nm;
	}
	public void setMbr_nm(String mbr_nm) {
		this.mbr_nm = mbr_nm;
	}
	public String getSearchKey() {
		return searchKey;
	}
	public void setSearchKey(String searchKey) {
		this.searchKey = searchKey;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
}