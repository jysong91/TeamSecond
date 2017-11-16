package com.TeamSecond.letsmeet.Service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.TeamSecond.letsmeet.IService.pathService;


@Service
public class pathServiceImpl implements pathService{

	private static final Logger logger = LoggerFactory.getLogger(pathServiceImpl.class);

	@Override
	public String calMid(List<String> ppls) {
		try {
			//(37.534526294617905, 126.99433490267234) : (37.5820447203794, 127.00194276081561)
			List<String[]> ppls_split = new ArrayList<String[]>();
			double rst_x = 0.0;
			double rst_y = 0.0;
			
			for (int i = 0; i < ppls.size(); i++) {
				ppls_split.add(ppls.get(i).split(", ")); 
			}
			for (int i = 0; i < ppls_split.size(); i++) {
				rst_x += Double.parseDouble(ppls_split.get(i)[0].substring(1));
				rst_y += Double.parseDouble(ppls_split.get(i)[1].substring(0, ppls_split.get(i)[1].length()-1));
				logger.info(i+" : "+rst_x);
			}
			rst_x = rst_x/ppls_split.size();
			rst_y = rst_y/ppls_split.size();
			
			return String.valueOf(rst_x)+", "+String.valueOf(rst_y);
		} catch (Exception e) {
			return null;
		}
	}

}
