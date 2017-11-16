package com.TeamSecond.letsmeet.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
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

}