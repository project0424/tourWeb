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

import com.tour.webapp.model.CategoryCode;
import com.tour.webapp.model.CategoryResult;
import com.tour.webapp.model.Keyword;
import com.tour.webapp.model.KeywordItem;
import com.tour.webapp.model.CategoryItem;
import com.tour.webapp.model.CategoryResult;
import com.tour.webapp.model.LocalCode;
import com.tour.webapp.model.CategoryItem;
import com.tour.webapp.model.CategoryResult;

@Controller
@RequestMapping("/category")
public class CategoryController {
	static Log log = LogFactory.getLog(CategoryController.class);
	String cat1;
	String cat2;
	String cat3;
	
	@ResponseBody
	@RequestMapping(value="/cat1", method=RequestMethod.POST)
	public CategoryResult cat1(@RequestBody CategoryCode msg, HttpSession session) throws IOException {  
		log.info("#################################################");
		log.info("Test PAGE" + " : " + msg.getCat1());
		log.info("#################################################");
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&cat1=";
		String cat1 = URLEncoder.encode(msg.getCat1(), "utf-8");
		url = url + cat1;
		
		this.cat1= cat1;
		
		CategoryResult result = new CategoryResult();
		List<CategoryItem> itemList = new ArrayList<CategoryItem>();
		
//		String ServiceKey = "h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D";
//		String schLineType = "I";
//		
//		String temp = url + "?ServiceKey=" + ServiceKey + "&schLineType=" + schLineType;
		
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
				CategoryItem tempItem = new CategoryItem();
				tempItem.setCode((String)item.get("code").toString());
				tempItem.setName(item.get("name").toString());
				tempItem.setRnum(item.get("rnum").toString());
				
				itemList.add(tempItem);
			}
			
			log.info("#####################################");
			log.info(itemList.get(0));
			log.info("#####################################");
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.setItems(itemList);
		return result;                     
	}
   
	@ResponseBody
	@RequestMapping(value="/cat2", method=RequestMethod.POST)
	public CategoryResult cat2(@RequestBody CategoryCode msg, HttpSession session) throws IOException {  
		log.info("#################################################");
		log.info("Test PAGE" + " : " + msg.getCat2());
		log.info("#################################################");
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&cat1=";
		log.info(url);
		url = url + cat1 + "&cat2=";
		log.info(url);
		String cat2 = msg.getCat2();
		log.info(cat2);
		url = url + cat2;
		log.info(url);
		
		CategoryResult result = new CategoryResult();
		List<CategoryItem> itemList = new ArrayList<CategoryItem>();
		

		
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
			log.info(((JSONObject)itemArray.get(0)).get("firstimage"));
			log.info("#####################################");
			
			for (int i = 0; i < itemArray.size(); i++) {
				JSONObject item = (JSONObject) itemArray.get(i);
				CategoryItem tempItem = new CategoryItem();
				tempItem.setCode((String)item.get("code").toString());
				tempItem.setName(item.get("name").toString());
				tempItem.setRnum(item.get("rnum").toString());
				
				itemList.add(tempItem);
			}
			
			log.info("#####################################");
			log.info(itemList.get(0));
			log.info("#####################################");
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.setItems(itemList);
		return result;                     
	}

	@ResponseBody
	@RequestMapping(value="/cat3", method=RequestMethod.POST)
	public CategoryResult cat3(@RequestBody CategoryCode msg, HttpSession session) throws IOException {  
		log.info("#################################################");
		log.info("Test PAGE" + " : " + msg.getCat3());
		log.info("#################################################");
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?numOfRows=20&pageNo=1&_type=json&MobileOS=ETC&MobileApp=Emp&ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&cat1=";
		log.info(url);
		url = url + cat1 + "&cat2=" + cat2 + "&cat3=";
		log.info(url);
		String cat2 = msg.getCat3();
		log.info(cat2);
		url = url + cat2;
		log.info(url);
		
		CategoryResult result = new CategoryResult();
		List<CategoryItem> itemList = new ArrayList<CategoryItem>();
		

		
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
			log.info(((JSONObject)itemArray.get(0)).get("firstimage"));
			log.info("#####################################");
			
			for (int i = 0; i < itemArray.size(); i++) {
				JSONObject item = (JSONObject) itemArray.get(i);
				CategoryItem tempItem = new CategoryItem();
				tempItem.setCode((String)item.get("code").toString());
				tempItem.setName(item.get("name").toString());
				tempItem.setRnum(item.get("rnum").toString());
				
				itemList.add(tempItem);
			}
			
			log.info("#####################################");
			log.info(itemList.get(0));
			log.info("#####################################");
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.setItems(itemList);
		return result;                     
	}
	
	@ResponseBody
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public CategoryResult result(@RequestBody CategoryCode msg, HttpSession session) throws IOException {  
		log.info("#################################################");
		log.info("Test PAGE" + " : " + msg.getCat3());
		log.info("#################################################");
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D&contentTypeid=15&MobileOS=AND&MobileApp=AppTesting&_type=json&cat1=";
		log.info(url);
		url = url + cat1 + "&cat2=" + cat2 + "&cat3=";
		log.info(url);
		String cat3 = msg.getCat3();
		log.info(cat3);
		url = url + cat3;
		log.info(url);
		
		CategoryResult result = new CategoryResult();
		List<CategoryItem> itemList = new ArrayList<CategoryItem>();
		

		
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
			log.info(((JSONObject)itemArray.get(0)).get("firstimage"));
			log.info("#####################################");
			
			for (int i = 0; i < itemArray.size(); i++) {
				JSONObject item = (JSONObject) itemArray.get(i);
				CategoryItem tempItem = new CategoryItem();
				tempItem.setTitle((String)item.get("title"));
				tempItem.setContentId(item.get("contentid").toString());
				if(item.get("firstimage") != null)
					tempItem.setImage(item.get("firstimage").toString());
				else
					tempItem.setImage("http://placehold.it/699x466");
				itemList.add(tempItem);
			}
			
			log.info("#####################################");
			log.info(itemList.get(0));
			log.info("#####################################");
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		result.setItems(itemList);
		return result;                     
	}
}  










