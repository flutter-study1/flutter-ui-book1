import 'package:flutter/material.dart';

class ProfileTitle extends StatelessWidget {
  const ProfileTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 10,),
        CircleAvatar(
          backgroundImage: AssetImage('images/avatar.png'),
          radius: 40,
        ),
        SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('GetinThere', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            Text('프로그래머/작가/강사', style: TextStyle(fontSize: 20),),
            Text('데어 프로그래밍', style: TextStyle(fontSize: 15),),
          ],
        )
      ],
    );
  }
}
