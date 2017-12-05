package com.TeamSecond.letsmeet.IService;

import java.util.List;
import java.util.Map;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface ReviewService {
	//리뷰작성
	public void reviewProc(ReviewDTO reviewDTO);
	//리뷰작성 후 장소로 이동했을 때 해당 장소 정보 가져오기
	public PlaceDTO reviewPlace(String placeName);
	//최신리뷰 1개 가져와서 place에 띄우기
	public ReviewDTO selectReview(String placeName);
	//별점평균 place에 띄우기
	public String selectAppraisal(String placeName);
	//myReview에 최신리뷰쓴 장소 12개 띄위기
	public List<PlaceDTO> selectMyReviewPlaceNameAll(String id);
	//최신장소 이미지에 마우스를 올리면 리뷴 상세내용 띄우기
	public ReviewDTO reviewExampleProc(String placeName, String id);
	//일주일간 전반적인 평균 평가가 좋은 장소 7개
	public List<ReviewDTO> bestAppraisalPlace();
}
