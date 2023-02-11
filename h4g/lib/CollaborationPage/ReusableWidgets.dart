import 'package:flutter/material.dart';

class ReusableWidgets extends StatelessWidget {
  const ReusableWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonRow(color, Icons.person, 'Person1'),
          _buildButtonRow(color, Icons.person, 'Person2'),
          _buildButtonRow(color, Icons.person, 'Person3'),
          _buildButtonRow(color, Icons.person, 'Person4'),
          _buildButtonRow(color, Icons.person, 'Person5'),
          _buildButtonRow(color, Icons.person, 'Person6'),
        ],
      ),
    );
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            buttonSection,
          ],
        ),
      ),
    );
  }

  Row _buildButtonRow(Color color, IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
