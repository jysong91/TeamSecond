package com.TeamSecond.letsmeet.DTO;

public class ReviewDTO {
	private String placeName;
	private int reviewNo;
	private String id;
	private String reviewTitle;
	private String reviewContents;
	private int reviewAppraisal;
	private String reviewMemberType;
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public String getReviewContents() {
		return reviewContents;
	}
	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}
	public int getReviewAppraisal() {
		return reviewAppraisal;
	}
	public void setReviewAppraisal(int reviewAppraisal) {
		this.reviewAppraisal = reviewAppraisal;
	}
	public String getReviewMemberType() {
		return reviewMemberType;
	}
	public void setReviewMemberType(String reviewMemberType) {
		this.reviewMemberType = reviewMemberType;
	}
	
	
}
