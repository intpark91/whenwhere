<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test section</title>
<meta name="description"
	content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<link
	href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="../css/styles.css" />
<link rel="stylesheet" href="../css/board.css" type="text/css">
<style>
h2 {
	padding-top: 10px;
}

.banner {
	background-color: black;
}
</style>

</head>
<body>
	<jsp:include page="../component/topNav.jsp" />
	<section class="bg-primary" id="one">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-6 col-lg-offset-3 col--8 col-md-offset-2 text-center">

					<div id="all" class="clearfix">
						<!--2015.12.07 수정-->
						<div class="con_area">
							<div class="board_box">
								<div class="bbs_info">
									<div class="page">
										Total : 349개 / Page : <em>1</em> / 35
									</div>
									<div class="search">
										<form action="http://tour.jb.go.kr/board/list.do"
											name="rfc_bbs_searchForm" class="rfc_bbs_searchForm"
											method="get" id="searchForm">
											<legend>전체검색</legend>
											<input type="hidden" name="orderBy" value=""> <input
												type="hidden" name="boardId" value="BBS_0000001">

										</form>

										<form action="http://tour.jb.go.kr/board/list.do"
											id="searchForm" name="rfc_bbs_searchForm"
											class="rfc_bbs_searchForm" method="get">
											<input type="hidden" name="orderBy" value=""> <input
												type="hidden" name="boardId" value="BBS_0000001"> <input
												type="hidden" name="startPage" value="1"> <input
												type="hidden" name="menuCd" value="DOM_000000104005000000">
											<input type="hidden" name="contentsSid" value="27"> <input
												type="hidden" name="skinId" value="SKIN_0000002"> <select
												name="searchType" id="searchType" class="TypeSelect">
												<option value="DATA_TITLE">제목</option>
												<option value="DATA_CONTENT">내용</option>
											</select> <input type="text" title="검색값입력" id="keyword" name="keyword"
												class="b_search_input" value="">
											<button type="submit" class="searchBtn">검색</button>
										</form>


									</div>
								</div>

								<div class="bbs_list">
									<table class="list_1"
										summary="글번호,제목,첨부파일,조회수,작성자,작성일를 표시하고 있다.">
										<caption>공지사항 게시판 리스트</caption>
										<colgroup>
											<col width="10%">
											<col width="*">
											<col width="8%">
											<col width="6%">
											<col width="10%">
											<col width="12%">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">글번호</th>
												<th scope="col">제목</th>
												<th scope="col">첨부파일</th>
												<th scope="col">조회수</th>
												<th scope="col">작성자</th>
												<th scope="col">작성일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>공지</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=347">전라북도
														관광명예부지사 공개추천 안내</a></td>
												<td><img
													src="./전라북도 토탈관광 - 여행도우미_공지사항_files/icon_file.gif"
													alt="첨부파일 있음"></td>
												<td>20</td>
												<td>관리자</td>
												<td>2016.05.13</td>
											</tr>
											<tr>
												<td>공지</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=272">제13회
														전라북도관광사진 전국공모전</a></td>
												<td></td>
												<td>51</td>
												<td>관리자</td>
												<td>2016.04.12</td>
											</tr>
											<tr>
												<td>347</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=365">아중호수,
														자연친화적 휴양형 관광명소 된다!</a></td>
												<td></td>
												<td>8</td>
												<td>관리자</td>
												<td>2016.05.24</td>
											</tr>
											<tr>
												<td>346</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=355">미국
														웨스트포인트 사관생도와 함께하는 태권도원 글로벌캠프</a></td>
												<td><img
													src="./전라북도 토탈관광 - 여행도우미_공지사항_files/icon_file.gif"
													alt="첨부파일 있음"></td>
												<td>56</td>
												<td>관리자</td>
												<td>2016.05.18</td>
											</tr>
											<tr>
												<td>345</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=350">가자!
														대한민국 보물창고 유네스코 창의도시 전주로~</a></td>
												<td><img
													src="./전라북도 토탈관광 - 여행도우미_공지사항_files/icon_file.gif"
													alt="첨부파일 있음"></td>
												<td>23</td>
												<td>관리자</td>
												<td>2016.05.16</td>
											</tr>
											<tr>
												<td>344</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=345">[뉴스]대아수목원으로
														금앙화 봄꽃 구경 오세요 !</a></td>
												<td></td>
												<td>17</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>343</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=344">[뉴스]
														전라북도, 봄철 여행주간(5.1.～14.) 농촌방문객 20% 할인서비스 제공</a></td>
												<td></td>
												<td>14</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>342</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=343">[뉴스]
														설렘 가득한 완주의 봄, 완주군 다양한 프로그램 진행</a></td>
												<td></td>
												<td>9</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>341</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=342">[뉴스]프러포즈는
														완주 모악산에서! ‘완주 프러포즈 축제’ 열린다.</a></td>
												<td></td>
												<td>6</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>340</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=341">[뉴스]제86회
														춘향제 한눈에 보는 “관람팁”</a></td>
												<td></td>
												<td>6</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>339</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=340">[뉴스]옥정호
														근교 유채꽃 만발 </a></td>
												<td></td>
												<td>4</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
											<tr>
												<td>338</td>
												<td><a
													href="http://tour.jb.go.kr/board/view.do?skinId=SKIN_0000002&amp;boardId=BBS_0000001&amp;menuCd=DOM_000000104005000000&amp;startPage=1&amp;dataSid=339">[뉴스]2016
														순창 세계소스박람회 구경 오세요</a></td>
												<td></td>
												<td>8</td>
												<td>관리자</td>
												<td>2016.05.11</td>
											</tr>
										</tbody>
									</table>
									<script>
										var summary = '';
										$('.list_1 thead tr th').each(
												function(idx, el) {
													var str = trim($(this)
															.text());
													if (str != '')
														summary += str + ",";
												});
										$('.list_1').attr(
												'summary',
												summary.substr(0,
														summary.length - 1)
														+ '를 표시하고 있다.');
									</script>
								</div>
								<!--RFC 공통 버튼 시작-->
								<!--RFC 공통 버튼 끝-->
								<div id="count">
									<ul>
										<li><a onclick="linkPage(1); ">&lt;&lt;</a></li>
										<li><a onclick="linkPage(1); ">&lt;</a></li>
										<li class="page"><strong>1</strong></li>
										<li class="page"><a onclick="linkPage(2); ">2</a></li>
										<li class="page"><a onclick="linkPage(3); ">3</a></li>
										<li class="page"><a onclick="linkPage(4); ">4</a></li>
										<li class="page"><a onclick="linkPage(5); ">5</a></li>
										<li class="page"><a onclick="linkPage(6); ">6</a></li>
										<li class="page"><a onclick="linkPage(7); ">7</a></li>
										<li class="page"><a onclick="linkPage(8); ">8</a></li>
										<li class="page"><a onclick="linkPage(9); ">9</a></li>
										<li class="page"><a onclick="linkPage(10); ">10</a></li>
										<li><a onclick="linkPage(11); ">&gt;</a></li>
										<li><a onclick="linkPage(35); ">&gt;&gt;</a></li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
				
	</section>
	<jsp:include page="../component/footer.jsp" />
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
	<script src="../js/scripts.js"></script>
</body>
</html>