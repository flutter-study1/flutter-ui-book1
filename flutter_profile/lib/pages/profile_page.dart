import 'package:example_profile/components/ProfileButton.dart';
import 'package:example_profile/components/ProfileInfo.dart';
import 'package:example_profile/components/ProfileTabView.dart';
import 'package:example_profile/components/ProfileTitle.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: _buildingProfileAppBar(),
          endDrawer: _buildingDrawer(context),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ProfileTitle(),
                ProfileInfo(),
                ProfileButton(),
                SizedBox(height: 20,),
                TabBar( tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  ],
                ),
                ProfileTabView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AppBar _buildingProfileAppBar(){
  return AppBar(
    elevation: 1.0,
    centerTitle: true,
    title: Text('Profile', style: TextStyle(color: Colors.black),),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black,),
      onPressed: () => null,
    ),
    backgroundColor: Colors.white,
  );
}

Drawer _buildingDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}