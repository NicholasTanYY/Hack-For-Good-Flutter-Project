import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int numPosts = 0;
  void _togglePostNums() {
    setState(() {
      numPosts++;
    });
    print("numPosts: $numPosts");
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(15),
            width: 1000,
            decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Text("Post 1")));
  }
}
