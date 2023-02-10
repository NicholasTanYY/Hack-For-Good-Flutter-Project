import 'package:flutter/material.dart';

class MainBar extends StatelessWidget {
  const MainBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                width: 1000,
                decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text("Information about myself"))),
        Expanded(
            child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(15),
                width: 1000,
                decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text("Innovation ideas"))),
      ],
    );
  }
}
