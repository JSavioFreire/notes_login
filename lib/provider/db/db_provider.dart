import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class DataBaseProvider extends ChangeNotifier {
  FirebaseFirestore db = FirebaseFirestore.instance;

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  dynamic idNote;
  void toDb(BuildContext context, {edit}) {
    AuthProvider authProvider =
        Provider.of<AuthProvider>(context, listen: false);

    NoteModel notes = NoteModel(
        id: const Uuid().v1(),
        title: title.text.isEmpty ? 'Sem titulo' : title.text,
        content: content.text.isEmpty ? 'Sem conteudo' : content.text);
    idNote = notes.id;

    db.collection(authProvider.users!.uid).doc(notes.id).set(notes.toMap());
  }
}
