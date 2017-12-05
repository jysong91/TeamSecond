package com.TeamSecond.letsmeet.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.DTO.ReviewDTO;
import com.TeamSecond.letsmeet.IDAO.PlaceDAO;
import com.TeamSecond.letsmeet.IService.PlaceService;

@Service
public class PlaceServiceImpl implements PlaceService{

	@Autowired
	PlaceDAO placeDAO;
	
	@Override
	public void placeInsert(PlaceDTO placeDTO) {
		placeDAO.placeInsert(placeDTO);
	}
 
	@Override
	public List<ReviewDTO> selectReview(String placeName) {
		return placeDAO.selectReview(placeName);
	}

	@Override
	public String selectAppraisal(String placeName) {
		return placeDAO.selectAppraisal(placeName);
	}

	@Override
	public PlaceDTO placeForm(PlaceDTO placeDTO) {
		placeDAO.placeInsert(placeDAO.placeForm(placeDTO));
		return placeDAO.placeForm(placeDTO);
	}

	@Override
	public PlaceDTO appraisalPlace(PlaceDTO placeDTO) {
		/*PlaceDTO placeD = placeDAO.appraisalPlace(placeDTO.getPlaceName());
		if(placeDTO.getId()==null){
			placeDTO.setId("");
		}
		placeDTO.setPlaceName(placeD.getPlaceName());
		placeDTO.setPlaceAddr(placeD.getPlaceAddr());
		placeDTO.setTel(placeD.getTel());
		placeDTO.setOutLine(placeD.getOutLine());
		placeDAO.placeInsert(placeD);*/
		return placeDAO.appraisalPlace(placeDTO.getPlaceName());
	} 
}















