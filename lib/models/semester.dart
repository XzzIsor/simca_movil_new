import 'dart:convert';

class Semester {
  Semester({
    required this.id,
    required this.name,
    required this.subjects,
  });

  String id;
  String name;
  List<String> subjects;

  factory Semester.fromJson(String str) => Semester.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Semester.fromMap(Map<String, dynamic> json) => Semester(
        id: json["_id"],
        name: json["name"],
        subjects: List<String>.from(json["subjects"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "subjects": List<dynamic>.from(subjects.map((x) => x)),
      };
}
