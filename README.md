# playdata-FinalProject
## 개발기간 : 2022.8.22 ~ 2022.9.15
## 소개
  다양한 목적을 가진 이용자들이, 제약과 장벽없이 크고작은 아이디어를 공유하며 소통할 수 있는 웹 서비스를 구축하고자 합니다.
기존의 아이디어 공모 웹서비스들은 공모글을 게재하는것만으로 해당 사이트에 이용비용을 지불해야합니다.
또한 최소 상금이 29만원부터 시작하는 등, 전문가,사업가 그리고 기업담당자가 아닌 단순 이용자들이 가볍게 아이디어를 공모하기에 부담이 되는 구조입니다.
이에 따라 사이트 이용자는 대부분 창업가나 기업, 사업가로 이루어져, 단순 이용자가 부담없이 접근하기에 어려운 장벽이 있습니다.
저희는 라운지처럼 이용자들이 가볍고 소소한 아이디어를 서로 공유할 수 있는 환경을 구축하고,
단순 의견 공유만이 아닌, 투표를 통해 아이디어를 공모하는 등의 서비스 확장을 통해 하나의 idea bank같은 커뮤니티를 개발하는 것이 목표입니다.

## 개발 인원

- [yjs6156](https://github.com/yjs6156)
- [dongry-lee](https://github.com/dongry-lee)
- [MINSEOMIA](https://github.com/MINSEOMIA)
- [dorumamu](https://github.com/dorumamu)

## 개발 환경

- 운영체제:   window10, macOS<br>
- DB:         MySQL<br>
- framework:  spring boot<br>
- IDE: IntelliJ
- html,css,js

## 웹 기획
https://www.figma.com/file/2k5LM7vJIgZkTaAPUKbmDj/Oais?node-id=6%3A70
<img width="552" alt="1 메인화면" src="https://user-images.githubusercontent.com/110527157/186382235-b9b29651-c78a-46f6-bd38-4e96b495aa0b.png">
<img width="549" alt="2  로그인" src="https://user-images.githubusercontent.com/110527157/186382270-37ee2e5e-2ff7-4f5d-86e1-bf21ad0f7dc0.png">
<img width="542" alt="3 회원가입" src="https://user-images.githubusercontent.com/110527157/186383195-0bf4f3b0-6672-4c7f-95e5-0fe648b1731e.png">
<img width="551" alt="4 마이페이지" src="https://user-images.githubusercontent.com/110527157/186382448-a41caad3-1d87-4387-b03d-f4410337efde.png">
<img width="548" alt="5 아이디어페이지" src="https://user-images.githubusercontent.com/110527157/186382516-140c1e86-0bd4-45b7-8e9b-905f39989ec8.png">
<img width="543" alt="6 투표 페이지" src="https://user-images.githubusercontent.com/110527157/186382601-bf8e246a-75fb-41dc-bae5-aa0c9d9789c5.png">
<img width="542" alt="7 자유 게시판" src="https://user-images.githubusercontent.com/110527157/186382583-8291d1b9-069b-430d-8cba-280bc51694a9.png">
<img width="544" alt="8 고객센터" src="https://user-images.githubusercontent.com/110527157/186382588-a8922bd4-bb11-4003-81d5-ec00081912cb.png">
<img width="550" alt="8  아이디어상세페이지" src="https://user-images.githubusercontent.com/110527157/186382590-fe99f81c-b9cc-492b-b8c0-0f66dda73933.png">
<img width="539" alt="9 투표 상세페이지" src="https://user-images.githubusercontent.com/110527157/186382593-13e31b85-3e13-46db-aef6-d9dcac509e8c.png">
<img width="547" alt="10 자유게시판 상세페이지" src="https://user-images.githubusercontent.com/110527157/186382595-d446b289-8c25-494a-a62a-ef8f4590fa28.png">
<img width="548" alt="11 고객센터 글작성" src="https://user-images.githubusercontent.com/110527157/186382597-18f761c8-7d51-46e6-930a-1e2677865933.png">
<img width="544" alt="12 글작성 페이지" src="https://user-images.githubusercontent.com/110527157/186382599-9428bc1c-c2cf-4a51-94f3-e6dd17ffed6c.png">


## 초기 ERD
![OIS (1)](https://user-images.githubusercontent.com/89010847/185848161-021c2a11-d450-4045-aab4-9c8a43b40cf6.png)

## 1차 수정 ERD
![새 테이블](https://user-images.githubusercontent.com/89010847/186045427-12e32fa1-600a-416c-8170-7a80cb0f2e8e.PNG)


## 스프린트
https://github.com/users/dongry-lee/projects/1



## check in & check out

8/23<br>
check in<br>
Erd 게시판부분 다시 만들기 - 민서,동근,진수,진웅<br>
header 만들기, 아이디어게시판 view html - 민서<br>
sidebar 만들기, 투표게시판 view html - 진웅<br>
아이디어 게시판 기능 개발 시작 - 동근<br>
투표게시판 기능 개발 시작 - 진수<br>
member table 다듬기  - 동근<br>
<br>
check out<br>
회원가입, 탈퇴, 로그인 수정 / 아이디어게시판 홈화면,글작성 백 개발 - 동근<br>
side menu 완성 / 메인 페이지 slidebanner 수정중 / 투표게시판 view 제작중 - 진웅<br>
투표항목 DB설계 / 투표기능 백 개발 및 공부 /JSON으로 작업해보기 - 진수<br>
header menu 제작중 / 검색창 아이콘 삽입 수정/ 아이콘 연결 오류 해결중 - 민서<br>


8/24<br>
check in<br>
아이디어 게시판 기능 개발(첨부파일, 댓글제외), 댓글테이블 및 기능개발  - 동근<br>
투표게시판 틀 만들기 / 투표기능 제작 - 진수<br>
header menu 수정/ 사이드 메뉴 바와 코드 비교/ 게시판 글작성 틀 제작 - 민서<br>
<br>
check out<br>
게시판 글 crud, 댓글 테이블 및 기능개발 시작 - 동근<br>
투표 작성페이지/ 상세페이지 제작 목표 - 진웅<br>
투표게시판 제목 내용 DB저장,투표기능 개발 진행중 - 진수 <br>
header menu 완성(백그라운드로고 이미지에 링크삽입, 버튼 중첩 문제 해결, 헤더 바 길이 수정)/사이드 메뉴바와 합쳐서 페이지 틀 구성 - 민서<br>


8/25<br>
check in<br>
댓글기능 C,R, github merge오류 해결 - 동근<br>
투표 작성페이지/ 상세페이지 제작 및 컨트롤러 연결 - 진웅<br>
투표기능 개발- 진수<br>
 아이디어 공모페이지/ 상세페이지 제작/ 해당 헤더 수정제작 및 연결 민서<br>
<br>
check out<br>


8/26 스프린트1 회고<br>
(
https://github.com/users/dongry-lee/projects/1)


동근


- 스프린트 진행을 잘한 것 같다
- 수업에서 배운 부분들이 많이 벗어 났다
 - 도메인 지식이 없어 부담이 된다는 
 - 모르는 부분은 공부하기가 어렵다
- Mob Porgramming을 진행하면 시간이 오래걸릴거 같아 진행하지 않았다
 - 회의실이 하나여서 불편했다
 
 진수
 
 - Figma나 erd 작성을 잘했다
 - 수업시간에 배운 부분이 아니여서 개발진행이 안됐다
 - 공부하는거나 다른 코드보는 시간이 많이 들어갔다
 - 코드 최신화가 즉시 안된다
 - 프론트를 나눠서 작업하는데 프론트를 보면서 백엔드를 작업할 수가 없었다
 

진웅

- figma를 잘 작성했다
- Git에 대해서 브랜치를 옮겨가면서 머지하는게 익숙하지가 않다.
- 코드 충돌을 해결하기가 어려웠다..


민서

- 헤더 개발에 하루가 걸릴줄 알았는데 생각보다 기간이 너무 지연됐다
 - 따로 공부가 필요하다
 - 안되니까 너무 답답하다
 - 프로젝트 기여도가 적어지는거 같고 지체된다는 느낌이 든다.
- Git을 사용하기가 어렵다.
 - Git Merge후 프로젝트가 적상동작하지 않는다
 - Merge하는 방법이 어렵다.
 - 한기능을 두사람이 개발하고 Git을 개발하는게 어렵다.


개선점
- 멘토님에게 질문을 많이하자
- 개발을 진행하면서 실행이 멀쩡하게 되는 코드 뭉치단위로 커밋한다
- 코드 최신화를 다같이 진행한다 안되는사람이 있으면 다같이 그화면을 보고 해결
- 모르는 부분에 대한 공부 시간 백로그가져가기
- git marge후 프로젝트가 정상동작하지 않는다
- 커밋을 짧게가져간다


8/27
8/28

8/29 (월요일) 오늘의 질문 : 가장좋아하는 음식은?
check in<br>
 - 동근: 아이디어게시판 첨부파일, 마이페이지 기능개발 시작 / 피자 <br>
 - 진수: 투표기능 아웃풋 나오 / 김치찌개+계란말이
 - 민서: 글작성페이지 css 수정, 글삭제+수정페이지 제작, 아이디어페이지 전체 점검및통일, 자유게시판 추가제작 <br>
        좋아하는 음식: 샤브샤브 <br>
- 진웅: 페이지별 html 및 스크립트 기능 우선 개발(민서님과 협의해봐야함) <br>
       좋아하는 음식: 요즘 밀가루를 끊어서 볶음밥에 빠져있습니다..ㅋㅋㅋ<br> 

check out<br>
 - 동근: 아이디어게시판 첨부파일, 마이페이지 이름바꾸기, 내업로드, 내 참여한 내스크랩이 좀 어렵네요,,, <br>
 - 진수: 투표페이지 뷰 , 투표기능 완성될줄 알았는데 생각보다 안되서 내일완성할 예정<br>
 - 민서:오전시간 해둔게 얼마 없네요..ㅜ css 수정 완<br>
 - 진웅: 월요일은 힘든 날입니다...<br>

8/30 (화요일) 오늘의 질문 : 요즘 즐겨듣는 노래는?
check in<br>
 - 동근: 내스크랩 기능 구현 / i'aint worried - one republic<br>
 - 진수:투표기능 완성 후 시간이 남으면 검색,해쉬태그 기능 개발 / The Walters - I Love You So<br>
 - 민서:아이디어페이지 css랑 동근님이 최신화하신 백코드랑 합쳐서 페이지 완성, 디테일페이지 댓글부분 제작/<br>
        요즘 즐겨듣는 노래:ella mai-naked<br>   
 - 진웅: 투표 상세페이지, 투표작성 이미지, 해시태그, 투표항목추가 스크립트 기능 개발  / 매드클라운 - 바질 <br>
       
 check out<br>
 - 동근: <br>
 - 진수: 투표기능 완성<br>
 - 민서: 아이디어 글작성 페이지 이미지빼고 완, 댓글만 빼면 나머지 틀은 완성인것 같습니다. <br>   
 - 진웅: 투표 상세 페이지 완료, 마이페이지 작업 시작 <br>
   화요일도 모두 고생 많으셨습니다..!!


8/31 (수요일) 벌써 수요일입니다!! 오늘의 질문 : 본인의 취미는 ??
check in<br>
 - 동근: 검색기능 구현 시간나면 해쉬태그 공부 / 친구만나기?<br>
 - 진수: 투표페이지 투표총합 추가 ,투표페이지 댓글 첨부파일 완성 / 노래들으면서 걷기<br>
 - 민서: 아이디어 나머지 페이지 틀 넣기+페이지마다 약간의 수정/댓글 제작/ 자유게시판 틀 넣기 <br>취미.....산책..노래듣기..책읽기.....<br>
 - 진웅: 마이페이지 뷰 완성 및 로그인, 회원가입 페이지 뷰 수정 / 신발 수집, 카페가기, 일단 집 밖을 나가기<br>
       
 check out<br>
 - 동근: 검색기능 완성, 해쉬태그1만되게 완성, 자유게시판 기능개발시작<br>
 - 진수: 투표기능 완성 ,투표페이지 댓글첨부파일 수정삭제 기능 계속 개발 <br>
 - 민서: 글작성 페이지 최종완(데이터업로드 확인 완), 나머지 페이지 틀넣기 완, 디테일페이지 css수정 필요,수정버튼 기능 의논 필요 <br>   
 - 진웅: 마이페이지 뷰 제작중 로그인 회원가입 view 완성 <br>

9/1 (목요일) 2022년이 4개월 남았습니다..;; 오늘의 질문 : 본인의 MBTI는 ?? <br>
check in<br>
 - 동근: 해쉬태그 여러개 되게해보기, 고객센터 기능개발 시작 / esfp<br>
 - 진수: 투표페이지 첨부파일 날짜 수정 삭제기능 추가 , 투표페이지 댓글 삭제 기능 추가 / INFP-A<br>
 - 민서: 아이디어페이지 디테일페이지 수정 - 자유게시판 구현 -아이디어페이지 수정페이지 수정 / ISTJ? ESTJ? 할때마다 다릅니다.. <br>
 - 진웅: 마이페이지 남은 부분 수정/ 고객센터 HTML작성? / 그외 다른 디자인 기능 / ENFP <br>
       
 check out<br>
 - 동근: 해쉬태그 기능구현, 고객센터 기능개발 시작, 자유게시판 기능개발시작 백이먼저냐 프론트가 먼저냐.. 순서 생각해봐야..<br>
 - 진수: 투표상세페이지 구현 ,댓글수정삭제기능 계속 개발중 <br>
 - 민서: 아이디어페이지 디테일페이지 수정완+ 수정페이지 수정완+ 오늘 밤에 가능하면 자유게시판 틀 구현 복붙+약간의수정 /+ 내일은 아이디어 리스트페이지 내용 css랑 메인 헤더 검색버튼 css 할게요이 <br>   
 - 진웅: 고객센터 페이지 간단 view 제작 완료 기타 css 수정 완료 / 생각보다 수정해야할 부분이 많고 세션 문제를 해결해야 할 것 같다..<br>

9/2(금요일) 스프린트2 회고 <br>
( https://github.com/users/dongry-lee/projects/1) <br>
  - 동근:<br>
  - 진수:<br>
  - 민서:<br>
  - 진웅:<br>
  
  check in  금요일 입니다....! 오늘의 질문 :지금 가장 가고싶은 여행지는 어디인가요?<br>
  - 동근: 고객센터 기능, 자유게시판 기능 / 제주도<br>
  - 진수: 투표게시판 디테일 개발,투표기능 4개까지 늘려보기 / 어디든 좋아요<br>
  - 민서: 자유게시판 틀 약간의수정+아이디어 리스트페이지 내용 css +메인 헤더 검색버튼 css/ 가고싶은 여행지:도쿄의 쇼핑..시카고의 경관..엘에이의 날씨<br>
  - 진웅: 마이페이지 뷰 다듬기, 투표기능 뷰 css 다듬기 /  동해안 넓은 바다.... <br>
  
  
