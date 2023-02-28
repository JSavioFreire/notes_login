import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:provider/provider.dart';

class ShowToDelete extends StatelessWidget {
  final NoteModel noteToDelete;

  const ShowToDelete({super.key, required this.noteToDelete});

  @override
  Widget build(BuildContext context) {
    DataBaseProvider provider = Provider.of<DataBaseProvider>(context);
    return AlertDialog(
      title: const Text('Quer mesmo excluir a anotação?'),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Não')),
        ElevatedButton(
            onPressed: () {
              provider.delete(noteToDelete);
              Navigator.pop(context);
            },
            child: const Text('sim'))
      ],
    );
  }
}
