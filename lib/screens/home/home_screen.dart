import 'package:flutter/material.dart';
import 'package:notes_login/components/drawer/my_drawer.dart';
import 'package:notes_login/components/floating_action_button/my_fab.dart';
import 'package:notes_login/components/header/header.dart';
import 'package:notes_login/theme/theme_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.color2Light,
      drawer: const MyDrawer(),
      floatingActionButton: const MyFAB(),
      body: Column(
        children: const <Widget>[
          MyHeader(),
        ],
      ),
    );
  }
}
