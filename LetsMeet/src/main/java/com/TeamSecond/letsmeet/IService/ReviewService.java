package com.TeamSecond.letsmeet.IService;

import java.util.List;
import java.util.Map;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface ReviewService {
	public void reviewProc(ReviewDTO reviewDTO);
	public PlaceDTO reviewPlace(String placeName);
	public ReviewDTO selectReview(String placeName);
	public String selectAppraisal(String placeName);
	public List<PlaceDTO> selectMyReviewPlaceNameAll(String id);
	public ReviewDTO reviewExampleProc(String placeName, String id);
	public List<ReviewDTO> bestAppraisalPlace();
}
