import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/db/db_provider.dart';
import 'package:notes_login/theme/theme_colors.dart';
import 'package:provider/provider.dart';

class EachNote extends StatelessWidget {
  final NoteModel note;
  const EachNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/new', arguments: {'note': note});
        (context.read<DataBaseProvider>().openingNote(note));
      },
      child: Ink(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: ThemeColors.color2Light,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            note.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            note.content,
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
          )
        ]),
      ),
    );
  }
}
