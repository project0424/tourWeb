package com.tour.webapp.model;

import java.util.List;

public class KeywordResult {
	
	KeywordItem item;
	List<KeywordItem> items;

	public List<KeywordItem> getItems() {
		return items;
	}

	public void setItems(List<KeywordItem> items) {
		this.items = items;
	}

	public KeywordItem getItem() {
		return item;
	}

	public void setItem(KeywordItem item) {
		this.item = item;
	}
	
}
