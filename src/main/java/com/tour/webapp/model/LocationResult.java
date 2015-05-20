package com.tour.webapp.model;

import java.util.List;

public class LocationResult {
	
	LocationItem item;
	List<LocationItem> items;

	public List<LocationItem> getItems() {
		return items;
	}

	public void setItems(List<LocationItem> items) {
		this.items = items;
	}

	public LocationItem getItem() {
		return item;
	}

	public void setItem(LocationItem item) {
		this.item = item;
	}
	
}
