package com.TeamSecond.letsmeet.Service;

import java.util.List;

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
}
