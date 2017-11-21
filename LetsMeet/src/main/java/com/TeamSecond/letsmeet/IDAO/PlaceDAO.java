package com.TeamSecond.letsmeet.IDAO;

import java.util.List;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;

public interface PlaceDAO {
	public void placeInsert(PlaceDTO placeDTO);
	public ReviewDTO selectReview(String placeName);
}
