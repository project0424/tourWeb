<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			

<!DOCTYPE html>

<html lang="ko" class="">
<head>
<meta charset="utf-8">


<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta property="og:title" content="네이버 모바일 메인">
<meta property="og:url" content="http://m.naver.com/">
<meta property="og:image" content="http://static.naver.net/www/mobile/edit/2015/0429/mobile_20514817711.png">
<meta property="og:description" content="네이버 모바일 메인에서 다양한 정보와 유용한 컨텐츠를 만나 보세요">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="네이버 모바일 메인">
<meta name="twitter:url" content="http://m.naver.com/">
<meta name="twitter:image" content="http://static.naver.net/www/mobile/edit/2015/0429/mobile_20514817711.png">
<meta name="twitter:description" content="네이버 모바일 메인에서 다양한 정보와 유용한 컨텐츠를 만나 보세요">
<link rel="apple-touch-icon-precomposed"  href="http://static.naver.net/www/mobile/edit/2014/0331/mobile_180026457661.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://static.naver.net/www/mobile/edit/2014/0331/mobile_180112833383.png" />

<title>NAVER</title>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?6">

<link rel="stylesheet" type="text/css" href="http://s.nm.naver.net/css/w_g150430.css?2">


<style type="text/css">
.imsv78{background-image:url(http://static.naver.net/www/mobile/edit/2015/0506/mobile_175426799735.jpg)}
@media screen and (-webkit-min-device-pixel-ratio:1.5){
.imsv78{background-image:url(http://static.naver.net/www/mobile/edit/2015/0506/mobile_175437548795.jpg);-webkit-background-size:151px 650px;background-size:151px 650px}
}
</style>
<style>
.sb_btns {display:inline-block;} .u_cbox_head {display:none;}


</style>
<script type="text/javascript" src="../nmain_20150507.min.js"></script>
<script src="http://s.nm.naver.net/js/c/common_20140826.min.js"></script>

<script>

var nsc = "mtop.v4";

document.domain = "naver.com";
var svr = "<!--tmobile606.ntop-->";
if(svr.search(/cmobile101.ntop/) > 0) {JEagleEyeClient.setEnable(true);}
naver = {};naver.main={};
</script>
</head>
<body>
<div class="u_skip"><a href="#ct">본문 바로가기</a></div>



<div class="header">


<div id="sch" class="sch">
<section>
<div class="sch_w _sch_w">
<h1 id="_lg_h" class="lg_h">
<a href="http://m.naver.com/" class="lg_a" onclick="Logo.click()"><img src="http://static.naver.net/www/mobile/edit/2015/0318/mobile_110629401121.png" width="200" height="48" alt="네이버" class="lg_m"></a>
</h1>
<form role="search" name="search" id="search" action="https://m.search.naver.com/search.naver" onSubmit="nclk(this,'sch.search','','');if (oKeywordHistory) oKeywordHistory.add($('query').value);">
<span class="sch_inpw">
<span class="sch_inpw_in">
    <input type="text" id="query" name="query" title="검색어 입력" value="" class="sch_inp" autocomplete="off" maxlength="255" data-initval="" onfocus="this.setAttribute('data-focus','focus');">
<input type="hidden" name="where" value="m" />
<input type="hidden" id="sm" name="sm" value="mtp_hty" />
<button id="clear_input" type="button" class="sch_del" style="display:none"><span class="sprh sprh_del">입력 내용 삭제</span></button>
<button id="_rs_show_btn" type="button" class="sch_btn sch_region" onclick="oKeywordTab && oKeywordTab.hide();nclk(this,'sch.qbtn','','');"><span class="sprh sprh_region">인식검색 펼치기</span></button>
<button id="_rs_hide_btn" type="button" class="sch_btn sch_region_fd" style="display:none" onclick="nclk(this,'sch.qbtn','','');"><span class="sprh sprh_regionfd">인식검색 접기</span></button>
</span>
</span>
<button type="submit" class="sch_submit"><span class="sprh sprh_submit">검색</span></button>
<button id="schn_btn" type="button" class="sch_hw">
<span class="sprh sprh_sch_ham">확장영역 열기</span>

</button>
<a id="set_start" href="/menu.html" class="sch_menu" onclick="nclk(this,'sch.edit','','');">
<span class="sprh sprh_sch_menu">메뉴 순서 변경하기</span>
</a>
</form>
</div>
<div class="u_atcp_wrap">
<div class="u_sggt_wrap2 recent" id="nx_suggest_layer" style="display:none;">
<div class="ani_info_area imsc_af"><span class="u_vc">좌/우로 손가락을 쓸어 넘겨볼 수 있습니다.</span></div>
<div class="sggt_group2" style="position:relative;transition:left 0s linear;-webkit-transition:left 0s linear">
<div class="sggt_area2 recent" id="nx_suggest_recent">
<div class="sggt_fixer">
<div class="sggt_header"><h2 class="tit">최근 검색어</h2></div>
<div class="sggt_container">
<ul class="kwd_lst">
<li onclick="oKeywordHistory.select(event);return false;" data-rank="@rank@"> <a href="#" class="kwd"><span class="fix">@txt@</span></a>
<a href="#" class="bt_del" onclick="oKeywordHistory.remove(event, '@rank@'); return false;"><span class="imsc">삭제</span></a>
<span style="display:none">@in_txt@</span>
</li>
</ul>
<div class="kwd_info kwd_off imsc_bf" id="nx_suggest_recent_off" style="display: none;">최근 검색어 저장 기능이<br>꺼져 있습니다.</div>
<div class="kwd_info kwd_none imsc_bf" id="nx_suggest_recent_nothing" style="display: none;">최근 검색어 내역이<br>없습니다.</div>
</div>
<div class="sggt_footer">
<span class="side_opt_area">
<span class="opt_del"><a href="#" id="nx_suggest_recent_clear">전체삭제</a></span>
<span class="opt_off" id="nx_suggest_recent_unuse"><a href="javascript:;">자동저장 <span class="txt_off">끄기</span><span class="txt_on">켜기</span></a></span>
</span>
<span class="opt_close"><a href="javascript:;" id="nx_suggest_recent_close">닫기</a></span>
</div>
</div>
</div>
<div class="sggt_area2 hot" id="nx_suggest_hot">
<div class="sggt_fixer">
<div class="loading _loading"></div>
<div class="sggt_header">
<div class="side_opt">
<span class="btn_myloc"><a href="#" class="btn imsc_bf _current_location">내위치</a></span>
<span class="btn_chloc"><a href="#" class="btn _change_location">변경</a></span>
</div>
<h2 class="tit">
<div class="kwd_fix">
<div class="kwd_tit">주변 핫검색</div>
<div class="kwd_h _gps_on" style="display:none"></div>
</div>
</h2>
</div>
<div class="sggt_container">
<div class="hot_intro _gps_off">
<div class="intro_spot imsc_af">
<p class="intro_tit"><span>내위치 버튼을 눌러, 위치 설정이 되면 </span>현재 <strong>내 주변의 인기검색어</strong>를<br>주제별로 보실 수 있어요!</p>
</div>
<div class="intro_ex">
<dl>
<dt><span class="tag imsc">예시</span><strong class="kwd_h">광화문</strong> 주변 핫검색</dt>
<dd>
<ul class="kwd_group">
<li class="kwd14"><strong class="imsc">교통</strong><a href="https://m.search.naver.com/search.naver?sm=mtb_clh&where=m&query=%EA%B4%91%ED%99%94%EB%AC%B8%EC%97%AD&mloc_loc=37.573026:126.9768428&mloc_area=&mloc_cid=14" class="kwd"><span class="fix">광화문역</span></a></li>
<li class="kwd10"><strong class="imsc">여행/공연</strong><a href="https://m.search.naver.com/search.naver?sm=mtb_clh&where=m&query=%EC%84%B8%EC%A2%85%EB%AC%B8%ED%99%94%ED%9A%8C%EA%B4%80&mloc_loc=37.573026:126.9768428&mloc_area=&mloc_cid=10" class="kwd"><span class="fix">세종문화회관</span></a></li>
<li class="kwd5"><strong class="imsc">쇼핑</strong><a href="https://m.search.naver.com/search.naver?sm=mtb_clh&where=m&query=%EA%B5%90%EB%B3%B4%EB%AC%B8%EA%B3%A0&mloc_loc=37.573026:126.9768428&mloc_area=&mloc_cid=5" class="kwd"><span class="fix">교보문고</span></a></li>
</ul>
</dd>
</dl>
</div>
</div>
<ul class="kwd_group _hot_kwd_group" style="display:none">
<li class="kwd@categoryId@" data-categoryId="@categoryId@" data-index="@index@" data-rank="@rank@"> <strong class="imsc">@category@</strong><a href="javascript:;" class="kwd _keyword"><span class="fix">@query@</span></a></li>
</ul>
<div class="kwd_info kwd_oversea imsc_bf _oversea" style="display: none;">주변 핫검색이 제공되지 않는 지역입니다.</div>
<div class="kwd_info kwd_none imsc_bf _no_keyword" style="display: none;">검색 이용자 수가 적은 지역에서는<br>주변 핫 검색이 제공되지 않습니다.<br>사람이 더 많은 곳에서 이용해보세요.</div>
<div class="kwd_info kwd_error imsc_bf _network_error" style="display: none;">네트워크 문제가 발생했습니다.<br>잠시 후 다시 확인해주세요. </div>
</div>
<div class="sggt_footer">
<span class="side_opt_area">
<span class="opt_more"><a href="javascript:;" class="imsc_af _more" style="display:none;">주변 핫검색 더보기</a></span>
</span>
<span class="opt_close"><a href="javascript:;" class="_close">닫기</a></span>
</div>
</div>
</div>
</div>
<div class="sggt_page">
<span class="pg_on imsc _page1">1</span>
<span class="pg imsc _page2">2</span>
</div>
</div>
<div class="u_atcp_area" id="autocomplete_layer" style="display:none;">
<script type="text/template" id="_atcp_answer_2"><p class="atcp_crt" onclick="oAutoComplete.selectAnswer(event, 2, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@5@<span> </span><strong class="atcp_crt_sn">@6@</strong></a></p></script>
<script type="text/template" id="_atcp_answer_3"><p class="atcp_crt atcp_lotto" onclick="oAutoComplete.selectAnswer(event, 3, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a"><strong class="tit"><em>@5@</em>회차</strong><time datetime="@datetime@">@13@</time><span class="lotto"><em class="n@6@">@6@</em><em class="n@7@">@7@</em><em class="n@8@">@8@</em><em class="n@9@">@9@</em><em class="n@10@">@10@</em><em class="n@11@">@11@</em><em class="imsc_bf bonus n@12@">@12@</em></span></a></p></script>
<script type="text/template" id="_atcp_answer_9"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 9, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@5@<span class="atcp_exchr_@11@"><strong class="atcp_exchr">@6@</strong>원 <span class="atcp_exchr_arrow">@10@</span>@8@(@9@%)</span><span class="atcp_exchr_pr">@7@</span></a></p></script>
<script type="text/template" id="_atcp_answer_11"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 11, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@14@<span class="atcp_weat">@7@ <strong class="atcp_weat_@12@">@8@<span class="atcp_weat_cels">&deg;c</span></strong> <span class="atcp_weat_bar">ㅣ</span> <span class="atcp_weat_fall">@9@ <strong class="atcp_weat_down_fall">@10@</strong>@11@</span></span> <span class="atcp_weat_pr">@5@</span></a></p></script>
<script type="text/template" id="_atcp_answer_15"><p class="atcp_crt atcp_quick" onclick="oAutoComplete.selectAnswer(event, 15, true, '@1@', '@2@');"><a href="javascript:;" class="imsc_bf atcp_crt_a" data-kin_param="@6@"><span class="quick">&lsquo;@1@&rsquo;</span><span class="atcp_crt_t">지식iN @5@ 답변 보기</span></a></p></script>
<script type="text/template" id="_atcp_answer_17"><p class="atcp_crt atcp_url" onclick="oAutoComplete.selectAnswer(event, 17, false, '@1@', '@2@');"><a href="http://_5_" class="imsc_bf atcp_crt_a" onclick="nclk(this, 'sug.ansdirect', '', '')"><span class="url">@5@</span><span class="atcp_crt_t">사이트로 바로 이동</span></a></p></script>
<script type="text/template" id="_atcp_answer_18"><p class="atcp_crt" onclick="oAutoComplete.selectAnswer(event, 18, true, '@5@', '@2@');"><a href="javascript:;" class="u_atcp_a u_atcp_happy">@5@</a></p></script>
<script type="text/template" id="_atcp_answer_19"><div class="atcp_crt atcp_eatery" onclick="oAutoComplete.selectAnswer(event, 19, true, '@1@', '@2@');"><a href="javascript:;" class="txt name">@5@</a><a href="javascript:;" class="txt addr">@6@</a><div class="btn_area"><a href="tel:@7@" class="btn tel _btn_tel" onclick="nclk(this, 'sug.acall', '', '')"><span class="imsc"></span>@7@</a><a href="http://m.map.naver.com/viewer/map.nhn?pinId=@8@" class="btn map _btn_map" onclick="nclk(this, 'sug.amap', '', '')"><span class="imsc"></span>지도</a><button class="naver-splugin btn sns _btn_sns" data-evkey="ac_restaurant" data-service-name="통합검색" onclick="nclk({}, 'sug.ashare', '', '')"><span class="naver-splugin-c imsc">보내기</span></button></div></div></script>
<script type="text/template" id="_atcp_answer_10"><p class="atcp_crt atcp_crt_sm" onclick="oAutoComplete.selectAnswer(event, 10, true, '@1@', '@2@');"><a href="javascript:;" class="atcp_crt_a">@14@<span class="atcp_weat">@7@ <strong class="atcp_weat_@12@">@8@<span class="atcp_weat_cels">&deg;c</span></strong> <span class="atcp_weat_bar">ㅣ</span> <span class="atcp_weat_fall">@9@ <strong class="atcp_weat_down_fall">@10@</strong><span class="atcp_weat_cels">@11@</span></span></span> <span class="atcp_weat_pr">@5@</span></a></p></script>
<div class="atcp_crt_w _atcp_answer_wrap"></div>
<ul title="자동완성" class="u_atcp u_atcp_at _u_atcp">
<li class="u_atcp_l @li_class@" onclick="oAutoComplete.select(event);return false;" txt-data="@in_txt@">
<a href="javascript:;" class="u_atcp_a @link_css@"><div class="u_atcp_ap">@txt@</div></a>
<button type="button" style="display:@ex_btn@" class="u_atcp_add _u_atcp_add" onmousedown="$Event(event).stop();" onclick="oAutoComplete.extendKeyword(event);return false;"><span class="u_atcp_addb"><span class="u_vc">추가</span></span></button>
<button type="button" style="display:@link_btn@" class="u_atcp_add" onmousedown="$Event(event).stop();" onclick="oAutoComplete.moveURL(event);return false;"><span class="u_atcp_addg">바로이동</span></button>
<span style="display:none" id="rank@rank@">@in_txt@</span>
</li>
</ul>
<div class="u_atcp_fc">
<button type="button" id="switch_input" class="u_atcp_fcb">자동완성 끄기</button>
<span class="u_atcp_dv">|</span>
<button type="button" id="help_input" class="u_atcp_fcb u_atcp_help">도움말</button>
<span class="u_atcp_dv">|</span>
<a href="https://m.help.naver.com/support/contents/contentsView.nhn?contentsNo=1270&lang=ko" class="u_atcp_report" onclick="nclk(this, 'sug.report', '', '');">신고</a>
<button type="button" id="close_input" class="u_atcp_fcb u_atcp_x"><span class="u_atcp_xic"></span>닫기</button>
</div>
</div>
<div class="u_atcp_alert" id="nx_ac_alert" style="display:none;">
<p class="imsc_bf dsc_txt">2015 상반기 재보궐선거 후보에 대해 <span>4월</span><span>29일</span> 선거일까지 자동완성 기능이 제공되지 않습니다. <a href="http://naver_diary.blog.me/220323218769" onclick="nclk(this, 'sug.vote', '', '');">자세히보기</a></p>
</div>
</div>

<div id="_rs_content" class="u_recognize" style="display: none;">
<h3 class="u_vc">인식검색 리스트</h3>

<ul class="lst_reg">
<li class="m1"><a class="_rs_btn" data-query="search?qmenu=voicerecg&version=1" onclick="nclk(this, 'rec.voice', '', '', 1); return false;"><span class="imsc_bf">음성</span></a></li>
<li class="m2"><a class="_rs_btn" data-query="search?qmenu=music&version=1" onclick="nclk(this, 'rec.code', '', '', 1); return false;"><span class="imsc_bf">음악</span></a></li>
<li class="m3"><a class="_rs_btn" data-query="search?qmenu=qrcode&version=1" onclick="nclk(this, 'rec.music', '', '', 1); return false;"><span class="imsc_bf">코드</span></a></li>
<li class="m4"><a class="_rs_btn" data-query="search?qmenu=wine&version=1" onclick="nclk(this, 'rec.wine', '', '', 1); return false;"><span class="imsc_bf">와인</span></a></li>
<li class="m5"><a class="_rs_btn" data-query="search?qmenu=japanese&version=1" onclick="nclk(this, 'rec.jp', '', '', 1); return false;"><span class="imsc_bf">일본어</span></a></li>
<li class="m6"><a class="_rs_btn" data-query="search?qmenu=hanja&version=2" onclick="nclk(this, 'rec.hanja', '', '', 1); return false;"><span class="imsc_bf">한자</span></a></li>
</ul>
</div>
</section>
</div>

<div id="rcre" class="rcre" style="display:none;"></div>
<div id="aside" style="left:-300px"></div>











<div id="nav" class="nav">
<div class="grd_prev"></div>
<div class="grd_next"></div>
<div class="scroll_wrap">
<nav role="navigation">
<ul class="nav_u" data-ids="['NEWS','ENT','SPORTS','BBOOM','LIFE','SHOPPING','VIDEO','CARGAME']">
<li class="nav_l nav_lon" >
<a href="#NEWS" class="nav_a" data-id="NEWS">뉴스</a>
</li>
<li class="nav_l" >
<a href="#ENT" class="nav_a" data-id="ENT">연예</a>
</li>
<li class="nav_l" >
<a href="#SPORTS" class="nav_a" data-id="SPORTS">스포츠</a>
</li>
<li class="nav_l" >
<a href="#BBOOM" class="nav_a" data-id="BBOOM">웹툰·뿜</a>
</li>
<li class="nav_l" >
<a href="#LIFE" class="nav_a" data-id="LIFE">리빙푸드</a>
</li>
<li class="nav_l" >
<a href="#SHOPPING" class="nav_a" data-id="SHOPPING">쇼핑</a>
</li>
<li class="nav_l" >
<a href="#VIDEO" class="nav_a" data-id="VIDEO">동영상</a>
</li>
<li class="nav_l" >
<a href="#CARGAME" class="nav_a" data-id="CARGAME">차·게임</a>
</li>
</ul>
</nav>
</div>
</div>




</div>


 






<div id="ct">
<div id="mflick" style="height:4000px;">
<div id="prepend" class="grid_prepend" style="display:none">
<a href="#" class="grid_prepend_a"><span class="spuio spuio_prepend"></span> 새&nbsp;&nbsp;글</a>
</div>
<div class="flick-container">
<div class="flick-panel">
<div class="wrap id_news" data-id="NEWS">
<!-- -->
<div class="grid1_wrap news_wrap brick-house" data-section="NEWS" data-rev="NEWS/15/0652" data-last="true">
<div class="brick-vowel">
<!-- EMPTY -->
<div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="text/0">
<ul class="uio_text">
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=100&dummy=1505131336&contextIndex=2" class="ut_a" data-area="NEWS" data-clk="cont1" data-gdid="">
軍 "예비군 총기난사, 2명 사망…가해자는 24살.."
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=100&dummy=1505131333&contextIndex=1" class="ut_a" data-area="NEWS" data-clk="cont2" data-gdid="">
국정원 "김정은 집권 이후 간부 70여명 처형"
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=101&dummy=1505131220&contextIndex=2" class="ut_a" data-area="NEWS" data-clk="cont3" data-gdid="">
우리나라 국부 1경1039조원…1인당 1억2676만원
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=102&dummy=1505131411" class="ut_a" data-area="NEWS" data-clk="cont4" data-gdid="">
전국 교육감 "누리과정 책임 교육청에 전가…재정.."
</a>
</li>
<li class="ut_item2">
<div class="ut_div">
<a href="https://m.search.naver.com/search.naver?query=%EB%AF%B8%EC%84%B8%EB%A8%BC%EC%A7%80+%EB%86%8D%EB%8F%84&where=m&sm=mns_nex " class="utd_ra" data-area="NEWS" data-clk="cont6">미세먼지</a>
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=103&dummy=1505131431&contextIndex=1" class="utd_a" data-area="NEWS" data-clk="cont5"><span class="sub_cate">날씨</span>낮 기온 껑충…미세먼지 농도 짙어 </a>
</div>
</li>
</ul>
<div id="rtk" class="rtk">
<h3 class="rtk_tit">실시간급상승</h3>
<ul class="rtk_u">
<li class="rtk_l">
<a href="#" class="rtk_a">
<em class="rtk_n">1</em>
<span class="rtk_t">읍참마속</span>
<span class="rtk_pr"><span class="sp_rtk sprh_rtkup">상승</span><em class="rtkx_s">888</em></span>
</a>
</li>
</ul>
<a href="javascript:naver.main.RTK.expand();" class="rtk_toggle"><span class="sp_rtk sprh_rtk_arrdn">실급검 확장영역 열기</span></a>
</div>
<div id="rtkx" class="rtkx" style="display:none">
<div class="rtkx_tab">
<a href="javascript:naver.main.RTK.move(0);" data-clk="klve" data-area="NEWS" class="rtkx_tab_a rtkx_tab_aon">실시간 급상승</a>
<a href="javascript:naver.main.RTK.move(1);" data-clk="khtp" data-area="NEWS" class="rtkx_tab_a">핫토픽</a>
</div>
<a href="javascript:naver.main.RTK.contract()" class="rtkx_toggle"><span class="sp_rtk sprh_rtk_arr">실급검 확장 접기</span></a>
<h3 class="u_vc">실시간 급상승</h3>
<div id="rtk_flick" class="rtk-flick-view" style="height:416px">
<div class="rtk-flick-container">
<div class="rtk-flick-panel">
<ul class="rtkx_u"></ul>
<div class="rtkx_btm"><p></p></div>
</div>
<div class="rtk-flick-panel">
<ul class="rtkx_u"></ul>
<div class="rtkx_btm rtkx_btm_hot">
<p></p>
<a href="http://n.search.naver.com/hot/search.naver" class="rtkx_hot_a" data-clk="khvw" data-area="NEWS">핫토픽 뷰어</a>
</div>
</div>
<div class="rtk-flick-panel">
<ul class="rtkx_u"></ul>
<div class="rtkx_btm rtkx_btm_hot">
<p></p>
<a href="http://n.search.naver.com/hot/search.naver" class="rtkx_hot_a" data-clk="khvw" data-area="NEWS">핫토픽 뷰어</a>
</div>
</div>
</div>
</div>
<div id="rtk_act" class="rtkx_act">
<a href="javascript:naver.main.RTK.move(0);" class="rtkx_pgn"><span class="sp_rtk sprh_pgnon">1페이지</span></a>
<a href="javascript:naver.main.RTK.move(1)" class="rtkx_pgn"><span class="sp_rtk sprh_pgn">2페이지</span></a>
</div>
</div>
</div>
</div> <div class="grid1 id_uio_thumbnail">
<div class="grid1_inner" data-template="dualImage/1">
<ul class="uio_thumbnail">
<li class="ut_item">
<a href="http://m.news.naver.com/viewer/news?listUrl=http://m.naver.com&host=http%3A%2F%2Fm.news.naver.com%2Fhotissue%2Fmain.nhn%3Fsid1%3D148%26cid%3D852679&id=852679&imgId=1002278" class="ut_a" data-area="NEWS" data-clk="cont7">
<span class="ut_mw"><img src="http://imgnews.naver.net/image/upload/item/2015/05/13/120305184_Untitled-1.jpg?type=f270_166" width="100%" alt="" class="ut_m" data-width="270" data-height="166"><span class="spuio spuio_pic">포토슬라이드</span></span>
<span class="ut_d"><strong class="ut_t">총기사고 부대서 나오는 구급차</strong></span>
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=256&sid3=416&oid=003&aid=0006517508" class="ut_a" data-area="NEWS" data-clk="cont8">
<span class="ut_mw"><img src="http://imgnews.naver.net/image/upload/item/2015/05/13/115526026_1.jpg?type=f270_166" width="100%" alt="" class="ut_m" data-width="270" data-height="166"></span>
<span class="ut_d"><strong class="ut_t">박한철 헌재소장 첫 5·18 참배 "민주주의 역사.."</strong></span>
</a>
</li>
</ul>
</div>
</div>
<div class="grid1 grid_ad" data-da="container_ad_marketing" style="height:0px;overflow:hidden;">
<div class="grid1_inner">
<span class="ad_edge"></span>
<div id="ad_marketing" class="ad ready" style="height: 50px;"></div>
</div>
</div>
<div class="grid1 id_wt2_w">
<div class="grid1_inner" data-template="weather/2">
<div class="wt2_w">
<h3 class="u_vc">날씨</h3>
<ul class="wt2_u _ROLLING">
<li class="wt2_l" >
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">23</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">춘천</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">29</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">강릉</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">23</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">울릉/독도</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">27</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">광주</span>
<span class="wt2_d">
어제보다 <span class="wt2_deg2">6</span> 높음</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">27</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">대구</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">25</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">대전</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">21</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">부산</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">21</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">서울</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">17</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">백령</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">26</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">전주</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">19</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">제주</span>
<span class="wt2_d">
어제보다 <span class="wt2_deg2">2</span> 높음</span>
</dd>
</dl>
</a>
</li><li class="wt2_l" style="display:none">
<a href="http://m.weather.naver.com/m/nationWetr.nhn" class="wt2_a" data-clk="weather" data-area="NEWS" style="background-image: url(http://static.naver.net/m/weather/2014/bg_v1/bg_wt01.jpg)" >
<dl class="wt2_dl">
<dt class="wt2_dt">
<span class="wt2_ic"><span class="imw imw01">맑음</span></span> <span class="wt2_deg">25</span>
</dt>
<dd class="wt2_dd">
<span class="wt2_s">청주</span>
<span class="wt2_d">
<span class="sprh sprh_wt_dust">미세먼지</span> 미세먼지 나쁨</span>
</dd>
</dl>
</a>
</li></ul>
</div>
</div>
</div>
<div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="text/3">
<ul class="uio_text">
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=250&oid=001&aid=0007590811" class="ut_a" data-area="NEWS" data-clk="cont9" data-gdid="">
'OECD 꼴찌' 아동 만족도, 10년내 OECD 평균으로..
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=100&oid=008&aid=0003470262" class="ut_a" data-area="NEWS" data-clk="cont10" data-gdid="">
"예비군 간 아들이 죽었는지 살았는지…" 부모들..
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/hotissue/main.nhn?sid1=100&cid=1015864&dummy=1505131428" class="ut_a" data-area="NEWS" data-clk="cont11" data-gdid="">
'이완구 소환 D-1'…검찰, 수사 상황 막판 정리
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=101&dummy=1505131211" class="ut_a" data-area="NEWS" data-clk="cont12" data-gdid="">
임금피크제 기업이 청년 고용하면 임금 지원한다
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=101&dummy=1505131427&contextIndex=3" class="ut_a" data-area="NEWS" data-clk="cont13" data-gdid="">
국토부 "뉴스테이 임대료 통제는 없다"
</a>
</li>
</ul>
</div>
</div> <div class="grid1 id_uio_thumbnail">
<div class="grid1_inner" data-template="dualImage/4">
<ul class="uio_thumbnail">
<li class="ut_item">
<a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=103&dummy=1505131158&contextIndex=2" class="ut_a" data-area="NEWS" data-clk="cont14">
<span class="ut_mw"><img src="http://imgnews.naver.net/image/upload/item/2015/05/13/105252601_1.jpg?type=f270_166" width="100%" alt="" class="ut_m" data-width="270" data-height="166"></span>
<span class="ut_d"><strong class="ut_t">서울역고가, '수목원' 보행길로 바뀐다</strong></span>
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=257&oid=016&aid=0000724591" class="ut_a" data-area="NEWS" data-clk="cont15">
<span class="ut_mw"><img src="http://imgnews.naver.net/image/upload/item/2015/05/13/113825688_1.jpg?type=f270_166" width="100%" alt="" class="ut_m" data-width="270" data-height="166"></span>
<span class="ut_d"><strong class="ut_t">산부인과인데…분만실이 없네?</strong></span>
</a>
</li>
</ul>
</div>
</div>
<div class="grid1 grid_ad" data-da="AD_NEWS_1">
<div class="grid1_inner" data-template="adBanner/5">
<span class="ad_edge"></span>
<div id="AD_NEWS_1" class="ad ready" style="height:50px">
<span class="ad_load">
<img width="320" height="50" style="vertical-align:top;border:none" alt="AD" src="http://static.naver.net/www/m/guide/dummy_1X1.jpg">
</span>
</div>
</div>
</div>
<div class="grid1 id_toonstk">
<div class="grid1_inner" data-template="webtoonStock/6">
<div class="toonstk">
<h3 class="u_vc">웹툰</h3>
<ul class="toon2_u">
<li class="toon2_l">
<a href="http://m.comic.naver.com/webtoon/weekday.nhn?week=wed" class="toon2_a" data-clk="webtoon" data-area="NEWS">
<span class="toon2_t">웹으로 즐기는<br>만화, 수요웹툰!</span>
<span class="sprh sprh_toon2"></span>
</a>
</li>
</ul>
<h3 class="u_vc">증시</h3>
<ul class="stk2_u _ROLLING">
<li class="toon2_l">
<a href="http://www.pholar.co/pic/22254/890316" class="toon2_a" data-area="NEWS" data-clk="banner3">
<span class="toon2_t">#지금내신발<br>폴라에서 인증!</span>
<span class="toon2_mw"><img src="http://static.naver.net/www/mobile/edit/2015/0513/mobile_10584096470.png" width="50" height="50" alt="" class="toon2_m"></span>
</a>
</li><li class="stk2_l" >
<a href="http://m.stock.naver.com/sise/siseIndex.nhn?code=KOSPI" class="stk2_a" data-clk="stock" data-area="NEWS">
<strong class="stk2_t">코스피</strong>
<span class="stk2_d">
<span class="stk2_v">2,114.16</span>
</span>
<span class="stk2_s stk2_sup">
<span class="stk2_d1"><span class="sprh sprh_stkup">상승</span> 17.39</span>
<span class="stk2_d2">+0.83%</span>
</span>
</a>
</li>
<li class="stk2_l" style="display:none">
<a href="http://m.stock.naver.com/sise/siseIndex.nhn?code=KOSDAQ" class="stk2_a" data-clk="stock" data-area="NEWS">
<strong class="stk2_t">코스닥</strong>
<span class="stk2_d">
<span class="stk2_v">692.23</span>
</span>
<span class="stk2_s stk2_sup">
<span class="stk2_d1"><span class="sprh sprh_stkup">상승</span> 5.49</span>
<span class="stk2_d2">+0.80%</span>
</span>
</a>
</li>
<li class="stk2_l" style="display:none">
<a href="http://m.stock.naver.com/marketindex/item.nhn?marketindexCd=FX_USDKRW" class="stk2_a" data-clk="change"  data-area="NEWS">
<strong class="stk2_t">달러환율</strong>
<span class="stk2_d">
<span class="stk2_v">1,099.5</span>
<span class="stk2_wn">원/$</span>
</span>
<span class="stk2_s stk2_sup">
<span class="stk2_d1"><span class="sprh sprh_stkup">상승</span> 2.9</span>
<span class="stk2_d2">+0.26%</span>
</span>
</a>
</li>
</ul>
</div>
</div>
</div>
<div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="text/7">
<ul class="uio_text">
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=101&sid2=259&oid=008&aid=0003470309" class="ut_a" data-area="NEWS" data-clk="cont26" data-gdid="">
서명하느라 정작 설명 못듣는 보험계약, 간소화한다
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=249&oid=079&aid=0002709470" class="ut_a" data-area="NEWS" data-clk="cont27" data-gdid="">
전·현직 기무사 간부, 레바논에 전략물자 불법 수출
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=257&oid=014&aid=0003426348" class="ut_a" data-area="NEWS" data-clk="cont28" data-gdid="">
'운행 중 학원차량에서 추락 아동 사망' 운전자 구속
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=104&sid2=235&oid=001&aid=0007590886" class="ut_a" data-area="NEWS" data-clk="cont29" data-gdid="">
美필라델피아서 열차탈선…5명 사망·50여명 부상
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=257&oid=055&aid=0000316179" class="ut_a" data-area="NEWS" data-clk="cont30" data-gdid="">
"강제추행 판결, 이상하게 상급심으로만 가면 무죄?"
</a>
</li>
</ul>
</div>
</div> <div class="grid1 id_uio_thumbnail">
<div class="grid1_inner" data-template="dualImage/8">
<ul class="uio_thumbnail">
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=257&oid=033&aid=0000029665" class="ut_a" data-area="NEWS" data-clk="cont31">
<span class="ut_mw lzImg" style="background-color:#b4a69b;"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/13/125426275_1.jpg?type=f270_166" width="100%" alt="" class="ut_m fade" data-width="270" data-height="166"></span>
<span class="ut_d"><strong class="ut_t">'동물공장'보다 '동물농장'이 더 낫지 않을까</strong></span>
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=103&oid=021&aid=0002237335" class="ut_a" data-area="NEWS" data-clk="cont32">
<span class="ut_mw lzImg" style="background-color:#b3a07c;"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/13/122745265_isjy.jpg?type=f270_166" width="100%" alt="" class="ut_m fade" data-width="270" data-height="166"></span>
<span class="ut_d"><strong class="ut_t">'힐링푸드' 뇌에 좋은 꽃게냐, 뼈에 좋은 대게냐</strong></span>
</a>
</li>
</ul>
</div>
</div>
<div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="image/9">
<div class="uio_top">
<h3 class="uio_title">스토리가 있는 뉴스</h3>
</div>
<ul class="uio_text">
<li class="utl_item">
<a href="http://post.naver.com/viewer/postView.nhn?volumeNo=1496346&memberNo=11567548" class="utl_a" data-area="NEWS" data-clk="cont50" data-gdid="ITEM_1006869_2_1002162">
<span class="utl_mw lzImg" style="background-color:#aeabaf"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/12/234940654_Untitled-1.jpg?type=f166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t">호수를 삼키는 싱크홀…'로스트 레이크' 미스터리 </strong>
</span>
</span>
</a>
</li>
<li class="utl_item">
<a href="http://post.naver.com/viewer/postView.nhn?volumeNo=1491695&memberNo=11312542" class="utl_a" data-area="NEWS" data-clk="cont51" data-gdid="ITEM_1006869_3_1002163">
<span class="utl_mw lzImg" style="background-color:#ab9879"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/12/235033902_Untitled-1.jpg?type=f166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t">'엽기적 살인범'은 반드시 검거되는 4가지 이유</strong>
</span>
</span>
</a>
</li>
<li class="utl_item">
<a href="http://post.naver.com/viewer/postView.nhn?volumeNo=1471776&memberNo=11595512" class="utl_a" data-area="NEWS" data-clk="cont52" data-gdid="ITEM_1006869_4_1002164">
<span class="utl_mw lzImg" style="background-color:#d97e48"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/12/235242373_Untitled-1.jpg?type=f166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t">'꼭 한번 맛봐야 한다!' 지역 명물 먹거리 열전</strong>
</span>
</span>
</a>
</li>
</ul>
</div>
</div> <div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="text/10">
<ul class="uio_text">
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=101&sid2=310&oid=001&aid=0007590406" class="ut_a" data-area="NEWS" data-clk="cont63" data-gdid="">
소비자원 백수오 부작용 발표 취소 "소비자불안 우려"
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=101&sid2=263&oid=003&aid=0006517285" class="ut_a" data-area="NEWS" data-clk="cont64" data-gdid="">
日에서 &quot;들기름&quot;, 中에서 &quot;조제분유&quot; 인기몰이
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=105&oid=055&aid=0000316178" class="ut_a" data-area="NEWS" data-clk="cont65" data-gdid="">
공짜 전화 요금제의 불편한 진실
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=105&sid2=230&oid=001&aid=0007590618" class="ut_a" data-area="NEWS" data-clk="cont66" data-gdid="">
PC악성코드 여전히 활개…하루평균 13만개 발생
</a>
</li>
<li class="ut_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=104&sid2=235&oid=016&aid=0000724285" class="ut_a" data-area="NEWS" data-clk="cont67" data-gdid="">
IS 전사와 결혼한 영국 소녀 3인, IS 탈출
</a>
</li>
</ul>
</div>
</div> <div class="grid1 id_uio_text">
<div class="grid1_inner" data-template="image/11">
<div class="uio_top">
<h3 class="uio_title">연재로 읽는 세상</h3>
</div>
<ul class="uio_text">
<li class="utl_item">
<a href="http://m.news.naver.com/hotissue/main.nhn?sid1=103&cid=1010812&dummy=1505131341" class="utl_a" data-area="NEWS" data-clk="cont68" data-gdid="NEWS_4210001413701">
<span class="utl_mw lzImg" style="background-color:#9ca7b2"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/13/134122173_inputTemplate_1054974.jpg?type=f166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t"><span class="sub_cate">기사 속 틀린 맞춤법</span> '황금락카'의 장본인(X)은 루나…뭐가 틀렸지?</strong>
</span>
</span>
</a>
</li>
<li class="utl_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=103&sid2=245&oid=016&aid=0000724391" class="utl_a" data-area="NEWS" data-clk="cont69" data-gdid="NEWS_0160000724391">
<span class="utl_mw lzImg" style="background-color:#eeb671"><img data-src="http://mimgnews1.naver.net/image/origin/016/2015/05/13/724391.jpg?type=nf166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t"><span class="sub_cate">coffee 체크</span> 카페 공부족이 진상? 몇시간까지가 적당한가</strong>
</span>
</span>
</a>
</li>
<li class="utl_item">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=102&sid2=320&oid=096&aid=0000373270" class="utl_a" data-area="NEWS" data-clk="cont70" data-gdid="NEWS_0960000373270">
<span class="utl_mw lzImg" style="background-color:#d2c9af"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/13/110010883_1.jpg?type=f166_114" width="100%" alt="" class="utl_m fade" data-width="166" data-height="114"></span>
<span class="utl_d">
<span class="utl_flex">
<strong class="utl_t"><span class="sub_cate">취재파일</span> 한국이 마약 청정국?…하수에서 마약류 검출, 폭넓은 소비..</strong>
</span>
</span>
</a>
</li>
</ul>
</div>
</div> <div class="grid1 id_uio_photo">
<div class="grid1_inner">
<div class="uio_top">
<a href="http://m.news.naver.com/hotissue/main.nhn?sid1=110&gid=1013197&cid=1013308" class="uio_top_a" data-area="NEWS" data-clk="theme3cont" data-gdid="">
<h3 class="uio_title">수요일 푸드 - 언프리티 바다의 스타</h3>
<span class="spuio spuio_arr_more"></span>
</a>
</div>
<div class="uio_photo">
<ul class="up_l">
<li class="up_item up_item4">
<a href="http://navercast.naver.com/magazine_contents.nhn?rid=1350&attrId=&contents_id=89059&leafId=1350" data-area="NEWS" class="up_a lzImg" style="background-color:#c3a899" data-clk="theme3cont" data-gdid="">
<img data-src="http://imgnews.naver.net/image/upload/item/2015/05/11/193231440_7.jpg?type=nf288_444" width="100%" alt="너희들이 뭔데 날 판단해? 아귀" class="up_m fade"> <div class="up_tw">
<span class="up_dw">너희들이 뭔데 날 판단해? 아귀</span>
</div>
</a>
</li>
<li class="up_item">
<a href="http://navercast.naver.com/magazine_contents.nhn?rid=1350&contents_id=89061&series_id=3763" data-area="NEWS" class="up_a lzImg" style="background-color:#bfb097" data-clk="theme3cont" data-gdid="">
<img data-src="http://imgnews.naver.net/image/upload/item/2015/05/11/191027461_6.jpg?type=nf288_220" width="100%" alt="먹는자와 밀당하는 밀당 해산물 '해삼'" class="up_m fade"> <div class="up_tw">
<span class="up_dw">먹는자와 밀당하는 밀당 해산물 '해삼'</span>
</div>
</a>
</li>
<li class="up_item">
<a href="http://navercast.naver.com/magazine_contents.nhn?rid=1350&contents_id=89062&series_id=3763" data-area="NEWS" class="up_a lzImg" style="background-color:#a6917e" data-clk="theme3cont" data-gdid="">
<img data-src="http://imgnews.naver.net/image/upload/item/2015/05/11/191059316_3.jpg?type=nf288_220" width="100%" alt="아임 낫 미더덕 아냐! 오만둥이" class="up_m fade"> <div class="up_tw">
<span class="up_dw">아임 낫 미더덕 아냐! 오만둥이</span>
</div>
</a>
</li>
</ul>
</div>
</div>
</div>
<div class="grid1 id_uio_best_news">
<div class="grid1_inner" data-template="ageReadTopNews/13">

<div class="uio_best_news _age">
<div class="ubn_top">
<a href="http://m.news.naver.com/rankingList.nhn?type=age" class="ubn_top_a" data-area="NEWS" data-clk="agemore">
<h3 class="ubn_title">연령별 더 많이 본 뉴스</h3>
<span class="spuio spuio_arr_more"></span>
</a>
</div>
<div class="ubn_cnt _age1" style="display:none">
<div class="ubn_tab">
<ul class="ubn_tlist">
<li class="ubn_titem"><a href="#" class="ubn_ta ubn_tab_on" data-area="NEWS" data-clk="age10tit" data-parent="_age" data-class="_age1">10대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age20tit" data-parent="_age" data-class="_age2">20대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age30tit" data-parent="_age" data-class="_age3">30~40대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age50tit" data-parent="_age" data-class="_age4">50대 이상</a></li>
</ul>
</div>
<ul class="ubn_list ubn_favor_list">
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=003&aid=0006517508&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age10list"><span class="sub_num">1</span> [종합]박한철 헌재소장 첫 5·18 참배 &quot;민주주의 역사·희망&quot;</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007590811&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age10list"><span class="sub_num">2</span> 'OECD 꼴찌' 아동 만족도, 10년내 OECD 평균으로 올린다</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=016&aid=0000724391&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age10list"><span class="sub_num">3</span> [coffee 체크] 카페 공부족이 진상? 몇시간까지가 적당한가</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007590283&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age10list"><span class="sub_num">4</span> 부산서 일가족 5명 숨진 채 발견…2명 유서 남겨(종합)</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=096&aid=0000373270&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age10list"><span class="sub_num">5</span> [취재파일] 한국이 마약 청정국?…하수에서 마약류 검출, 폭넓은 소비 가능성</a></li>
</ul>
</div>
<div class="ubn_cnt _age2" style="display:none">
<div class="ubn_tab">
<ul class="ubn_tlist">
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age10tit" data-parent="_age" data-class="_age1">10대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta ubn_tab_on" data-area="NEWS" data-clk="age20tit" data-parent="_age" data-class="_age2">20대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age30tit" data-parent="_age" data-class="_age3">30~40대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age50tit" data-parent="_age" data-class="_age4">50대 이상</a></li>
</ul>
</div>
<ul class="ubn_list ubn_favor_list">
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007590935&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age20list"><span class="sub_num">1</span> 예비군 총기난사 부상자 이송된 국군수도병원 삼엄</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=016&aid=0000724391&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age20list"><span class="sub_num">2</span> [coffee 체크] 카페 공부족이 진상? 몇시간까지가 적당한가</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=018&aid=0003252711&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age20list"><span class="sub_num">3</span> 서울 내곡동 예비군 훈련장서 총기사고…3~4명 쓰러져(1보)</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007590642&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age20list"><span class="sub_num">4</span> 육군 &quot;예비군 총기난사 후 자살&quot;(속보)</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007589857&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age20list"><span class="sub_num">5</span> 영국 최초 여성 육군장관 등장</a></li>
</ul>
</div>
<div class="ubn_cnt _age3" >
<div class="ubn_tab">
<ul class="ubn_tlist">
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age10tit" data-parent="_age" data-class="_age1">10대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age20tit" data-parent="_age" data-class="_age2">20대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta ubn_tab_on" data-area="NEWS" data-clk="age30tit" data-parent="_age" data-class="_age3">30~40대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age50tit" data-parent="_age" data-class="_age4">50대 이상</a></li>
</ul>
</div>
<ul class="ubn_list ubn_favor_list">
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=014&aid=0003426348&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age30list"><span class="sub_num">1</span> '운행 중이던 학원차량에서 추락 아동 사망', 운전자 구속</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=277&aid=0003497113&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age30list"><span class="sub_num">2</span> 누리과정 예산, 시·도교육청 의무 편성한다</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=003&aid=0006517285&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age30list"><span class="sub_num">3</span> 日에서 &quot;들기름&quot;, 中에서 &quot;조제분유&quot; 인기몰이</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=421&aid=0001413701&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age30list"><span class="sub_num">4</span> [기사 속 틀린 맞춤법] ‘황금락카’의 장본인(X)은 루나…뭐가 틀렸지?</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=005&aid=0000771585&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age30list"><span class="sub_num">5</span> “예비군 난사 총기는 K2”… 우리 군 주력소총</a></li>
</ul>
</div>
<div class="ubn_cnt _age4" style="display:none">
<div class="ubn_tab">
<ul class="ubn_tlist">
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age10tit" data-parent="_age" data-class="_age1">10대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age20tit" data-parent="_age" data-class="_age2">20대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta" data-area="NEWS" data-clk="age30tit" data-parent="_age" data-class="_age3">30~40대</a></li>
<li class="ubn_titem"><a href="#" class="ubn_ta ubn_tab_on" data-area="NEWS" data-clk="age50tit" data-parent="_age" data-class="_age4">50대 이상</a></li>
</ul>
</div>
<ul class="ubn_list ubn_favor_list">
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=001&aid=0007590633&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age50list"><span class="sub_num">1</span> 북한 내부에 '이상징후'…김정은 회의론·공포정치 격화</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=003&aid=0006517128&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age50list"><span class="sub_num">2</span> [종합]국정원 &quot;북한, 현영철 인민무력부장 재판없이 총살&quot;</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=009&aid=0003482420&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age50list"><span class="sub_num">3</span> [윤형식 기자의 설레는 은퇴, 두려운 은퇴] 벌써 정년 65세 연장설이 솔솔 </a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=016&aid=0000724554&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age50list"><span class="sub_num">4</span> ‘정치인에 약한 검찰’…홍준표 신병처리 ‘깊은 고민’</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=421&aid=0001413915&ntype=RANKING&rc=N" class="ubn_a" data-area="NEWS" data-clk="age50list"><span class="sub_num">5</span> 김무성 &quot;정부, 公연금 잘됐는지 여부 입장 밝혀라&quot; 압박 (종합)</a></li>
</ul>
</div>
</div>
</div>
</div>
<div class="grid1 id_uio_live">
<div class="grid1_inner" data-template="wideImage/14">
<div class="uio_live">
<a href="http://m.news.naver.com/read.nhn?mode=LSD&sid1=103&sid2=245&oid=412&aid=0000003829" class="ul_a" data-area="NEWS" data-clk="cont89">
<span class="ul_mw lzImg" style="background-color:#bfc19f"><img data-src="http://imgnews.naver.net/image/upload/item/2015/05/13/112451847_2.jpg" width="100%" alt="" class="ul_m fade" data-width="600" data-height="310"></span>
<span class="ul_d"><strong class="ul_t"> [休] 목장의 풍경</strong></span>
</a>
</div>
</div>
</div>
<div class="grid1 id_uio_best_news">
<div class="grid1_inner" data-template="readTopNews/15">
<div class="uio_best_news">
<div class="ubn_top">
<a href="http://m.news.naver.com/rankingList.nhn" class="ubn_top_a" data-area="NEWS" data-clk="ranktopmore">
<h3 class="ubn_title">많이 본 뉴스</h3>
<span class="spuio spuio_arr_more"></span>
</a>
</div>
<ul class="ubn_list">
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=421&aid=0001414134&sid1=100&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">정치</span> 軍 &quot;예비군 총기난사, 2명 사망…가해자는 24살 최모씨&quot;(상보)</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=022&aid=0002832515&sid1=101&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">경제</span> 우리나라 국부 1경1039조원…1인당 1억2676만원</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=003&aid=0006517508&sid1=102&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">사회</span> [종합]박한철 헌재소장 첫 5·18 참배 &quot;민주주의 역사·희망&quot;</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=008&aid=0003470039&sid1=103&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">생활</span> 서울역고가, '수목원' 보행길로 바뀐다</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=016&aid=0000724285&sid1=104&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">세계</span> IS 전사와 결혼한 영국 소녀 3인, IS 탈출</a></li>
<li class="ubn_item"><a href="http://m.news.naver.com/rankingRead.nhn?oid=079&aid=0002709490&sid1=105&ntype=RANKING" class="ubn_a" data-area="NEWS" data-clk="ranktop"><span class="sub_cls">IT</span> &quot;딸 둔 아빠라며 믿게 하더니…라면 40개 보내더라&quot;</a></li>
</ul>
</div>
</div>
</div>
<div class="grid1 id_uio_link">
<div class="grid1_inner" data-template="shortcutList/16">
<ul class="uio_link">
<li class="ul_item"><a href="http://m.news.naver.com/home.nhn" class="ul_a" data-area="NEWS" data-clk="link1">뉴스홈</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=100" class="ul_a" data-area="NEWS" data-clk="link2">정치</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=101" class="ul_a" data-area="NEWS" data-clk="link3">경제</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/officeHome.nhn" class="ul_a" data-area="NEWS" data-clk="link4">언론사별</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=102" class="ul_a" data-area="NEWS" data-clk="link5">사회</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=103" class="ul_a" data-area="NEWS" data-clk="link6">생활</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/newspaper/home.nhn" class="ul_a" data-area="NEWS" data-clk="link7">신문보기</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=104" class="ul_a" data-area="NEWS" data-clk="link8">세계</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/main.nhn?mode=LSD&sid1=105" class="ul_a" data-area="NEWS" data-clk="link9">IT</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/opinion/home.nhn" class="ul_a" data-area="NEWS" data-clk="link10">오피니언</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/rankingList.nhn?type=age" class="ul_a" data-area="NEWS" data-clk="link11">연령별 랭킹</a></li>
<li class="ul_item"><a href="http://m.news.naver.com/rankingList.nhn?type=gender" class="ul_a" data-area="NEWS" data-clk="link12">남녀별 랭킹</a></li>
</ul>
</div>
</div>
<div class="grid1 id_uio_cd_navmenu">
<div class="uio_cd_navmenu">
<div class="ucn_tit_wrap">
<h3 class="ucn_tit">내가 선택한 홈 메뉴 <span class="ucn_gr"><span class="ucn_num"></span>개</span></h3>
<button class="ucn_save"><span class="sprh sprh_save">저장</span></button>
</div>


<ul class="ucn_l">
<li class="ucn_item"><button class="ucn_a checked" data-panel="NEWS"><span class="spuio spuio_ucn_ico"></span>뉴스</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="ENT"><span class="spuio spuio_ucn_ico"></span>연예</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="SPORTS"><span class="spuio spuio_ucn_ico"></span>스포츠</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="BBOOM"><span class="spuio spuio_ucn_ico"></span>웹툰·뿜</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="LIFE"><span class="spuio spuio_ucn_ico"></span>리빙푸드</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="SHOPPING"><span class="spuio spuio_ucn_ico"></span>쇼핑</button></li>
<li class="ucn_item"><button class="ucn_a " data-panel="BEAUTY"><span class="spuio spuio_ucn_ico"></span>패션뷰티</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="VIDEO"><span class="spuio spuio_ucn_ico"></span>동영상</button></li>
<li class="ucn_item"><button class="ucn_a checked" data-panel="CARGAME"><span class="spuio spuio_ucn_ico"></span>차·게임</button></li>
<li class="ucn_item"><button class="ucn_a " data-panel="PICK"><span class="spuio spuio_ucn_ico"></span>20PICK</button></li>
<li class="ucn_item"></li><li class="ucn_item"></li></ul>



<a href="/menu.html" data-area="NEWS" data-clk="editlink" class="ucn_na"><span class="spuio spuio_notice"></span> 메뉴 노출순서까지 변경하고 싶다면?</a>
</div>
</div>

</div>
<div class="brick-vowel"></div>
<div class="brick-vowel"></div>
<div class="brick-vowel"></div>
</div>
</div>
</div>

</div>
</div>
<div id="grid_loading" class="grid_loading" style="display:block;"><span class="ic_loading">로딩중...</span></div>
<div id="more_btn" class="grid_more" style="display:none;"><a href="#" class="gm_a">더보기<span class="sprh sprh_gmarr"></span></a></div>
<div id="panel_preload" style="display:none;"></div>
<div id="check_width" style="display:none;"></div>
</div>
<div id="contents_footer" class="footer_wrap" style="position:relative;display:none;">
<div class="footer">
<div class="fpg">

<div>

<a href="#" class="fpg_a fpg_apv"><span class="sprh sprh_fpgprev">이전</span></a>
<span class="fpg_n"><em class="fpg_non"></em> / </span>
<a href="#" class="fpg_a fpg_anx"><span class="sprh sprh_fpgnext">다음</span></a>
</div>
</div>
<div class="tol">
<span class="tol_fs">
<button type="button" class="tol_fssic" disabled="disabled">가<span class="sprh sprh_tolminus">작게보기</span></button>
<button type="button" class="tol_fslic">가<span class="sprh sprh_tolplus">크게보기</span></button>
</span>

<a href="#" class="tol_top"><span class="sprh sprh_toltop"></span>TOP</a>

</div>
</div>
<p class="tol_mes" style="display:none"></p>
<div class="fot">
<footer role="contentinfo">
<p class="fot_p">
<a href="https://nid.naver.com/nidlogin.login?svctype=262144&url=http://m.naver.com/" class="fot_pa" onclick="nclk(this,'fot.login','','');">로그인</a>
<a href="https://nid.naver.com/mobile/user/help/myInfo.nhn" class="fot_pa" onclick="nclk(this,'fot.myinfo','','');">내 정보관리</a>
<a href="http://www.naver.com/?mobile" class="fot_pa" onclick="nclk(this,'fot.gopc','','');">PC버전</a>

</p>
<p class="fot_p2">
<a href="http://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree1" class="fot_p2a" onclick="nclk(this,'fot.agreement','','');">이용약관</a>
<a href="http://nid.naver.com/mobile/user/help/termAgree.nhn?m=viewTermAgree3" class="fot_p2a" onclick="nclk(this,'fot.privacy','','');">개인정보취급방침</a>
<a href="http://m.searchad.naver.com/" class="fot_p2a" onclick="nclk(this,'fot.sa','','');">검색광고</a>
</p>
<p class="fot_p3">
<a href="http://www.nhncorp.com/" class="fot_p3a" onclick="nclk(this,'fot.nhncorp','','');">ⓒ NAVER Corp.</a>
<a href="https://m.help.naver.com/support/index.nhn" class="fot_p3a" onclick="nclk(this,'fot.help','','');">네이버 고객센터</a>
</p>
</footer>
</div>
</div>

<a id="btn_top" href="#TOP" class="imh im_top" style="opacity:0;display:none">맨위로</a>

<div id="set_start_layer" class="ly_favortab" style="display: none;"></div>
<div id="ly_beauty_event" class="ly_beauty_event" style="display:none;"><div class="area_lbe"><div class="lbe_wrap"><div class="lbe_tw"><p class="lbe_t"></p></div></div></div></div>
<div id="ly_mo_reset" class="ly_mo_reset">
<div class="lmr_b">
<p class="lmr_t">네이버 홈 메뉴를 <br>변경하시겠습니까?</p>
<div class="lmr_bw">
<button class="lmr_btno">아니오</button>
<button class="lmr_btok">예</button>
</div>
</div>
</div>
<div id="dmm" class="dmm"></div>
<script>
window.nbp_corp_da = window.nbp_corp_da || {};
window.nbp_corp_da.service = {};
window.nbp_corp_da.service.setHeight = function() { naver.main.SectionManager.setAdHeight() };
</script>
<script src="http://adcreative.naver.com/ad3/js/min/da.mobile.min.js?20141128"></script>
<script>
function callAvailableFunctionsBeforeOnload() {
resetWeatherForApp();
}
function resetWeatherForApp() {
var url = "/nvweather?d=/include/grid/weatherWidget",
ajax = new XMLHttpRequest();
ajax.open("GET", url, true);
ajax.onreadystatechange = function(){
if(ajax.readyState == 4) {
if(ajax.status == 200) {
var html = ajax.responseText;
if (html.search(/ERROR/) < 0) {
var weather = document.getElementById("ct").querySelector(".wt2_w");
if (weather !== null) {
for(var grid = weather.parentNode; grid.className != "grid1 id_wt2_w"; grid = grid.parentNode);
grid.innerHTML = '<div class="grid1_inner" data-template="weather/2">'+ html +'</div>';
}
}
}
}
}
ajax.send(null);
}
function initVariable() {
$.createNamespace("naver.main").gVariable = {
sViewType : "mobile",
sUaViewType : "mobile",
nLargeCardSize : 15,
nSmallCardSize : 15,
isLogin : false,
sUserGender : "(none)",
notSupportBrowser : "TRUE",
sUaType : "IE",
isApp : false,
sBrowserType : "NATIVE",
sTrace : "",
sDefaultSectionId : "NEWS",
isMobile : false,
bNoFlicking : true,
bDividedLoading : false,
bContentOnly : false,
oRTK : { "t": "2015-05-13T15:08Z", "s": "2015.05.13. (수) 03:08 PM", "d": [ { "k": "읍참마속", "c": "up", "a": "상승", "n": "888" }, { "k": "고은미", "c": "up", "a": "상승", "n": "180" }, { "k": "장영남", "c": "up", "a": "상승", "n": "267" }, { "k": "극비수사", "c": "up", "a": "상승", "n": "258" }, { "k": "몬스타엑스", "c": "up", "a": "상승", "n": "195" }, { "k": "예비군", "c": "up", "a": "상승", "n": "36" }, { "k": "라디오스타", "c": "up", "a": "상승", "n": "63" }, { "k": "고사포", "c": "nw", "a": "", "n": "0" }, { "k": "총기사고", "c": "nw", "a": "", "n": "0" }, { "k": "일본 지진", "c": "up", "a": "상승", "n": "225" } ] },
oHTP : { "t": "2015-05-13T14:00Z", "s": "05.13. (수) 02:00 PM 기준", "u": "2015.05.13. (수) 02:00 PM", "d": [ { "k": "예비군 총기사고", "c": "nw", "a": "", "n": "0" }, { "k": "극비수사 유해진", "c": "nw", "a": "", "n": "0" }, { "k": "현영철 인민무력부장", "c": "nw", "a": "", "n": "0" }, { "k": "문재인 읍참마속 심정", "c": "nw", "a": "", "n": "0" }, { "k": "냄새를 보는 소녀 이원종", "c": "nw", "a": "", "n": "0" }, { "k": "학교다녀오겠습니다 윤소희", "c": "sm", "a": "동일", "n": "0" }, { "k": "추신수 4호 홈런", "c": "nw", "a": "", "n": "0" }, { "k": "택시 장영남", "c": "sm", "a": "동일", "n": "0" }, { "k": "빅뱅 뮤직뱅크", "c": "nw", "a": "", "n": "0" }, { "k": "라디오스타 육중완", "c": "nw", "a": "", "n": "0" } ] },
sAd : "http://mv.ad.naver.com/adshow",

sPanelAll : "NEWS;ENT;SPORTS;BBOOM;LIFE;SHOPPING;BEAUTY;VIDEO;CARGAME;PICK",
sPanelOn : "NEWS;ENT;SPORTS;BBOOM;LIFE;SHOPPING;VIDEO;CARGAME"


};
}
var LogError=function(b){var a=new Image();a.src="http://cecs.naver.com/?m="+b+"&u="+document.location+"&l=1115"};DLScript={quSXI:new Array(),quS:new Array(),retry:0,isLoad:function(a){for(var b=this.quS.length-1;b>=0;b--){if(this.quS[b]===a){return true}}return false},_runOnload:function(b,d,c){if(!d){return}var a=b.readyState;if(typeof a==="undefined"&&!b.onloadDone){b.onloadDone=true;(c)?setTimeout(d,100):b.onload=d;return}if(("loaded"===a||"complete"===a)&&!b.onloadDone){b.onloadDone=true;setTimeout(d,100)}else{if(this.retry<10){this.retry++;setTimeout(function(){DLScript._runOnload(b,d,c)},10)}}},_createJSDom:function(c,b){var a=document.createElement("script");if(b=="src"){a.src=c}else{a.text=c}return a},_appendJSDom:function(a){document.getElementsByTagName("head")[0].appendChild(a)},loadDS:function(b,d,c){if(!this.isLoad(b)){this.quS[this.quS.length]=b;
var a=this._createJSDom(b,"src");this._runOnload(a,d,c);this._appendJSDom(a)}else{if(d){setTimeout(d,100)}}},loadXI:function(c,i,g,d){if(!this.isLoad(c)){this.quS[DLScript.quS.length]=c;var h=this.quSXI.length;if(d){var a={response:null,onload:g,done:false};DLScript.quSXI[h]=a}if(window.localStorage){try{var b=localStorage.getItem("MM_DL_"+c+"_uid");var m=localStorage.getItem("MM_DL_"+c)}catch(j){JEagleEyeClient.sendError("[DL] localStorge getItem() : "+j)}if(m&&i&&b==i){if(d){DLScript.quSXI[h].response=m;DLScript.injectScripts()}else{var f=DLScript._createJSDom(m,"text");DLScript._runOnload(f,g,true);DLScript._appendJSDom(f)}return}}var k=DLScript.getXHRObject();if(!k){JEagleEyeClient.sendError("[DL] XHRObject is NULL");this.loadDS(c,g);return}k.onreadystatechange=function(){if(k.readyState==4){if(k.status==200||k.status==0){var o=k.responseText;
try{if(window.localStorage&&i){DLScript.clearLS();localStorage.setItem("MM_DL_"+c,o);localStorage.setItem("MM_DL_"+c+"_uid",i)}}catch(p){JEagleEyeClient.sendError("[DL] localStorge setItem() : "+p)}if(d){DLScript.quSXI[h].response=o;DLScript.injectScripts()}else{var n=DLScript._createJSDom(o,"text");DLScript._runOnload(n,g,true);DLScript._appendJSDom(n)}}else{JEagleEyeClient.sendError("[DL] status is not 200(0) - "+k.status);DLScript.removeUrl(c);DLScript.clearLS();setTimeout(g,100)}}};var l="";if(i){l=(c.indexOf("?")>0)?"&"+i:"?"+i}k.open("GET",c+l,true);k.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=utf-8");k.setRequestHeader("charset","utf-8");k.send("")}else{if(g){setTimeout(g,100)}}},injectScripts:function(){var a=DLScript.quSXI.length;for(var c=0;c<a;c++){var d=DLScript.quSXI[c];if(!d.done){if(!d.response){break
}else{d.done=true;var b=DLScript._createJSDom(d.response,"text");DLScript._runOnload(b,d.onload,true);DLScript._appendJSDom(b)}}}},getXHRObject:function(){var c=false;try{c=new XMLHttpRequest()}catch(f){var b=["Msxml2.XMLHTTP","Microsoft.XMLHTTP","Msxml2.XMLHTTP.6.0","Msxml2.XMLHTTP.3.0"];var a=b.length;for(var d=0;d<a;d++){try{c=new ActiveXObject(b[d])}catch(f){JEagleEyeClient.sendError("[DL] getXHRObject : "+f.description);continue}break}}finally{return c}},loadWS:function(a){document.write('<script src="'+a+'" type="text/javascript"><\/script>')},clearLS:function(){if(window.localStorage){try{ var aKeys = []; for(var i = 0; i < localStorage.length; i++) { var sKey = localStorage.key(i); if (sKey.indexOf("MM_DL_") != 0) { continue; } aKeys.push(sKey); } for (var idx in aKeys) { localStorage.removeItem(aKeys[idx]); } }catch(a){JEagleEyeClient.sendError("[DL] clearLS : "+a)}}},removeUrl:function(a){for(var b=this.quS.length-1;b>=0;b--){if(this.quS[b]===a){this.quS[b]=""}}}};
var CU={}; CU.resetWeatherForApp = function(){}
var nx_usain_beacon = function() {
var sent = 0;
var tags = [];
var usain_obj = {
send: function(erreport_host) {
if (sent > 0) {
return;
}
sent = 1;
function getResourceTiming() {
if (typeof(window.performance) == "undefined") { return ""}
if (typeof(window.performance.getEntriesByType) == "undefined") { return ""}
if (typeof(window.performance.timing) == "undefined") { return ""}
var t = window.performance.timing;
var e = window.performance.getEntriesByType("resource");
var onload = t.loadEventStart - t.navigationStart;
var cached = {};
cached.css = cached.script = cached.img = 0;
var noncached = {};
noncached.css = noncached.script = noncached.img = 0;
function iscached(t) { return (t.duration == 0) }
for (var i = 0 ; i < e.length; i++) {
if (e[i].fetchStart >= onload) { break; }
switch (e[i].initiatorType) {
case "link":
if (iscached(e[i]))	{ cached.css++; }
else 			{ noncached.css++; }
break;
case "img":
case "css":
if (iscached(e[i]))	{ cached.img++; }
else 			{ noncached.img++; }
break;
case "script":
if (iscached(e[i]))	{ cached.script++; }
else 			{ noncached.script++; }
break;
default:
break;
}
}
var qstr = "rc=" + [cached.css , cached.script, cached.img].join(":") + "&rn=" + [noncached.css, noncached.script, noncached.img].join(":");
return qstr;
};
setTimeout(function() {
var perf = "" ;
function _(t) { return (t?(t-window.performance.timing.navigationStart):0); } ;
if (typeof(window.performance) != "undefined") {
var t = window.performance.timing ;
var n = window.performance.navigation ;
perf =   "navt=" + [_(t.navigationStart), _(t.unloadEventStart), _(t.unloadEventEnd),
_(t.redirectStart), _(t.redirectEnd), _(t.fetchStart),
_(t.domainLookupStart), _(t.domainLookupEnd), _(t.connectStart),
_(t.connectEnd), _(t.requestStart), _(t.responseStart), _(t.responseEnd),
_(t.domLoading), _(t.domInteractive), _(t.domContentLoadedEventStart),
_(t.domContentLoadedEventEnd), _(t.domComplete), _(t.loadEventStart),
_(t.loadEventEnd), n.type, n.redirectCount].join(":") ;
if (document.location.protocol === 'https:') {
tags.push('_ssl');
if (window.chrome && window.chrome.loadTimes && window.chrome.loadTimes().wasFetchedViaSpdy) { tags.push('_spdy') }
}
var os = jindo.$Agent().os();
if (os.android && os.version) {
var version = "";
var vers = os.version.split('.');
if (vers.length == 1) {
version = vers[0];
} else if (vers.length >= 2) {
version = [vers[0], vers[1]].join('_');
}
if (version) {
tags.push('_and' + version);
}
}
}
var queries = [];
if (perf)     { queries.push(perf); }
var rsctiming = getResourceTiming();
if (rsctiming){ queries.push(rsctiming); }
queries.push("tags=" + tags.join(":") );
var u = new Image() ;
u.src = erreport_host + "/er?v=2&" + queries.join("&");
u.onload = function() {
u.onload = null ;
}
}, 250);
},
add_tag: function(tag) {
tags.push(tag);
}
};
return usain_obj;
}();
</script>

<script>
var isOnload = false;

var loadJindo = "http://s.nm.naver.net/js/c/jindo_desktop_20150323.min.js" 
var JSUID = "20150507b";
var loadJSFile = "/js/c/nmain_20150507.min.js";
var retry = 0;
if(!naver.main.LcsLog) { naver.main.LcsLog = (function(gv, gridInfo) {
var gridInfo = gridInfo,
lcsDo = function(sSectionId, htParam) {
try {
setTimeout(function() {naver.main.LcsLog.lcsDo(sSectionId, htParam);}, 500);
} catch(e) {console.error(e); JEagleEyeClient.sendError("[LCS2]lcs_do error : " + e.description); }
};
return { lcsDo : lcsDo };
})(naver.main.gVariable, naver.main.GridInfo);
}
function fReloadCSS(sUrl) {
var elCSS = document.createElement('link');
elCSS.setAttribute('rel', 'stylesheet');
elCSS.setAttribute('type', 'text/css')
elCSS.setAttribute('href', sUrl);
document.getElementsByTagName('head')[0].appendChild(elCSS);
JEagleEyeClient.sendError("[CSS RELOAD] url : " + url);
}
function loadJS() {
if (!isOnload) {
isOnload = true;
DLScript.loadDS(loadJindo, function() {
initVariable();
DLScript.loadXI(loadJSFile, JSUID, ready);
});
// CSS RELOAD
var elHead = document.getElementsByTagName('head')[0];
var sHeadPosition = elHead.style['position'] || document.defaultView.getComputedStyle(elHead, null).getPropertyValue('position') || document.defaultView.getComputedStyle(elHead, null)['position'];
if (sHeadPosition != 'relative') {
fReloadCSS('http://s.nm.naver.net/css/w_g150430.css');
}
}
}
function ready() {
if(typeof window.naver.main.SectionManager == "undefined" && retry < 10) {
retry++;
DLScript.loadDS(mainScript+"?"+JSUID + retry, ready);
setTimeout(function(){if(!isReady){ready();}},1000);
} else {
start();
}
}
function start() {
if(typeof fnClockBanner === "function") {
fnClockBanner();
}
var mms = $Cookie().get("MM_S");
var ids = ($("nav") && eval($Element("nav").query(".nav_u").data("ids"))) || "";
if(ids.indexOf(mms) < 0) {
$Cookie().remove("MM_S");
}
if(mms !== naver.main.gVariable.sDefaultSectionId) {
$Cookie().set("MM_S", naver.main.gVariable.sDefaultSectionId, 1/24/60*10);
}
CommonApp.init();
naver.main.menuStatus(naver.main.gVariable);


naver.main.SectionManager.init();

naver.main.Search.init(naver.main.gVariable);
naver.main.Extension.init();


naver.main.Banner.init();
naver.main.RTK.init();
naver.main.observer.init(naver.main.SectionManager);
naver.main.HorizontalScroll.setHorizontalScrollEventOnTemplate();
if(jindo.m.getOsInfo().ios && !naver.main.gVariable.isApp){
initHistoryAutocomplete("idx", "remoteStorage", false);
}
}

if (window.addEventListener) { window.addEventListener("load", function() { loadJS(); }, true); } else if (window.attachEvent) { window.attachEvent("onload", loadJS); } else { window.onload = loadJS; }
setTimeout(loadJS, 3000);

try { BMR.run("http://sp.naver.com/sp",1); } catch(e) { JEagleEyeClient.sendError("[BMR] run error : " + e.description); }
</script>
</body>
</html>
