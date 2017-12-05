package com.TeamSecond.letsmeet.IDAO;

import java.util.List;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface PlaceDAO {
	public void placeInsert(PlaceDTO placeDTO);
	public List<ReviewDTO> selectReview(String placeName);
	public String selectAppraisal(String placeName);
	public PlaceDTO placeForm(PlaceDTO placeDTO);
	public PlaceDTO appraisalPlace(String placeName); 
}
