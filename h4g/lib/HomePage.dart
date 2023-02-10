import 'package:flutter/material.dart';
import "Button.dart";

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
            title: const Text('Tabs Demo'),
          ),
          floatingActionButton: const Button()),
    );
  }
}
