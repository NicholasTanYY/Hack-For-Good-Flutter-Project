import 'package:flutter/material.dart';
import 'package:h4g/ProfilePage/MainBar.dart';
import 'package:h4g/ProfilePage/SideBar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: MainBar()), SideBar()]);
  }
}
