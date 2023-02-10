import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Tech & Zen'),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Home'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Profile'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Collaborators'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Create New'),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Container(
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
    );
  }
}
