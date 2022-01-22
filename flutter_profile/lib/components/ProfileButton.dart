import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10)),
              width: 150,
              height: 50,
              child: Center(
                  child: Text(
                    'Follow', style: TextStyle(color: Colors.white),
                  ))),
        ),
        InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              width: 150,
              height: 50,
              child: Center(
                  child: Text(
                'Message',
              ))),
        ),
      ],
    );
  }
}
