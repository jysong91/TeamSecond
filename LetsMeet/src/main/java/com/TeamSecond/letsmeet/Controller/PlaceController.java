package com.TeamSecond.letsmeet.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.TeamSecond.letsmeet.DTO.PlaceDTO;
import com.TeamSecond.letsmeet.IService.PlaceService;

@Controller
@RequestMapping("place")
@SessionAttributes("session")
public class PlaceController {
	
	@Autowired
	PlaceService placeService;
	
	@RequestMapping("/")
	public String place(PlaceDTO placeDTO, Model model) {
		//장소 상세보기 클릭 시 해당아이디or아이피번호에 추가된다
		placeService.placeInsert(placeDTO);
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		//별점 가져오기
		model.addAttribute("selectAppraisal", placeService.selectAppraisal(placeDTO.getPlaceName()));
		model.addAttribute("placeDTO", placeDTO);
		//model.addAttribute("placeName",  placeDTO.getPlaceName());
		//model.addAttribute("placeAddr",  placeDTO.getPlaceAddr());
		//model.addAttribute("tel",  placeDTO.getTel());
		//model.addAttribute("outLine",  placeDTO.getOutLine());
		return "place";
	}
	//최근 리뷰 이미지 클릭 시 장소 이동
	@RequestMapping("placeForm")
	public String placeForm(PlaceDTO placeDTO, Model model) {
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		//별점 가져오기
		model.addAttribute("selectAppraisal", placeService.selectAppraisal(placeDTO.getPlaceName()));
		//장소 가져와서 바로 place.jsp에 보내기
		model.addAttribute("placeDTO", placeService.placeForm(placeDTO));
		return "place";
	}
	
	//일주일간 평점높은 장소 클릭 시 장소정보 가져온 뒤 장소데이터 저장
	@RequestMapping("appraisalPlace")
	public String appraisalPlace(PlaceDTO placeDTO, Model model) {
		//서비스 단에서 처리를 해야하는 과정이지만 작동이 될 떄와 작동이 되지 않는 떄가 있어서 
		//컨트롤러 단에서 처리하게 했음...
		PlaceDTO placeD = placeService.appraisalPlace(placeDTO);
		if(placeDTO.getId()==null){
			placeDTO.setId("");
		}
		if(placeD.getTel()==null){
			placeDTO.setTel("");
		}else{
			placeDTO.setTel(placeD.getTel());
		}
		placeDTO.setPlaceName(placeD.getPlaceName());
		placeDTO.setPlaceAddr(placeD.getPlaceAddr());
		placeDTO.setOutLine(placeD.getOutLine());
	/*	System.out.println("주소"+placeDTO.getPlaceAddr());
		System.out.println("전화번호"+placeD.getTel());
		System.out.println("아이디"+placeDTO.getId());
		System.out.println("장소"+placeDTO.getPlaceName());
		System.out.println("개요"+ placeD.getOutLine());*/
		
		//장소넣기
		placeService.placeInsert(placeDTO);
		//리뷰 한개 가져오기
		model.addAttribute("selectReview", placeService.selectReview(placeDTO.getPlaceName()));
		//별점 가져오기
		model.addAttribute("selectAppraisal", placeService.selectAppraisal(placeDTO.getPlaceName()));
		//장소 가져와서 바로 place.jsp에 보내기
		model.addAttribute("placeDTO", placeDTO);
		return "place";
	}
}
