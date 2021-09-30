import 'dart:convert';

class Student {
  Student({
    required this.id,
    required this.email,
    required this.password,
    required this.person,
    required this.classes,
    required this.programId,
    required this.history,
  });

  String id;
  String email;
  String password;
  String person;
  List<String> classes;
  String programId;
  List<String> history;

  factory Student.fromJson(Map<String, dynamic> str) => Student.fromMap(str);

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        id: json["_id"],
        email: json["email"],
        password: json["password"],
        person: json["person"],
        classes: List<String>.from(json["classes"].map((x) => x)),
        programId: json["programId"],
        history: List<String>.from(json["history"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "email": email,
        "password": password,
        "person": person,
        "classes": List<dynamic>.from(classes.map((x) => x)),
        "programId": programId,
        "history": List<dynamic>.from(history.map((x) => x)),
      };
}
