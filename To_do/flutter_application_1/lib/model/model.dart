

class ToDoModelClass {
  String title;
  String description;
  String date;

   ToDoModelClass({
     required this.title,
     required this.description,
     required this.date,    
  });

  factory ToDoModelClass.fromMap(Map<String, dynamic> map) {
    return ToDoModelClass(
      title: map['title'],
      description: map['description'],
      date: map['date'],
    );
  }

  String? get id => null;
}