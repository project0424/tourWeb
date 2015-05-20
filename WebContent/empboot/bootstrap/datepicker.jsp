<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- datepicker.jsp -->
<style type="text/css">
	#datepicker div {
/* 		border: 1px solid red; */
	}
	#datepicker .full button span {
	    background-color: limegreen;
	    border-radius: 32px;
	    color: black;
  	}
  	#datepicker .partially button span {
	    background-color: orange;
	    border-radius: 32px;
	    color: black;
  	}
	
</style>

<div id="datepicker" class="container">
<h1>datepicker example</h1>

	<pre>Selected date is: <em>{{dt | date:'fullDate' }}</em></pre>

    <h4>Inline</h4>
    <div style="display:inline-block; min-height:290px;">
      <datepicker ng-model="dt" min-date="minDate" show-weeks="true" class="well well-sm" custom-class="getDayClass(date, mode)"></datepicker>
    </div>

    <h4>Popup</h4>
    <div class="row">
        <div class="col-md-6">
            <p class="input-group">
              <input type="text" class="form-control" datepicker-popup="{{format}}" ng-model="dt" is-open="opened" min-date="minDate" max-date="'2015-06-22'" datepicker-options="dateOptions" date-disabled="disabled(date, mode)" ng-required="true" close-text="Close" />
              <span class="input-group-btn">
                <button type="button" class="btn btn-default" ng-click="open($event)"><i class="glyphicon glyphicon-calendar"></i></button>
              </span>
            </p>
        </div>

        <div class="col-md-6">
            <p class="input-group">
              <input type="date" class="form-control" datepicker-popup ng-model="dt" is-open="opened" min-date="minDate" max-date="'2015-06-22'" datepicker-options="dateOptions" date-disabled="disabled(date, mode)" ng-required="true" close-text="Close" />
              <span class="input-group-btn">
                <button type="button" class="btn btn-default" ng-click="open($event)"><i class="glyphicon glyphicon-calendar"></i></button>
              </span>
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label>Format:</label> <select class="form-control" ng-model="format" ng-options="f for f in formats"><option></option></select>
        </div>
    </div>

    <hr />
    <button type="button" class="btn btn-sm btn-info" ng-click="today()">Today</button>
    <button type="button" class="btn btn-sm btn-default" ng-click="dt = '2009-08-24'">2009-08-24</button>
    <button type="button" class="btn btn-sm btn-danger" ng-click="clear()">Clear</button>
    <button type="button" class="btn btn-sm btn-default" ng-click="toggleMin()" tooltip="After today restriction">Min date</button>



</div>
<script type="text/javascript">
// 	$('#grid #result').html("Grid loading...");
</script>
