import 'package:flutter/material.dart';
import 'dart:developer'; //(auto import will do this even)

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _PostState();
}

class _PostState extends State<Button> {
  int numPosts = 0;
  void _togglePostNums() {
    setState(() {
      numPosts++;
    });
    log("numPosts: $numPosts");
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: _togglePostNums,
        icon: const Icon(Icons.add),
        label: const Text('Create Post'));
  }
}
