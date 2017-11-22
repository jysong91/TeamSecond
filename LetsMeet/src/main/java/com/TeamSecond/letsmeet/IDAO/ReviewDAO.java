package com.TeamSecond.letsmeet.IDAO;

import java.util.List;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface ReviewDAO {
	//리뷰저장
	public void reviewInsert(ReviewDTO reviewDTO);
	//리뷰쓰고 돌아올 때 이전페이지값을 DB에서 가져오기 
	public PlaceDTO reviewPlace(String placeName);
	public ReviewDTO selectReview(String placeName);
}
