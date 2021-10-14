import 'dart:convert';

class Subject {
  Subject({
    required this.id,
    required this.name,
    this.description,
    required this.credits,
  });

  String id;
  String name;
  String? description;
  int credits;

  factory Subject.fromJson(Map<String, dynamic> str) => Subject.fromMap(str);
  factory Subject.fromJsonAlone(String str) => Subject.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Subject.fromMap(Map<String, dynamic> json) => Subject(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        credits: json["credits"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "description": description,
        "credits": credits,
      };
}
