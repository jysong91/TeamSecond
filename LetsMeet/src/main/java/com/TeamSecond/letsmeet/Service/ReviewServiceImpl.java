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
	
	//리뷰저장
	@Override
	public void reviewProc(ReviewDTO reviewDTO) {
		reviewDAO.reviewInsert(reviewDTO);
	}
	
	//리뷰쓰고 돌아올 때 이전페이지값을 DB에서 가져오기
	@Override
	public PlaceDTO reviewPlace(String placeName) {
		return reviewDAO.reviewPlace(placeName);
	}

	@Override
	public ReviewDTO selectReview(String placeName) {
		return reviewDAO.selectReview(placeName);
	}
}
