import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:notes_login/model/note_model.dart';
import 'package:notes_login/provider/auth/auth_provider.dart';

class DataBaseProvider extends ChangeNotifier {
  BuildContext context;
  DataBaseProvider({required this.context});

  late AuthProvider authProvider =
      Provider.of<AuthProvider>(context, listen: false);

  FirebaseFirestore db = FirebaseFirestore.instance;

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();
  TextEditingController search = TextEditingController();

  int color = 0;

  dynamic idNote;

  List<NoteModel> allNotes = [];

  void createInDb() {
    NoteModel notes = NoteModel(
        id: const Uuid().v1(),
        title: 'Sem titulo',
        content: 'Sem conteudo',
        color: 0,
        editTime: DateTime.now().toString());
    idNote = notes.id;
    title.text = '';
    content.text = '';
    color = 0;
    db.collection(authProvider.users!.uid).doc(notes.id).set(notes.toMap());
  }

  void openingNote(NoteModel note) {
    title.text = note.title;
    content.text = note.content;
    color = note.color;
  }

  int thisColor = 0;

  void edit({NoteModel? note, dynamic color}) {
    if (color != null) {
      thisColor = color;
    }
    if (note != null) {
      pickColorFromDb(note);
      NoteModel notes = NoteModel(
          id: note.id,
          title: title.text,
          content: content.text,
          color: thisColor,
          editTime: DateTime.now().toString());
      db.collection(authProvider.users!.uid).doc(notes.id).set(notes.toMap());
    } else {
      NoteModel notes = NoteModel(
          id: idNote,
          title: title.text,
          content: content.text,
          color: thisColor,
          editTime: DateTime.now().toString());
      db.collection(authProvider.users!.uid).doc(notes.id).set(notes.toMap());
    }
  }

  void changeColor({NoteModel? note, required int index}) {
    if (note == null) {
      edit(color: index);
    } else {
      edit(note: note, color: index);
    }
    color = index;
  }

  void fromDb() async {
    List<NoteModel> temp = [];
    QuerySnapshot<Map<String, dynamic>> snapshot = await db
        .collection(authProvider.users!.uid)
        .orderBy('editTime', descending: true)
        .get();
    for (var doc in snapshot.docs) {
      temp.add(NoteModel.fromMap(doc.data()));
    }
    allNotes = temp;
    notifyListeners();
  }

  void pickColorFromDb(NoteModel note) async {
    DocumentSnapshot<Map<String, dynamic>> snapshotOne =
        await db.collection(authProvider.users!.uid).doc(note.id).get();
    thisColor = snapshotOne['color'];
  }

  void searchDb() async {
    List<NoteModel> temp = [];
    List<String> tempId = [];

    QuerySnapshot<Map<String, dynamic>> searchToTitleList = await db
        .collection(authProvider.users!.uid)
        .where('title', isGreaterThanOrEqualTo: search.text)
        .where('title', isLessThan: '${search.text}z')
        .get();

    QuerySnapshot<Map<String, dynamic>> searchToContentList = await db
        .collection(authProvider.users!.uid)
        .where('content', isGreaterThanOrEqualTo: search.text)
        .where('content', isLessThan: '${search.text}z')
        .get();

    for (var doc in searchToTitleList.docs) {
      NoteModel note = NoteModel.fromMap(doc.data());
      if (!tempId.contains(note.id)) {
        temp.add(note);
        tempId.add(note.id);
      }
    }
    for (var doc in searchToContentList.docs) {
      NoteModel note = NoteModel.fromMap(doc.data());
      if (!tempId.contains(note.id)) {
        temp.add(note);
        tempId.add(note.id);
      }
    }

    allNotes = temp;
    notifyListeners();
  }

  void delete(NoteModel note) {
    db.collection(authProvider.users!.uid).doc(note.id).delete();
    notifyListeners();
  }
}
