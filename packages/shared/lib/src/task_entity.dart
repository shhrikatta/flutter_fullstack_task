class Task {
  String? title;
  int? id;
  bool? isCompleted;

  Task({this.title, this.id, this.isCompleted});

  Task.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    isCompleted = json['is_completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['id'] = id;
    data['is_completed'] = isCompleted;
    return data;
  }

  Task copWith(
    int? id,
    String? title,
    bool? isCompleted,
  ) =>
      Task(
        id: id ?? this.id,
        title: title ?? this.title,
        isCompleted: isCompleted ?? this.isCompleted,
      );
}
