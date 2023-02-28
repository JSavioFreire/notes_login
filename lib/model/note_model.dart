class NoteModel {
  String id;
  String title;
  String content;
  int color;
  String editTime;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.color,
    required this.editTime,
  });

  NoteModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        title = map["title"],
        content = map["content"],
        color = map["color"],
        editTime = map["editTime"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "content": content,
      "color": color,
      "editTime": editTime,
    };
  }
}
