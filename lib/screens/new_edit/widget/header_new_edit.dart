import 'package:flutter/material.dart';
import 'package:notes_login/theme/theme_colors.dart';

class HeaderNewEdit extends StatelessWidget {
  const HeaderNewEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        Row(
          children: [
            for (var i = 0; i < ThemeColors.cardColor.length; i++)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InkWell(
                  onTap: () {},
                  child: Ink(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      color: ThemeColors.cardColor[i],
                    ),
                    child: const Icon(
                      Icons.check,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
          ],
        )
      ]),
    );
  }
}
