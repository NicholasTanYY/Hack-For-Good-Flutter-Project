import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: NavBar(),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff5A3D91),
                  Color(0xffC8A2C8),
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tech & Zen',
                    style: TextStyle(
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Bringing technology and mindfulness together',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 32.0),
                  Container(
                    height: 200.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.headset,
                      size: 100.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Tech & Zen'),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text('Home'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Profile'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Collaborators'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Create New'),
            ),
          ],
        ),
      ],
    );
  }
}
