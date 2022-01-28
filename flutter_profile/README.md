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

### TabBar구현을 위해 StatefulWidget을 사용해야 하는가?



## 06 _ 3 프로필 앱 위젯 구성하기
<br/>

    1.AppBar
    2.Scaffold의 endDrawer 속성
    3.CircleAvatar 위젯
    4.Column 위젤의 CrossAxisAligment 속성 활용하기
    5.재사용 가능한 함수 만들기
    6.InkWell 위젤을 사용하여 ProfileButton 클래스 만들기
    6.GridView 위젤과 Image.network
<br/>

  
### Mixin 이해해보기  
<br/>


- 믹스인은 프로그래머가 특정 코드를 다른 클래스에 삽입 할 수 있도록 하는 프로그래밍 개념입니다. 믹스인 프로그래밍은 특정 클래스에 작성된 기능들을 다른 클래스와 혼합하는 소프트웨어 개발 유형입니다.[5]

믹스인 클래스는 필요로 하는 기능들을 포함하는 상위 클래스로서 역할을 합니다. 그리고 하위 클래스는 이 기능을 상속하거나 단순히 재사용 할 수 있습니다. 하지만 자식클래스를 특수화(Specialization)하는 수단으로는 사용할 수 없습니다. 일반적으로 믹스인은 엄격한 단일 "is-a"관계(상속관계)를 만들지 않고 원하는 기능을 하위 클래스로 전달합니다. 여기에 믹스인과 상속의 중요한 차이점이 있습니다. 자식클래스는 여전히 부모클래스의 모든 기능을 상속 할 수 있지만, 부모와 자식이라는 의미는 반드시 부여될 필요는 없습니다.

[위키백과 ko.wikipedia.org/wiki/믹스인](https://ko.wikipedia.org/wiki/%EB%AF%B9%EC%8A%A4%EC%9D%B8)

<br/>




<br/>
<br/>
<br/>
<br/>
<br/>
<br/>

## 1.화면 구조보기

    1.AppBar
    2.Listview
    3.Row
    4.Container
    5.ClipRRect 

![ex_screenshot](./ppt_resources/1.png)

## 2.앱 뼈대 구성하기 (책)

* 이미지 폰트는 assets 폴더 아래
* 분할일수 있는 Widget 는 lib/components 폴더 아래.
* 책은 lib/components, lib/pages 에 있음, 이미지, 폰트 설정 파일 pubspec.yaml 변경시 Pub get 버튼 사용( 또는 cmd 에서 해당 플러터 프로젝트 위치에서 flutter pub get 명령 실행).


## 3.큰 그림으로 봤을때 코드
*위젯(widget)의 사전적 의미는 ‘소형 장치’ 또는 ‘부품’이다.*

```java
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    //메인
    void main() {
        runApp(MyApp());
    }

    //메인에서 호출 하는 위젯 > 테마호출, home 호출
    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(fontFamily: "PatuaOne"),
                home: RecipePage(),
            );
        }
    }

    //메인에서 호출 하는 위젯에 > 위젯
    class RecipePage extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return Scaffold(
                backgroundColor: Colors.white,  // 1.배경생 white로 설정
                appBar: _buildRecipeAppBar(),  // 2.비어 있는 AppBar 연결해두기
                body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),  // 3.수평으로 여백 주기
                    child: ListView(  // 4.위에서 아래로 내려가는 구조이기 때문에 ListView 위젯 사용용          
                        children: [
                            /*
                            아래는 전부 위젯으로 되어 있다
                            아래의 RecipeTitle 클래스가 있음.  대부분 상속 받는 StatelessWidget 등.
                            여러 Widget 가 있겠지만, 해당챕터 애서는 StatelessWidget 를 상속 받으면 
                            @override
                            Widget build(BuildContext context) { "구현" } 하게 됨.
                            */
                            RecipeTitle(),  
                            RecipeMenu(),
                            RecipeListItem("coffee", "Made Coffee"),  // 이미지
                            RecipeListItem("burger", "Made Burger"),
                            RecipeListItem("pizza", "Made Pizza"),
                        ],
                    ),
                ),
            );
        }
    }

    class RecipeTitle extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            //아래 return 에 대부분 어떤 화면을 구성하는 행위힘.
            return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                    "Recipes",
                    style: TextStyle(fontSize: 30),
                ),
            );
        }
    }
```

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
