<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- pagenation.jsp -->
<style type="text/css">
	#carousel div {
/* 		border: 1px solid red; */
	}
</style>

<div id="carousel" class="container">
<h1>Pagenation example</h1>
    <pagination total-items="totalItems" ng-model="currentPage" ng-change="pageChanged()"></pagination>
    <pagination boundary-links="true" total-items="totalItems" ng-model="currentPage" class="pagination-sm" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"></pagination>
    <pagination direction-links="false" boundary-links="true" total-items="totalItems" ng-model="currentPage"></pagination>
    <pagination direction-links="false" total-items="totalItems" ng-model="currentPage" num-pages="smallnumPages"></pagination>
    <pre>The selected page no: {{currentPage}}</pre>
    <button class="btn btn-info" ng-click="setPage(3)">Set current page to: 3</button>

    <hr />
    <h4>Pager</h4>
    <pager total-items="totalItems" ng-model="currentPage"></pager>

    <hr />
    <h4>Limit the maximum visible buttons</h4>
    <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true"></pagination>
    <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages"></pagination>
    <pre>Page: {{bigCurrentPage}} / {{numPages}}</pre>

</div>
<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
