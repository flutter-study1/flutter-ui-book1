import 'package:flutter/material.dart';
// import 'package:flutter_login_copy/components/custom_text_form_field.dart';
// import 'package:flutter_login/pages/home_page.dart';
// import 'package:flutter_login/pages/login_page.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:developer' as developer;//디버깅 로그 출력

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            primary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60),
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}

const double small_gap = 5.0;
const double medium_gap = 10.0;
const double large_gap = 20.0;
const double xlarge_gap = 100.0;


//Page.start
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 200),
            Logo("Care Soft"),
            SizedBox(height: 50),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: 200),
            Logo("Care Soft"),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pop(context);// 1. 화면 스택 제거
              },
              child: Text("Get Started"),
            )
          ],
        ),
      ),
    );
  }
}

//Page.end

//Components.start

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key
  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField("Email"),
          SizedBox(height: medium_gap),
          CustomTextFormField("Password"),
          SizedBox(height: large_gap),
          // 3. TextButton 추가
          TextButton(
            onPressed: () {
              developer.log("클릭");
              // 3. 유효성 검사
              if(_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text("Login"),
          )
        ],
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: small_gap),
        TextFormField(
          validator: (value) => value!.isEmpty
              ? "Please enter some text"
              : null, // 1. 값이 없으면 Please enter some text 경고 화면 표시
          obscureText:
            // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
            text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              // 3. 기본 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              // 4. 손가락 터치시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              // 5. 에러발생시 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              // 5. 에러가 발생 후 손가락을 터치했을때 TextFormField 디자인
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}


class Logo extends StatelessWidget {
  final String title;
  const Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/logo.svg",
          height: 70,
          width: 70,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

//Components.end

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // 1. 테마 설정
//       theme: ThemeData(
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             backgroundColor: Colors.black,
//             primary: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(30),
//             ),
//             minimumSize: Size(400, 60),
//           ),
//         ),
//       ),
//       initialRoute: "/login",
//       routes: {
//         "/login": (context) => LoginPage(),
//         "/home": (context) => HomePage(),
//       },
//     );
//   }
// }
//
// const double small_gap = 5.0;
// const double medium_gap = 10.0;
// const double large_gap = 20.0;
// const double xlarge_gap = 100.0;
//
// //Page.start
// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ListView(
//           children: [
//             SizedBox(height: xlarge_gap),
//             Logo("Login"),
//             SizedBox(height: large_gap), // 1. 추가
//             CustomForm(), // 2. 추가
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             SizedBox(height: 200),
//             Logo("Care Soft"),
//             SizedBox(height: 50),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context); // 1. 화면 스택 제거
//               },
//               child: Text("Get Started"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// //Page.end
//
// //Components.start
// class CustomForm extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>(); // 1. 글로벌 key
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를 관리할 수 있다.
//       key: _formKey,
//       child: Column(
//         children: [
//           CustomTextFormField("Email"),
//           SizedBox(height: medium_gap),
//           CustomTextFormField("Password"),
//           SizedBox(height: large_gap),
//           // 3. TextButton 추가
//           TextButton(
//             onPressed: () {
//               // 3. 유효성 검사
//               if (_formKey.currentState!.validate()) {
//                 Navigator.pushNamed(context, "/home");
//               }
//             },
//             child: Text("Login"),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
// class CustomTextFormField extends StatelessWidget {
//   final String text;
//
//   const CustomTextFormField(this.text);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(text),
//         SizedBox(height: small_gap),
//         TextFormField(
//           validator: (value) => value!.isEmpty
//               ? "Please enter some text"
//               : null, // 1. 값이 없으면 Please enter some text 경고 화면 표시
//           obscureText:
//           // 2. 해당 TextFormField가 비밀번호 입력 양식이면 **** 처리 해주기
//           text == "Password" ? true : false,
//           decoration: InputDecoration(
//             hintText: "Enter $text",
//             enabledBorder: OutlineInputBorder(
//               // 3. 기본 TextFormField 디자인
//               borderRadius: BorderRadius.circular(20),
//             ),
//             focusedBorder: OutlineInputBorder(
//               // 4. 손가락 터치시 TextFormField 디자인
//               borderRadius: BorderRadius.circular(20),
//             ),
//             errorBorder: OutlineInputBorder(
//               // 5. 에러발생시 TextFormField 디자인
//               borderRadius: BorderRadius.circular(20),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               // 5. 에러가 발생 후 손가락을 터치했을 때 TextFormField 디자인
//               borderRadius: BorderRadius.circular(20),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class Logo extends StatelessWidget {
//   final String title;
//
//   const Logo(this.title);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SvgPicture.asset(
//           "assets/logo.svg",
//           height: 70,
//           width: 70,
//         ),
//         Text(
//           title,
//           style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }
//
// //Components.end
