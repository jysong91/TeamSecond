package com.TeamSecond.letsmeet.IDAO;

import java.util.List;
import java.util.Map;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface ReviewDAO {
	//��������
	public void reviewInsert(ReviewDTO reviewDTO);
	//���侲�� ���ƿ� �� �������������� DB���� �������� 
	public PlaceDTO reviewPlace(String placeName);
	public ReviewDTO selectReview(String placeName);
	public String selectAppraisal(String placeName);
	public List<PlaceDTO> selectMyReviewPlaceNameAll(String id);
	public ReviewDTO reviewExampleProc(Map<String, String>map);
	public List<ReviewDTO> bestAppraisalPlace(); 
}
