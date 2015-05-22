package com.tour.webapp.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tour.webapp.model.request.SearchRequestParameter;
import com.tour.webapp.model.response.ResponseMessage;
import com.tour.webapp.service.TourService;

@Controller
@RequestMapping(value="/tour")
public class SearchKeywordController {
	
	static Log log = LogFactory.getLog(SearchKeywordController.class);
	
	@Autowired
	TourService tour;
	
	@RequestMapping(value="searchkeyword", method=RequestMethod.GET)
	@ResponseBody
	public ResponseMessage searchKeyword(SearchRequestParameter request) {
		log.info("#############################################");
		log.info("searchKeyword()..." + request.getUrl());
		log.info("#############################################");
		ResponseMessage msg = tour.callapi(request.getUrl());
		
		return msg;
	}
}
