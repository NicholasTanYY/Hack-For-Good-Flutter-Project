import 'package:flutter/material.dart';
import 'ReusableWidgets.dart';

class CollaborationPage extends StatelessWidget {
  const CollaborationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: ReusableWidgets())]);
  }
}
