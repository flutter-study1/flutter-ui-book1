import 'package:flutter/material.dart';

class ProfileTabView extends StatelessWidget {
  const ProfileTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: [
          GridView.count(
            primary: false,
            padding: const EdgeInsets.only(top: 20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("He'd have you all unravel at the"),
                color: Colors.teal[100],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Heed not the rabble'),
                color: Colors.teal[200],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Sound of screams but the'),
                color: Colors.teal[300],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Who scream'),
                color: Colors.teal[400],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution is coming...'),
                color: Colors.teal[500],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Revolution, they...'),
                color: Colors.teal[600],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            color: Colors.red,
          ),
          // Tab(icon: Icon(Icons.directions_transit)),
        ],
      ),
    );
  }
}
