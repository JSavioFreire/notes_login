import 'package:flutter/material.dart';
import 'package:notes_login/screens/new_edit/widget/header_new_edit.dart';
import 'package:provider/provider.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';

class NewEdit extends StatelessWidget {
  const NewEdit({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    DataBaseProvider db = Provider.of<DataBaseProvider>(context);
    return Scaffold(
      backgroundColor: ThemeColors.color2Light,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderNewEdit(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    TextField(
                      controller: db.title,
                      onChanged: (value) {
                        if (arguments['note'] == null) {
                          db.edit();
                        } else {
                          db.edit(note: arguments['note']);
                        }
                      },
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Titulo',
                      ),
                    ),
                    TextField(
                      controller: db.content,
                      onChanged: (value) {
                        if (arguments['note'] == null) {
                          db.edit();
                        } else {
                          db.edit(note: arguments['note']);
                        }
                      },
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Anotação',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}