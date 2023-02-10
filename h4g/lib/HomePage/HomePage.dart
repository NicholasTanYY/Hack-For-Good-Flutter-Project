import 'package:flutter/material.dart';
import 'package:h4g/HomePage/Button.dart';
import 'package:h4g/ProfilePage/ProfilePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(child: Text('Home')),
              Tab(child: Text('Profile Page')),
              Tab(child: Text('Collaborations')),
            ],
          ),
          title: const Text('App'),
        ),
        floatingActionButton: const CreatePostButton(),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_transit),
            ProfilePage(),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
