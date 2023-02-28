import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/color/change_style_color_provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class ShowToDelete extends StatelessWidget {
  final NoteModel noteToDelete;

  const ShowToDelete({super.key, required this.noteToDelete});

  @override
  Widget build(BuildContext context) {
    DataBaseProvider provider = Provider.of<DataBaseProvider>(context);
    ChangeStyleColorProvider colorProvider =
        Provider.of<ChangeStyleColorProvider>(context);
    return AlertDialog(
      title: const Text('Quer mesmo excluir a anotação?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Não')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ThemeColors.allCardColors[
                  colorProvider.stylePostItColor[colorProvider.styleColor]]![4],
            ),
            onPressed: () {
              provider.delete(noteToDelete);
              Navigator.pop(context);
            },
            child: const Text('sim'))
      ],
    );
  }
}
