# 챕터 08 숙소예약 앱 만들기
<br/>

## 앱 화면 크기 알아내기(MediaQuery)

### Q1) 'primaryColor: Colors.white'의 용도?

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



## 06 _ 3 프로필 앱 위젯 구성하기
<br/>

    
    1.AppBar 위젯과 Scaffold의 endDrawer 속성 활용하기
    2.CircleAvatar 위젯
    3.Column 위젯의 CrossAxisAligment 속성 활용하기
    4.재사용 가능한 함수 만들기
    5.InkWell 위젯을 사용하여 ProfileButton 클래스 만들기
    6.TabBar 위젯과 TabBarView 위젯 사용하기
    7.GridView 위젯과 Image.network
 
<br/>
<br/>
<br/>
