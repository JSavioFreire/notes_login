import 'package:flutter/material.dart';
import 'package:notes_login/components/drawer/widget/hello_name.dart';
import 'package:notes_login/components/drawer/widget/logout_button.dart';
import 'package:notes_login/components/drawer/widget/switch_color.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class MyDrawer extends Drawer {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);
    return Drawer(
        backgroundColor: ThemeColors.allCardColors[
            colorProvider.stylePostItColor[colorProvider.styleColor]]![0],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 50, 8, 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[HelloName(), SwitchColor()],
              ),
              const LogoutButton()
            ],
          ),
        ));
  }
}
