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
import com.tour.webapp.model.InfoItem;

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
		
		InfoResult result = new InfoResult();
		List<InfoItem> itemList = new ArrayList<InfoItem>();
		
		URL xml = new URL(url); 
		InputStream in = xml.openStream();

		Scanner scan = new Scanner(in,"UTF-8");
		String temp = "";
		while (scan.hasNextLine()) {
			temp = temp + scan.nextLine();
		}
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObject = (JSONObject) jsonParser.parse(temp);
			JSONObject response = (JSONObject) jsonObject.get("response");
			JSONObject body = (JSONObject) response.get("body");
			JSONObject items = (JSONObject) body.get("items");
			
			JSONArray itemArray = (JSONArray) items.get("item");
			
			log.info("#####################################");
			log.info(((JSONObject)itemArray.get(0)));
			log.info("#####################################");
			
			for (int i = 0; i < itemArray.size(); i++) {
				JSONObject item = (JSONObject) itemArray.get(i);
				InfoItem tempItem = new InfoItem();
				tempItem.setTitle((String)item.get("title"));
				tempItem.setAddr(item.get("addr1").toString());
				tempItem.setHomepage(item.get("homepage").toString());
				tempItem.setMapx(item.get("mapx").toString());
				tempItem.setMapy(item.get("mapy").toString());
				tempItem.setZipcode(item.get("zipcode").toString());
				
				if(item.get("tel") != null)
					tempItem.setTel(item.get("tel").toString());
				else
					tempItem.setTel("번호정보 없음");
				
				if(item.get("firstimage") != null)
					tempItem.setImage(item.get("firstimage").toString());
				else
					tempItem.setImage("http://placehold.it/699x466");
				
				itemList.add(tempItem);
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.setItems(itemList);
		return result;                     
	}
}  










