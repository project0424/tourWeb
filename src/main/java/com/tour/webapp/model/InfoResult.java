package com.tour.webapp.model;

import java.util.List;

public class InfoResult {
	
	InfoItem item;
	List<InfoItem> items;

	public List<InfoItem> getItems() {
		return items;
	}

	public void setItems(List<InfoItem> items) {
		this.items = items;
	}

	public InfoItem getItem() {
		return item;
	}

	public void setItem(InfoItem item) {
		this.item = item;
	}
	
}
