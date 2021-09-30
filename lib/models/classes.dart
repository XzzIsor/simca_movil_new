import 'dart:convert';

class Classes {
  Classes({
    required this.id,
    required this.name,
    required this.date,
    required this.subject,
    required this.teacher,
  });

  String id;
  String name;
  String date;
  String subject;
  String teacher;

  factory Classes.fromJson(Map<String, dynamic> str) => Classes.fromMap(str);

  String toJson() => json.encode(toMap());

  factory Classes.fromMap(Map<String, dynamic> json) => Classes(
        id: json["_id"],
        name: json["name"],
        date: json["date"],
        subject: json["Subject"],
        teacher: json["teacher"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "date": date,
        "Subject": subject,
        "teacher": teacher,
      };
}
