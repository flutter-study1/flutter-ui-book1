import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
// import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
// import 'package:flutter_shoppingcart/theme.dart';
import 'dart:developer' as developer; //디버깅 로그 출력

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

// AppBar 영역.
  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      // title: Text("앱바영역"),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        SizedBox(width: 16),
      ],
      elevation: 0.0,
    );
  }
}

const kPrimaryColor = MaterialColor(
  0xFFeeeeee,
  <int, Color>{
    50: Color(0xFFeeeeee),
    100: Color(0xFFeeeeee),
    200: Color(0xFFeeeeee),
    300: Color(0xFFeeeeee),
    400: Color(0xFFeeeeee),
    500: Color(0xFFeeeeee),
    600: Color(0xFFeeeeee),
    700: Color(0xFFeeeeee),
    800: Color(0xFFeeeeee),
    900: Color(0xFFeeeeee),
  },
);

const kSecondaryColor = Color(0xFFc6c6c6); // 기본 버튼 색
const kAccentColor = Color(0xFFff7643); // 활성화 버튼 색

//ShoppingCartPage.start

ThemeData theme() {
  return ThemeData(
    primarySwatch: kPrimaryColor,
    scaffoldBackgroundColor: kPrimaryColor,
  );
}

//ShoppingCartPage.end

//Component.start

class ShoppingCartDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          showCupertinoDialog(
            // 1. 추가
            context: context,
            builder: (context) => CupertinoAlertDialog(
              title: Text("장바구니에 담으시겠습니까?"),
              actions: [
                CupertinoDialogAction(
                  child: Text("확인"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        },
        style: TextButton.styleFrom(
          backgroundColor: kAccentColor,
          minimumSize: Size(300, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              // 3. 동일한 색상 아이콘을 재사옹하기 위해 함수로 관리
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      // 5. Stack의 첫 번째 Container 위젯위에 Postioned 위젯이 올라가는 형태
      child: Stack(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 5,
            top: 5,
            child: ClipOval(
              child: Container(
                color: mColor,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          // 2. Spacer()로 Icon위젯과 Text위젯을 양끝으로 벌릴 수 있다. spaceBetween과 동일
          Spacer(),
          Text("review "),
          Text("(26)", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Urban Soft AL 10.0",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "\$699",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// StatefulWidget 사용하여 상태값에 따라 다시 화면을 그린다.
class ShoppingCartHeader extends StatefulWidget {
  @override
  _ShoppingCartHeaderState createState() => _ShoppingCartHeaderState();
}

// selectedId 값을 때라 화면을 다시 그린다. build 함수를 다시 호출 하는 것임.
class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    developer.log("ShoppingCartHeader._ShoppingCartHeaderState.build 호출");
    return Column(
      children: [
        _buildDeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildheaderselectbutton(0, Icons.directions_bike),
          _buildheaderselectbutton(1, Icons.motorcycle),
          _buildheaderselectbutton(2, CupertinoIcons.car_detailed),
          _buildheaderselectbutton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  // 1. 다른 화면에서도 재사용하면 공통 컴포넌트 위젯으로 관리하는 것이 좋다.
  Widget _buildheaderselectbutton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: id == selectedId ? kAccentColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        icon: Icon(mIcon, color: Colors.black),
        onPressed: () {
          setState(() {
            developer.log("setState 함수 호출 클릭 id=$id");
            print("print : setState 함수 호출 클릭 id=$id");
            selectedId = id;
          });
        },
      ),
    );
  }

  Widget _buildDeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: Image.asset(
          selectedPic[selectedId],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

//Component.end
