# 드렁큰 Bros - 와인 리뷰 사이트

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfNDgg/MDAxNTU3NzkzNzM1NjUy.meuFSBz9Lh1esv3p6K8QoNu12jyJpq0sij3ANvZUG0sg.BXQi-kutrkW08HXyFuF1qAYVTAkhAln2Unlu6obevqMg.PNG.ppossing/01.png?type=w2">
<br>
<h3>0. 주제선정 이유</h3>
  <ul>
    <li>인강 평가 사이트를 준비하던 중, 주류 평가 사이트가 없는 점에 착안하여 단순히 프로젝트용이 아닌 쓰임 받을 수 있는 홈페이지가 될 수도 있겠다는 생각에 주제로 선정하게 되었습니다.</li>  
  </ul>

<h3>1. 소개</h3>
<ul>
  <li>MVC2 방식으로 만든 주류 리뷰사이트입니다.</li>
  <li>관리자 페이지에서는 주류 정보 등록 및 회원관리가 가능합니다.</li>
  <li>회원들은 주류 정보에 자유롭게 평점을 매기고 리뷰를 작성할 수 있습니다.</li>
  <li>회원들이 등록한 리뷰 평점의 평균점수가 주류의 전체 평점이 됩니다.</li>
  <li>다른 이의 리뷰에 대한 신고기능이 구현되어 있습니다. 신고 내용은 관리자 이메일로 전송됩니다.</li>
</ul>
<h3>2. 사용기술</h3>
<ul>
  <li>DB : MySql - CRUD 구현</li>
  <li>JSP, JSTL, EL</li>
  <li>Spring MVC 패턴의 Model2 활용 - 어노테이션 기반</li>
  <li>myBatis 연동 / xml을 통한 매핑</li>
  <li>AOP(Aspect-Oriented Programming)로 관리자 페이지 공통로직 구현</li>
  <li>Tomcat 8.5 - 서버 구축 및 사용</li>
  <li>Javax.mailAPI를 통하여 운영진 메일로 메일 발송 기능구현</li>
</ul>

<h3>3. 맡은역할</h3>
<ul>
  <li>초기 기획 및 디자인</li>
  <li>DB 검수</li>
  <li>회원가입, 로그인 및 회원관리 부문 전담</li>
  <li>관리자 로그인 체크를 위한 AOP 구현</li>
  <li>관리자 회원관리 페이지 구현 및 주류 관리 페이지 분담</li>
  <li>클라이언트 리뷰 페이지 리스트 보기, 페이징 구현</li>
  <li>클라이언트 리뷰 상세 페이지 분담</li>
  <li>서버 업로드 및 서버 관리</li>
</ul>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTg2/MDAxNTU3Nzk2NjM1OTc5.5BAqiVZqEJ6MqQ8KQYaEwADUWX0ENEYVLRAVIRhT8Qkg.wy0fYCRYMSP851jbrOVveYNtEiMp6bdbapqI2yQgUbIg.PNG.ppossing/26.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTE4/MDAxNTU3NzkzNzM4MDk4.7RIsDMn38JpzGRV9QZZBmQzeeTWXiIY2wSqW-KjQPEMg.r1zh3QQh71E_c3B3w0Xp8o0Kpy0SMKtuZnA7oYdP0pgg.PNG.ppossing/06.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMjQ0/MDAxNTU3NzkzNzM4Mzgx.s8XsPmq2WK20VyaTxfHDisimS_eRfTzp-M7VXEEbHY8g.Yfmrsrf90eAZNj7E5G8jtINTcurb9-53GqyNVI4fCR8g.PNG.ppossing/07.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTEy/MDAxNTU3NzkzNzM4ODI5.qVeWH9k9etQ6kGkao2oTIA48X--XPJhkRiQA63xqsXwg.STWcXUe2Sm8vcW06zEYkx0MrgrQDZA3CwUcgTfnENA0g.PNG.ppossing/08.png?type=w2">

<p></p>
<ol>
  <li>SHA 256을 이용한 비밀번호 암호화 처리</li>
  <li>어노테이션 기반 AOP 를 이용한 보안처리 - 비로그인자가 관리 페이지 접근시 강제로 관리자 로그인 페이지로 이동</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTIg/MDAxNTU3NzkzNzM5NjQy.BFALrHvGgQ47nHP60eeOJ0lY-D20lw7vdCCG3jwkR6Ug.4d5bBDTfsAEa8pd6DH5TFqcQsM6BeuK7k8--f1dc1IAg.PNG.ppossing/09.png?type=w2">

<ul>
  <li>관리 테이블의 각 수정, 삭제기능을 Modal 팝업을 이용해 처리</li>
</ul>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTIg/MDAxNTU3NzkzNzM5NjQy.BFALrHvGgQ47nHP60eeOJ0lY-D20lw7vdCCG3jwkR6Ug.4d5bBDTfsAEa8pd6DH5TFqcQsM6BeuK7k8--f1dc1IAg.PNG.ppossing/10.png?type=w2">

<p></p>
<ol>
  <li>이미지가 하나 이상일 경우 Carousel 효과 처리</li>
  <li>JQuery, Multiple 속성을 이용한 다중파일 선택기능 구현</li>
  <li>스프링의 CommonsMultipartResolver를 이용한 파일업로드 구현</li>
  <li>CKEditor를 적용한 상세내용 작성기능 </li>
</ol>
<br>


<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTk4/MDAxNTU3NzkzNzQwMDMx.yC9FnSOw9FUfeJMhnRIzI6gaIVIcVEmn639YwrdWABog.C7T56nKjgz0qGXw1Nb91KuCVNArpeqk_fA-Iu4Ypp04g.PNG.ppossing/11.png?type=w2">

<p></p>
<ol>
  <li>Category입력 폼 - JQueery Ajax를 이용한 비동기 요청처리</li>
  <li>Modal 팝업창을 이용한 수정, 삭제처리 구현</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMjU4/MDAxNTU3NzkzNzQwNDM0.dZP-R-sWfl5hv693PqMkBg-5Dmd5Oqy2Fjqdv3J_cywg.mlRs8WBpyrX69BwUTZLwQecaPZan8_4qYHCbvllDVgwg.PNG.ppossing/12.png?type=w2">

<p></p>
<ol>
  <li>하위 분류 출력 - 상위 카테고리를 JQueryAjax를 적용한 비동기 방식의 로드</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMjUg/MDAxNTU3NzkzNzQwNzk1.osp_RUhQb6WZ2DmOSP8C1XsR6Iyv0wWUWwb7rDesmwUg.GkG3ov95hERaZzoiCH7eTuIWjVyuYxHBx_dCHxzKwvYg.PNG.ppossing/13.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfNjMg/MDAxNTU3NzkzNzQxMTg1.Kn4KgIB6fnHZMMyjKTqsKc2FFx0ACa1JrrGP1vn_RIog.tbttFs2sFy1lmAFkPsV-Xwj1TgHrpe-Fs_em6eHz6dcg.PNG.ppossing/14.png?type=w2">

<p></p>
<ol>
  <li>SHA 256를 이용한 암호화 처리</li>
  <li>연락처 정보 유효성 처리</li>
  <li>GregorianCalendar를 이용한 윤달 구현</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTA2/MDAxNTU3NzkzNzQxNjI3.NW3rQWofgh-R4aPyr76uxjchSUbMVXGfjN1wXtIttygg.q7G6Gev-44PClvltjHxTGJBYjOCWCk74Mw-ehAxjI64g.PNG.ppossing/15.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTcw/MDAxNTU3NzkzNzQxOTc4.xyACyrEIIW_ev6LMgfsy-lFy9pij0FwlVwbb5k00bC0g.40PwURZdqBukC8LKaV01NJUQZpNmvchh4MruBk7ByVAg.PNG.ppossing/16.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfNjMg/MDAxNTU3NzkzNzQyNDI3.gNvZ11HiFLNNgYVnu5DkfDxdQEUfnjAEJz96fglGTwIg.WQWnPuAzj7d7r8MSQEuNl8jhtqayDG4hrbO9o7Oibogg.PNG.ppossing/17.png?type=w2">

<p></p>
<ol>
  <li>Javax.mailAPI와 SpringContextSupport를 사용하여 일치하는 회원정보의 이메일로 메일 발송 기능 구현</li>
  <li>1번 과정을 거쳐 받은 메일로 기재된 내용을 통해 비밀번호 재설정 기회부여</li>
  <li>비밀번호 재설정 페이지의 URL은 보안을 위해 암호화</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMjY2/MDAxNTU3NzkzNzQyOTEy._IUJh86kJUNm8kCqBZFKCe7eHxgXZANlNP3Api3LMYgg.TbpdCht3lyv9GOM8HCWMaDWEvdjvnaeFgLrPuVhWBukg.PNG.ppossing/18.png?type=w2">

<p></p>
<ol> 
  <li>오늘의 추천 와인 정보 출력</li>
  <li>조회수 순, 상위 3위 내의 Wine 정보 가져오기</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTcy/MDAxNTU3NzkzNzQzMzMz.Bc3HnCQMKexgzatR-V5rpCDFX3Ji3lNM8aTCzg4cxtQg.jlY49I8ulgO6cvJFP2id417U5002lLPt8Vi3yYrN6dkg.PNG.ppossing/19.png?type=w2">

<p></p>
<ol> 
  <li>와인정보 출력폼</li>
  <li>와인 평균 평점 및 조회수 출력 구현 - 평점 부여 알고리즘을 적용한 SetScore 클래스 정의</li>
  <li>페이징 처리 및 검색기능 구현</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfNTMg/MDAxNTU3NzkzNzQzNzEz.AiY2ZJjgy59Z8V_C45i6UU14Vj7-bc-Z14tKj79Bg84g.KMr-6kcLiRWx91XtedMmKRO_dz8lMRHucOfPaTES98og.PNG.ppossing/20.png?type=w2">

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMTEw/MDAxNTU3NzkzNzQ0MDg0.qTfRMaCTB5huyn6HgkbGBIHVdC-9afgNcccQJ5l-ZD4g.VA-IAULh-7hVLl9piYpEhrDDG-4gC4GdFZObZgdkFEYg.PNG.ppossing/21.png?type=w2">

<p></p>
<ol> 
  <li>전체 평점 계산결과 출력</li>
  <li>별과 평점을 동기화시켜 별점 선택시 평점의 동적 변경</li>
  <li>사용자 리뷰 등록</li>
  <li>신고 팝업 띄우기 - 신고시 관리자에게 입력 양식 데이터를 이메일로 전송</li>
  <li>리뷰 삭제시 글 작성자와 동일인 여부를 확인하여 삭제 허용여부를 결정</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMjg5/MDAxNTU3NzkzNzQ0NTE3.QP-fsUBLBsAnQrN7Eit75b4TUTVDiSCcJWCwPuDwwbcg.EyAGgCRep328lMdlPDz6y34GHEMKikFloBbowSBmjkgg.PNG.ppossing/22.png?type=w2">

<p></p>
<ol> 
  <li>스프링이 지원하는 이메일 발송기능(Javax.mailAPI)을 이용하여 신고시 관리자에게 입력 양식 데이터를 이메일로 전송</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMzcg/MDAxNTU3NzkzNzQ0OTM1.e3t1gS3nINL_ebCt1s0WyzPVT9J3etpYBGJpKf0aozkg.U0BfYZmTRnbigMUxLXGjwyNRQOSSCoofaSXzFHMma_Ig.PNG.ppossing/23.png?type=w2">

<p></p>
<ol> 
  <li>조회수 증가 구현 - MybatisSpring과 SpringMVC 패턴을 이용한 조회수 증가 구현</li>
  <li>게시글 페이징 구현 - Pager 클래스를 이용하여 게시판 페이징처리 구현</li>
  <li>검색기능 구현</li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfNjIg/MDAxNTU3NzkzNzQ1NTE3.VAjT-I5InPhdgk5irKn38jv3kp_N_mD2k9wL8eflyBsg.rQM80b4b6jIDfy8yn5GSCakSnBZ9Tefseb9zeZQit8Qg.PNG.ppossing/24.png?type=w2">

<p></p>
<ol> 
  <li>게시판 CRUD 구현</li>
  <li>JQuery Ajax를 이용한 비동기 댓글처리 </li>
</ol>
<br>

<img src="https://blogfiles.pstatic.net/MjAxOTA1MTRfMSAg/MDAxNTU3NzkzNzQ1ODI0.VmDPN_iRfsEWlIvv5tefkuupwUxNf96Hf-WQXFFCoqcg.GgBViQquNJ0a_9IGsu8VVkwQbNZpmfmBwaMabrX4veMg.PNG.ppossing/25.png?type=w2">
