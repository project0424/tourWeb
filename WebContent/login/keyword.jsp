<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="jumbotron">
	<h1>Keyword</h1>
	<form class="form" data-ng-submit="submit()">
		<div class="form-group form-block">
			<input type="text" class="form-control" name="keyword" id="keyword" placeholder="검색어를 입력하세요" data-ng-model="keyword"> 
		</div>
		<button type="submit" class="btn btn-info btn-block">검색</button>
	</form>
	
	<ul class="list-group">
		<li class="container btn btn-default list-group-item" style="text-align: left;" data-ng-click="info($index)" data-ng-repeat = "item in result.items">
	        <img src="{{item.image}}" style="width: 5em"> {{item.contentId}} Title : {{item.title}}
		</li>
	</ul>
</div>

















