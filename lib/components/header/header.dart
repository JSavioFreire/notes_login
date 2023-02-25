import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final search = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ThemeColors.color2Light,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2)),
            ],
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 25,
                    color: ThemeColors.color4,
                  )),
            ),
            Expanded(
                child: TextFormField(
              controller: search,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Busque suas anotações',
                  hintStyle: TextStyle(color: ThemeColors.color4)),
              keyboardType: TextInputType.name,
            ))
          ]),
        ),
      ),
    );
  }
}



//Text('Olá ${provider.users!.displayName}')