<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="jumbotron">
	<h5>Keyword</h5>
	<form class="form" data-ng-submit="search()">
		<div class="form-group form-block">
			<input type="text" class="form-control" name="keyword" id="keyword"
			placeholder="검색어를 입력하세요" data-ng-model="keyword">
		</div>
		<button type="submit" class="btn btn-info btn-block">검색</button>
	</form>
	<br>
	
	<ul class="list-group">
		<li class="container btn btn-default list-group-item" style="text-align: left;" 
			data-ng-click="info($index)" data-ng-repeat="item in response.body.items.item">
        	<img src="{{item.firstimage}}" style="width: 4em; height: 3em"> 
        	<span style="width: 100%"> {{item.title}} {{item.firstimage}}</span>
		</li>
	</ul>
	<div align="center">
		<pagination data-ng-change="changePage()" total-items="response.body.totalCount" 
		data-ng-model="currentPage" max-size="10" class="pagination-sm" boundary-links="true" 
		rotate="false"></pagination>
	</div>
	<hr>
	{{response}}
</div>








