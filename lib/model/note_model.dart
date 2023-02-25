class NoteModel {
  String id;
  String title;
  String content;

  NoteModel({required this.id, required this.title, required this.content});

  NoteModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        title = map["title"],
        content = map["content"];

  Map<String, dynamic> toMap() {
    return {"id": id, "title": title, "content": content};
  }
}
