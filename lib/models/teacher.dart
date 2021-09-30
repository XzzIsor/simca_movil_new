
import 'dart:convert';

class Teacher {
    Teacher({
        required this.id,
        required this.person,
        required this.email,
        required this.salary,
        required this.active,
    });

    String id;
    String person;
    String email;
    int salary;
    bool active;

    factory Teacher.fromJson(String str) => Teacher.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Teacher.fromMap(Map<String, dynamic> json) => Teacher(
        id: json["id"],
        person: json["person"],
        email: json["email"],
        salary: json["salary"],
        active: json["active"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "person": person,
        "email": email,
        "salary": salary,
        "active": active,
    };
}