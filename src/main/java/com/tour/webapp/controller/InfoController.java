package com.tour.webapp.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tour.webapp.model.InfoCode;
import com.tour.webapp.model.InfoResult;
//import com.tour.webapp.model.InfoItem;

@Controller
@RequestMapping("/info")
public class InfoController {
	static Log log = LogFactory.getLog(InfoController.class);
	
	@ResponseBody
	@RequestMapping(value="/info", method=RequestMethod.POST)
	public InfoResult info(@RequestBody InfoCode msg, HttpSession session) throws IOException {  
		log.info("#################################################");
		log.info("Test PAGE" + " : " + msg.getContentid());
		log.info("#################################################");
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&MobileOS=AND&MobileApp=AppTesting&_type=json&defaultYN=Y&firstImageYN=Y&areacodeYN=Y&catcodeYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&contentId=";		
		String contentId = URLEncoder.encode(msg.getContentid(), "utf-8");
		url = url + contentId;
		log.info(url);
		
		InfoResult result = new InfoResult();
//		List<InfoItem> itemList = new ArrayList<InfoItem>();
		
		URL xml = new URL(url); 
		InputStream in = xml.openStream();

		Scanner scan = new Scanner(in,"UTF-8");
		String temp = "";
		while (scan.hasNextLine()) {
			temp = temp + scan.nextLine();
		}
		log.info(temp);
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(temp);
			log.info(jsonObject);
			JSONObject response = (JSONObject) jsonObject.get("response");
			log.info(response);
			JSONObject body = (JSONObject) response.get("body");
			log.info(body);
			JSONObject items = (JSONObject) body.get("items");
			log.info(items);
			JSONObject item = (JSONObject) items.get("item");
			
			result.setResult(item.toJSONString());
			log.info(result.getResult());
			
//			log.info(item.get("title").toString());
//			log.info(item.get("addr1").toString());
//			log.info(item.get("addr2").toString());
//			log.info(item.get("zipcode").toString());
//			log.info(item.get("areacode").toString());
//			log.info(item.get("sigungucode").toString());
//			log.info(item.get("cat1").toString());
//			log.info(item.get("cat2").toString());
//			log.info(item.get("cat3").toString());
//			log.info(item.get("contentid").toString());
//			log.info(item.get("contenttypeid").toString());
//			log.info(item.get("createdtime").toString());
//			log.info(item.get("firstimage").toString());
//			log.info(item.get("firstimage2").toString());
//			log.info(item.get("mlevel").toString());
//			log.info(item.get("modifiedtime").toString());
//			log.info(item.get("tel").toString());
//			log.info(item.get("telname").toString());
			
//			log.info(items.get("mapx").toString());
//			log.info(items.get("mapy").toString());
//			log.info(items.get("overview").toString());
//			log.info(items.get("homepage").toString());
			
//			InfoItem tempItem = new InfoItem();
//			tempItem.setTitle(item.get("title").toString());
//			tempItem.setAddr(item.get("addr1").toString());
//			tempItem.setHomepage(item.get("homepage").toString());
//			tempItem.setMapx(items.get("mapx").toString());
//			tempItem.setMapy(items.get("mapy").toString());
//			tempItem.setZipcode(items.get("zipcode").toString());
//			tempItem.setOverview(items.get("overview").toString());
//			
//			if(items.get("firstimage") != null)
//				tempItem.setImage(item.get("firstimage").toString());
//			else
//				tempItem.setImage("http://placehold.it/699x466");
//			
//			if(items.get("tel") != null)
//				tempItem.setTel(items.get("tel").toString());
//			else
//				tempItem.setTel("번호정보 없음");
//			
//			itemList.add(tempItem);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		result.setItems(itemList);
		return result;                     
	}
}  










