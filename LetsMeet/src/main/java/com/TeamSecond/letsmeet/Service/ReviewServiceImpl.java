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
	
	//��������
	@Override
	public void reviewProc(ReviewDTO reviewDTO) {
		reviewDAO.reviewInsert(reviewDTO);
	}
	
	//���侲�� ���ƿ� �� �������������� DB���� ��������
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
}
