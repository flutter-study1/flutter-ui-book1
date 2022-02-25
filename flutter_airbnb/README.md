# 챕터 08 숙소예약 앱 만들기
<br/>

## 앱 화면 크기 알아내기(MediaQuery)

플러터(Flutter)에서 화면 크기를 얻기 위해 MediaQuery라는 클래스를 이용한다.

Mediaquery의 경우 화면 크기 외에도 여러 가지 기기의 시스템 정보들을 담고 있다.

(텍스트 배율, 24시간 포맷 유무, 기기 방향(orientation) 등등)

​

MediaQuery를 이용해 화면 정보를 읽는 방법은 다음과 같다.
```java
MediaQuery.of(context).size             //앱 화면 크기 size  Ex> Size(360.0, 692.0)
MediaQuery.of(context).size.height      //앱 화면 높이 double Ex> 692.0 
MediaQuery.of(context).size.width       //앱 화면 넓이 double Ex> 360.0
MediaQuery.of(context).devicePixelRatio //화면 배율    double Ex> 4.0
MediaQuery.of(context).padding.top      //상단 상태 표시줄 높이 double Ex> 24.0
여기서 context는 앱의 Context 클래스 변수이다.
```
위의 값들은 실제 픽셀 값이 아닌 논리적 픽셀 값이다. 여기에 화면 배율(devicePixelRatio)을 곱하면 실제 픽셀 값을 알 수 있다.


<br/>
<br/>
<br/>
<br/>



## TextOverflow.ellipsis

ellipsis라는 뜻처럼 지정된 사이즈에 넘어갈때 글자 뒤에 ...을 붙여 생략해준다.
<br/>

```java
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
          style: body1(),
          maxLines: 3,

          overflow: TextOverflow.ellipsis, // 3. 글자가 3 라인을 벗어나면 ... 처리된다.
        ),
```
<br/>
<br/>
<br/>

## getBodyWidth(context)???
