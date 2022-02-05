import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
// import 'package:flutter_shoppingcart/theme.dart';

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
          // ShoppingCartDetail(),
        ],
      ),
    );
  }


  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {},
      ),
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

class ShoppingCartHeader extends StatefulWidget {
  @override
  _ShoppingCartHeaderState createState() => _ShoppingCartHeaderState();
}

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
    return Column(
      children: [
        _buildDeaderPic(),
      ],
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

// class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
//   int selectedId = 0;
//
//   List<String> selectedPic = [
//     "assets/p1.jpeg",
//     "assets/p2.jpeg",
//     "assets/p3.jpeg",
//     "assets/p4.jpeg",
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         _buildHeaderPic(),
//         _buildHeaderSelector(),
//       ],
//     );
//   }
//
//   Widget _buildHeaderPic() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: AspectRatio(
//         aspectRatio: 5 / 3,
//         child: Image.asset(
//           selectedPic[selectedId],
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
//
//   Widget _buildHeaderSelector() {
//     return Padding(
//       padding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           _buildHeaderSelectorButton(0, Icons.directions_bike),
//           _buildHeaderSelectorButton(1, Icons.motorcycle),
//           _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
//           _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
//         ],
//       ),
//     );
//   }
//
//   // 1. 다른 화면에서도 재사용하면 공통 컴포넌트 위젯으로 관리하는 것이 좋다.
//   Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
//     return Container(
//       width: 70,
//       height: 70,
//       decoration: BoxDecoration(
//         color: id == selectedId ? kAccentColor : kSecondaryColor,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: IconButton(
//         icon: Icon(mIcon, color: Colors.black),
//         onPressed: () {
//           setState(() {
//             selectedId = id;
//           });
//         },
//       ),
//     );
//   }
// }



//Component.end
