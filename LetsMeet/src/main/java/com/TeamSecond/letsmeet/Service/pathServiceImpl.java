package com.TeamSecond.letsmeet.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.IService.pathService;


@Service
public class pathServiceImpl implements pathService{

	private static final Logger logger = LoggerFactory.getLogger(pathServiceImpl.class);

	
	@Override
	public String calMid(String myLoc, String yourLoc) {
		//(37.534526294617905, 126.99433490267234) : (37.5820447203794, 127.00194276081561)
		String[] myLoc_split;
		String[] yourLoc_split;
		myLoc_split = myLoc.split(", ");
		yourLoc_split = yourLoc.split(", ");
		double rst_x = (Math.abs((Double.parseDouble(myLoc_split[0].substring(1))+Double.parseDouble(yourLoc_split[0].substring(1)))))/2;
		double rst_y = (Math.abs((Double.parseDouble(myLoc_split[1].substring(0, myLoc_split[1].length()-1))+Double.parseDouble(yourLoc_split[1].substring(0, yourLoc_split[1].length()-1)))))/2;
		if(rst_x==0.0) rst_x = Double.parseDouble(myLoc_split[0].substring(1));
		if(rst_y==0.0) rst_y = Double.parseDouble(myLoc_split[1].substring(0, yourLoc_split.length-1));
		return String.valueOf(rst_x)+", "+String.valueOf(rst_y);
	}

}
