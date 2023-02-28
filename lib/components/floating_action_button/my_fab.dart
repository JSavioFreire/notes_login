import 'package:flutter/material.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class MyFAB extends StatelessWidget {
  const MyFAB({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);

    return FloatingActionButton(
      backgroundColor: ThemeColors.allCardColors[
          colorProvider.stylePostItColor[colorProvider.styleColor]]![4],
      onPressed: () {
        Navigator.pushNamed(context, '/new');
        (context).read<DataBaseProvider>().createInDb();
      },
      child: const Icon(Icons.add),
    );
  }
}
