import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text('50'),
              Text('Posts'),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            decoration: BoxDecoration(
              border: Border.symmetric(vertical: BorderSide(color: Colors.blueAccent, width: 1) )
            ),
            child: Column(
              children: [
                Text('10'),
                Text('Likes'),
              ],
            ),
          ),
          Column(
            children: [
              Text('3'),
              Text('Share'),
            ],
          ),
        ],
      ),
    );
  }
}
