package com.TeamSecond.letsmeet.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;
import com.TeamSecond.letsmeet.IDAO.ReviewDAO;
import com.TeamSecond.letsmeet.IService.ReviewService;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDAO reviewDAO;
	
	@Override
	public void reviewProc(ReviewDTO reviewDTO) {
		reviewDAO.reviewInsert(reviewDTO);
	}
	
	@Override
	public PlaceDTO reviewPlace(String placeName) {
		return reviewDAO.reviewPlace(placeName);
	}
	@Override
	public ReviewDTO selectReview(String placeName) {
		return reviewDAO.selectReview(placeName);
	}
	@Override
	public String selectAppraisal(String placeName) {
		return reviewDAO.selectAppraisal(placeName);
	}
	@Override
	public List<PlaceDTO> selectMyReviewPlaceNameAll(String id) {
		return reviewDAO.selectMyReviewPlaceNameAll(id);
	}

	@Override
	public ReviewDTO reviewExampleProc(String placeName, String id) {
		Map<String, String> reviewMap = new HashMap<String, String>();
		reviewMap.put("placeName", placeName);
		reviewMap.put("id", id);
		return reviewDAO.reviewExampleProc(reviewMap);
	}

	@Override
	public List<ReviewDTO> bestAppraisalPlace() {
		return reviewDAO.bestAppraisalPlace();
	}
}
