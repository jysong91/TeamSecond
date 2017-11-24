package com.TeamSecond.letsmeet.IService;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface PlaceService {
	public void placeInsert(PlaceDTO placeDTO);
	public ReviewDTO selectReview(String placeName);
	public String selectAppraisal(String placeName);
}
