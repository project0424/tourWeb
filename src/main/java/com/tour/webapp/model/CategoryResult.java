package com.tour.webapp.model;

import java.util.List;

public class CategoryResult {
	
	CategoryItem item;
	List<CategoryItem> items;

	public List<CategoryItem> getItems() {
		return items;
	}

	public void setItems(List<CategoryItem> items) {
		this.items = items;
	}

	public CategoryItem getItem() {
		return item;
	}

	public void setItem(CategoryItem item) {
		this.item = item;
	}
	
}
