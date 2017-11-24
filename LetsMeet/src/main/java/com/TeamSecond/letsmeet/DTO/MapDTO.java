package com.TeamSecond.letsmeet.DTO;

public class MapDTO {
	private String calRst;
	private String rad;
	private String isFindCenter;
	private boolean autoOverlay;
	
	public MapDTO(){
		
	}
	
	public String getCalRst() {
		return calRst;
	}
	public void setCalRst(String calRst) {
		this.calRst = calRst;
	}
	public String getRad() {
		return rad;
	}
	public void setRad(String rad) {
		this.rad = rad;
	}
	public String getIsFindCenter() {
		return isFindCenter;
	}
	public void setIsFindCenter(String isFindCenter) {
		this.isFindCenter = isFindCenter;
	}
	public boolean isAutoOverlay() {
		return autoOverlay;
	}
	public void setAutoOverlay(boolean autoOverlay) {
		this.autoOverlay = autoOverlay;
	}
	
}
