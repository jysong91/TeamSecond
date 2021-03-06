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
	
	//리뷰적기
	@Override
	public void reviewProc(ReviewDTO reviewDTO) {
		reviewDAO.reviewInsert(reviewDTO);
	}
	
	//해당리뷰 장소가져오기
	@Override
	public PlaceDTO reviewPlace(String placeName) { 
		return reviewDAO.reviewPlace(placeName);
	}
	//해당 장소 리뷰가져오기
	@Override
	public ReviewDTO selectReview(String placeName) {
		return reviewDAO.selectReview(placeName);
	}
	//해당 장소 평균별점 가져오기
	@Override
	public String selectAppraisal(String placeName) {
		return reviewDAO.selectAppraisal(placeName);
	}
	//마이페이지에 나의 리뷰 가져오기
	@Override
	public List<PlaceDTO> selectMyReviewPlaceNameAll(String id) {
		return reviewDAO.selectMyReviewPlaceNameAll(id);
	}
	//해당장소 이미지에 마우스를 올리면 해당장소에 적은 리뷰보이기
	@Override
	public ReviewDTO reviewExampleProc(String placeName, String id) {
		Map<String, String> reviewMap = new HashMap<String, String>();
		reviewMap.put("placeName", placeName);
		reviewMap.put("id", id);
		return reviewDAO.reviewExampleProc(reviewMap); 
	}
	//평점 높은 장소 가져오기 
	@Override
	public List<ReviewDTO> bestAppraisalPlace() {
		return reviewDAO.bestAppraisalPlace();
	}
}
