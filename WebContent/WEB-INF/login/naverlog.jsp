<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<title>네이버 : 로그인</title>
<link href="https://nid.naver.com/favicon_1024.png"
	rel="apple-touch-icon-precomposed" sizes="1024x1024" />
<link rel="stylesheet" type="text/css"
	href="https://nid.naver.com/login/css/mw.css?141216">
</head>
<body class='chrome'>
	<div id="wrap">
		<!-- header -->
		<div id="header">
			<h1>
				<a href="#/login">Tour_Logo</a>
			</h1>
		</div>
		<!-- //header -->
		
		<!-- container -->
		<div id="container">
			<!-- content -->
			<div id="content">
				<form id="frmNIDLogin" name="frmNIDLogin" target="_top"
					AUTOCOMPLETE="off" action="localhost"
					method="post" onsubmit="return confirmSubmit();">
					<input type="hidden" name="enctp" id="enctp" value="1"> <input
						type="hidden" name="encpw" id="encpw" value=""> <input
						type="hidden" name="encnm" id="encnm" value=""> <input
						type="hidden" name="svctype" id="svctype" value="262144">
					<input type="hidden" name="svc" id="svc" value=""> <input
						type="hidden" name="viewtype" id="viewtype" value=""> <input
						type="hidden" name="locale" id="locale" value="ko_KR"> <input
						type="hidden" name="postDataKey" id="postDataKey" value="">
					<input type="hidden" name="smart_LEVEL" id="smart_LEVEL" value="-1">
					<input type="hidden" name="logintp" id="logintp" value="">
					<input type="hidden" name="url" id="url"
						value="http://m.naver.com/"> <input type="hidden"
						name="localechange" id="localechange" value=""> <input
						type="hidden" name="theme_mode" id="theme_mode" value="">
					<input type="hidden" name="pre_id" id="pre_id" value=""> <input
						type="hidden" name="resp" id="resp" value=""> <input
						type="hidden" name="exp" id="exp" value=""> <input
						type="hidden" name="ru" id="ru" value="">
					<fieldset class="login_form">
						<legend class="blind">로그인</legend>
						<div class="input_row" id="id_area">
							<span class="input_box"> <label for="id"
								id="label_id_area" class="lbl">아이디</label> <input type="text"
								id="id" name="id" tabindex="7" accesskey="L" placeholder="아이디"
								class="int" maxlength="41" value="">
							</span>
							<button type="button" disabled="" title="delete" id="id_clear"
								class="wrg">삭제</button>
						</div>
						<div id="err_empty_id" class="error" style="display: none;">아이디를
							입력해주세요.</div>
						<div class="input_row" id="pw_area">
							<span class="input_box"> <label for="pw"
								id="label_pw_area" class="lbl">비밀번호</label> <input
								type="password" id="pw" name="pw" tabindex="8"
								placeholder="비밀번호" class="int" maxlength="16">
							</span>
							<button type="button" disabled="" title="delete" id="pw_clear"
								class="wrg">삭제</button>
							<div id="err_capslock" class="ly_v2" style="display: none;">
								<div class="ly_box">
									<p>
										<strong>Caps Lock</strong>이 켜져 있습니다.
									</p>
								</div>
								<span class="sp ly_point"></span>
							</div>
						</div>
						<div id="err_empty_pw" class="error" style="display: none;">비밀번호를
							입력해주세요.</div>
						<div id="err_invalid_case" class="error" style="display: none;">
							<img src="https://nid.naver.com/login/image/bu.gif">
						</div>
						<span class="btn_login"> <input type="submit" title="로그인"
							alt="로그인" tabindex="12" value="로그인" class="int_jogin"
							onclick="nclks('log.login',this,event)">
						</span>
						<div class="check_info">
							<div class="login_check">
								<span class="login_check_box"> <input type="checkbox"
									id="login_chk" name="nvlong" class="" tabindex="9" value="on"
									onchange="savedLong(this);nclks_chk('login_chk', 'log.keepon', 'log.keepoff',this,event)"
									onclick="msieblur(this);" checked /> <label for="login_chk"
									id="label_login_chk" class="sp">로그인 상태 유지</label>
								</span>
								<div class="ly_v2" id="persist_usage" style="display: none;">
									<div class="ly_box">
										<p>
											개인정보 보호를 위해 <strong>개인 PC에서만 사용하세요.</strong>&nbsp;&nbsp;<a
												target="_blank"
												href="https://help.naver.com/support/contents/contents.nhn?serviceNo=532&categoryNo=1523"
												class="sp btn_check_help">도움말보기</a>
										</p>
									</div>
									<span class="sp ly_point"></span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
				<div class="position_a">
					<div class="find_info">
						<a target="_blank"
							href="https://nid.naver.com/mobile/user/global/idInquiry.nhn?lang=ko_KR"
							onclick="try{nclks('log.searchid',this,event)}catch(e){}">아이디
							찾기</a> <span class="bar">|</span> <a target="_blank"
							href="https://nid.naver.com/mobile/user/global/pwInquiry.nhn?lang=ko_KR"
							onclick="try{nclks('log.searchpass',this,event)}catch(e){}">비밀번호
							찾기</a> <span class="bar">|</span> <a target="_blank"
							href="https://nid.naver.com/join.html?lang=ko_KR&platform=mobile"
							onclick="try{nclks('log.registration',this,event)}catch(e){}">회원가입</a>
					</div>
				</div>
			</div>
		</div>
		<div class="theme_banner">
			<p>
				<a href="#themeCampaignLayer"
					onclick="LoginTheme.openThemeCampaign();nclks('log.themebanner',this,event)">오직
					당신만을 위한 로그인 페이지, 지금 설정해보세요!</a>
			</p>
		</div>
		<footer role="contentinfo">
			<p class="u_cr">
				<span class="u_cri">ⓒ <a target="_blank"
					href="http://www.navercorp.com"
					onclick="nclks('fot.navercorp',this,event)" class="u_cra u_cra_v1">NAVER
						Corp.</a></span> <span class="u_cri u_cri_v1 sp"><a target="_blank"
					href="https://m.help.naver.com/support/service/main.nhn?serviceNo=5640"
					onclick="nclks('fot.help',this,event)" class="u_cra">회원정보 고객센터</a></span>
			</p>
		</footer>
	</div>
	<div class="theme_setting_message" id="themeCampaignLayer"
		style="display: none">
		<div class="setting_message">
			<h3 class="blind">로그인 테마 설정 안내</h3>
			<a href="javascript:LoginTheme.closeThemeCampaign()"
				onclick="nclks('ltg.close',this,event)" class="btn_closed"><span
				class="blind">로그인 테마 설정 안내창 닫기</span></a>
			<h4>
				<span>나만의 개성을 담아,</span><br>더 안전한 로그인!
			</h4>
			<p class="setting_message_txt2">
				늘 보는 밋밋한 로그인 페이지는 이제 그만!<br>가짜 로그인 화면과 구별되는 나만의 로그인 페이지로<br>안전하게
				로그인 하세요. <a href="#" style="display: none" class="btn_view">자세히
					보기</a>
			</p>
			<p class="setting_message_txt">
				내가 설정한 로그인 페이지, 가짜 로그인 화면과 구별되어<br>피싱으로부터 더욱 안전해집니다.
			</p>
			<a href="javascript:LoginTheme.redirectConfigWindow()"
				ontouchstart="nclks('ltg.setting',this,event)"
				class="btn_theme_setting">지금 설정하기</a>
		</div>
	</div>
	<script type="text/javascript"
		src="https://nid.naver.com/login/js/common.all.js?141216">
		
	</script>
	<script type="text/javascript"
		src="https://nid.naver.com/login/js/logintheme.js?150109">
		
	</script>
	<script type="text/javascript">
		var disp_stat = "20";
		var session_keys = "f81VbesF9Wei7zK4,100009897,b78a3a11c2c5081410a1ab02f6b33684847e93c47d830a3c1cf1f55e93019261d1070adc1ba2265b08434160b3b8913a3ba1a906667120ac9c3d88ee877b98e02750c709ec92904a1c58433043a96dd0f10e893bb909902a89dbdd8104e9ed56cb939b8b87,010001";
		var pc_keyboard_close = "<span class=\"sp\">PC 키보드 닫기</span>";
		var pc_keyboard_open = "<span class=\"sp\">PC 키보드 보기</span>";
		var view_char = "한글 보기";
		var view_symbol = "특수기호 보기";

		addInputEvent('id', 'id_area');
		addInputEvent('pw', 'pw_area');

		addDeleteButtonEvent('id', 'id_clear');
		addDeleteButtonEvent('pw', 'pw_clear');
		try {
			if (navigator.appVersion.toLowerCase().indexOf("win") != -1) {
				$('id').style.imeMode = "disabled";
				document.msCapsLockWarningOff = true;
			}
		} catch (e) {
		}
	</script>
	<script type="text/javascript"
		src="https://nid.naver.com/login/js/common.util.js"></script>
	<script type="text/javascript">
		lcs_do();
	</script>
	<script type="text/javascript">
		var nsc = "Mnid.login_kr";
	</script>
	<div id="nv_stat" style="display: none;">20</div>
</body>
</html>








</body>
</html>