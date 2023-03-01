import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class HeaderNewEdit extends StatelessWidget {
  final NoteModel? note;
  const HeaderNewEdit({super.key, this.note});

  @override
  Widget build(BuildContext context) {
    DataBaseProvider dbProvider = Provider.of<DataBaseProvider>(context);
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);
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
            for (var i = 0;
                i <
                    ThemeColors
                        .allCardColors[colorProvider
                            .stylePostItColor[colorProvider.styleColor]]!
                        .length;
                i++)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InkWell(
                  onTap: () {
                    note == null
                        ? dbProvider.changeColor(index: i)
                        : dbProvider.changeColor(note: note, index: i);
                  },
                  child: Ink(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: ThemeColors.allCardColors[colorProvider
                            .stylePostItColor[colorProvider.styleColor]]![i],
                      ),
                      child: (dbProvider.color == i)
                          ? const Icon(
                              Icons.check,
                              size: 15,
                              color: Colors.black,
                            )
                          : null),
                ),
              ),
          ],
        ),
      ]),
    );
  }
}
