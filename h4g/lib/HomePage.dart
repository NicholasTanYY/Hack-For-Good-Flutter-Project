import 'package:flutter/material.dart';
import 'package:h4g/Button.dart';

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
          title: const Text('Home page'),
        ),
        floatingActionButton: const Button(),
        body: const TabBarView(
          children: [
            Icon(Icons.car_rental_outlined),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
