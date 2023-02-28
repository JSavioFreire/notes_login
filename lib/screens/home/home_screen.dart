import 'package:flutter/material.dart';
import 'package:notes_login/components/drawer/my_drawer.dart';
import 'package:notes_login/components/floating_action_button/my_fab.dart';
import 'package:notes_login/components/header/header.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/screens/home/widget/each_notes.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DataBaseProvider dbProvider = Provider.of<DataBaseProvider>(context);
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);
    dbProvider.fromDb();
    colorProvider.fromDb();
    return Scaffold(
      backgroundColor: ThemeColors.allCardColors[colorProvider.stylePostItColor[colorProvider.styleColor]]![0],
      drawer: const MyDrawer(),
      floatingActionButton: const MyFAB(),
      body: Column(
        children: <Widget>[
          const MyHeader(),
          Expanded(
            child: GridView.builder(
              itemCount: dbProvider.allNotes.length,
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (context, index) =>
                  EachNote(note: dbProvider.allNotes[index]),
            ),
          ),
        ],
      ),
    );
  }
}
