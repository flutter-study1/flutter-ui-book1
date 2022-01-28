# 챕터 06 프로필 앱 만들기
<br/>

## 06 _ 2 프로필 앱 뼈대 작성하기

### 1) 'primaryColor: Colors.white'의 용도?
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
<br/>

## 2.CircleAvatar 위젯

* 위젯을 둥글게 만드는 법
  - Container 위젯의 decoration 속성을 사용하는 방법
  - Image 위젯을 ClipOver 위젯으로 감싸는 방법
  - CircleAvatar 위젯을 사용하는 방법
<br/>

## 3.Column 위젯의 CrossAxisAligment 속성 활용하기
* Column위젯을 사용할때와 Row위젯을 사용할때, corssAxis와 mainAxis가 서로 반대가 된다.
<br/>

## 4.재사용 가능한 함수 만들기
* 동일한 디자인이 반복되는 경우, 재사용 가능한 함수로 만드는 것이 좋음.
<br/>

## 5.InkWell 위젯을 사용하여 ProfileButton 클래스 만들기
* 플러터에서 버튼을 만들기 위한 대표적 방법 4가지
  - TextButton 위젯
  - ElevatedButton 위젯
  - OutlinedButton 위젯
  - InkWell 위젯 (모든 위젯을 버튼으로 만들 수 있는 특징이 있고, 보통 Container로 디자인한 뒤 InkWell 위젯으로 감싸는 방법이 선호됨)
<br/>

## 6.TabBar 위젯과 TabBarView 위젯 사용하기
### 1) TabBar구현을 위해 StatefulWidget을 사용해야 하는가?


### 2) SingleTickerProviderStateMixin의 용도? (애니메이션? 다중상속?)
* SingleTickerProviderStateMixin은 한 개의 애니메이션을 가진 위젯을 정의할 때 사용.<br/>
  2개 이상의 애니메이션을 가진 위젯을 정의하려면 TickerProviderStateMixin을 사용해야 합니다.
<br/>



## 7.GridView 위젯과 Image.network
* 동일한 디자인이 반복되는 경우, 재사용 가능한 함수로 만드는 것이 좋음.
