import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:h4g/HomePage/PostForm.dart'; //(auto import will do this even)

class CreatePostButton extends StatefulWidget {
  const CreatePostButton({super.key});

  @override
  State<CreatePostButton> createState() => _PostState();
}

class _PostState extends State<CreatePostButton> {
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
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const PostForm();
            },
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Create Post'));
  }
}
