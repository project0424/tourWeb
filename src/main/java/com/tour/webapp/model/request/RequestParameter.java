package com.tour.webapp.model.request;

import java.util.Map;

public class RequestParameter {
	Integer numOfRows = 50;
	Integer pageNo = 1;
	String mobileOS = "AND";
	String mobileApp = "EmpWeb";
	String _type = "json";
	String serviceKey = "h6zjishrjFDEzTiGpC6awTHfseVRQnc0GoyFQltRWtoEeosI69lpvjQum%2FhX9Ugk5qoFMuj%2F4NYGT4%2ByfR%2FQUg%3D%3D";

	public String getQueryString() {
		String queryString="";
		queryString += "numOfRows=" + numOfRows;
		queryString += "&" + "pageNo=" + pageNo;
		queryString += "&" + "MobileOS=" + mobileOS;
		queryString += "&" + "MobileApp=" + mobileApp;
		queryString += "&" + "_type=" + _type;
		queryString += "&" + "ServiceKey=" + serviceKey;
		
		return queryString;
	}
	

	public Integer getNumOfRows() {
		return numOfRows;
	}

	public void setNumOfRows(Integer numOfRows) {
		this.numOfRows = numOfRows;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	public String getMobileOS() {
		return mobileOS;
	}

	public void setMobileOS(String mobileOS) {
		this.mobileOS = mobileOS;
	}

	public String getMobileApp() {
		return mobileApp;
	}

	public void setMobileApp(String mobileApp) {
		this.mobileApp = mobileApp;
	}

	public String get_type() {
		return _type;
	}

	public void set_type(String _type) {
		this._type = _type;
	}

	public String getServiceKey() {
		return serviceKey;
	}

	public void setServiceKey(String serviceKey) {
		this.serviceKey = serviceKey;
	}

}
