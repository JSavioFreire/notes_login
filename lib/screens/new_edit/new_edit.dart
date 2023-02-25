import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class NewEdit extends StatelessWidget {
  const NewEdit({super.key});

  @override
  Widget build(BuildContext context) {
    NoteModel? notes;
    DataBaseProvider db = Provider.of<DataBaseProvider>(context);
  
    return Scaffold(
      backgroundColor: ThemeColors.color2Light,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 40, 12, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: db.title,
                onChanged: (value) => db.toDb(context, edit: notes!.id),
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Titulo',
                ),
              ),
              TextField(
                controller: db.content,
                onChanged: (value) => null,
                maxLines: null,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Anotação',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
