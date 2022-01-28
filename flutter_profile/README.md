# 챕터 06 프로필 앱 만들기
<br/>

## 06 _ 2 프로필 앱 뼈대 작성하기

### "primaryColor: Colors.white,"의 용도?
```java
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    )
```

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

## 1.AppBar 위젯과 Scaffold의 endDrawer 속성 활용하기

* AppBar 위젯
  - leading : 왼쪽 상단 위젯
  - title : 제목
  - actions : 오른쪽 상단 위젯
* Scaffolod의 endDrawer 속성
  - Drawer : 왼쪽에서 오른쪽으로 슬라이드
  - endDrawer : 오른쪽에서 왼쪽으로 


## 2.CircleAvatar 위젯

* 위젯을 둥글게 만드는 법
  - Container 위젯의 decoration 속성을 사용하는 방법
  - Image 위젯을 ClipOver 위젯으로 감싸는 방법
  - CircleAvatar 위젯을 사용하는 방법


## 3.Column 위젯의 CrossAxisAligment 속성 활용하기
* Column위젯을 사용할때와 Row위젯을 사용할때, corssAxis와 mainAxis가 서로 반대가 된다.


## 4.재사용 가능한 함수 만들기
* 동일한 디자인이 반복되는 경우, 재사용 가능한 함수로 만드는 것이 좋음.


## 5.InkWell 위젯을 사용하여 ProfileButton 클래스 만들기
* 플러터에서 버튼을 만들기 위한 대표적 방법 4가지
  - TextButton 위젯
  - ElevatedButton 위젯
  - OutlinedButton 위젯
  - InkWell 위젯 (모든 위젯을 버튼으로 만들 수 있는 특징이 있고, 보통 Container로 디자인한 뒤 InkWell 위젯으로 감싸는 방법이 선호됨)


## 6.TabBar 위젯과 TabBarView 위젯 사용하기
### TabBar구현을 위해 StatefulWidget을 사용해야 하는가?
### SingleTickerProviderStateMixin의 용도? (애니메이션? 다중상속?)
* SingleTickerProviderStateMixin은 한 개의 애니메이션을 가진 위젯을 정의할 때 사용.<br/>
  2개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin을 사용해야 합니다.
  



## 7.GridView 위젯과 Image.network
* 동일한 디자인이 반복되는 경우, 재사용 가능한 함수로 만드는 것이 좋음.


<hr/>

## 코딩 순서

### AppBar 위젯의 action 속성에 Icon 위젯 추가하기

- AppBar는 현재 화면의 title, leading, action 영역을 포함하고 있는 막대 모양의 위젯.

### RecipeTitle 커스텀 위젯 만들기

- 위젯 클래스 생성 하여 return Text 위젯에 값 설정.

### Theme에 Font 적용하기

- 테마는 전체적으로 앱의 모양과 느낌을 가지고 있습니다.

### Container 위젯을 활용한 RecipeMenu 커스텀 위젯 만들기

- Container 위젯은 빈 박스 위젯입니다만, SizedBox 위젯과 차이점이 있다면 내부에 decoration 속성이 있어서 박스에   
 색상을 입히거나 박스의 모양을 바꾼다거나 테두리 선을 줄 수 있습니다. SizedBox 위젯은 보통 마진(Margin)을 줘야할 때 사용합니다.

### 재사용 가능한 레시피 리스트 아이템 만들기 - 클래스 생성자 활용

- RecipeListItem 객체를 만들 때 생성자에서 imageName, title 값을 초기화할(파라이터로 원하는 값을 넘길수 있다.) 수 있다.

### ListView 위젯을 활용하여 세로 스크롤 달기

- ListView는 가장 일반적으로 사용되는 스크롤 위젯.

### AspectRatio로 이미지 비율 정하기

- 특정 종횡비로 자식 크기를 조정하는 위젯.

### ClipRRect 위젯으로 이미지 모서리에 곡선 주기

- 둥근 사각형을 사용하여 자식을 자르는 위젯.





For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
