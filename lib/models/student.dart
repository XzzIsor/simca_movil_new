import 'dart:convert';

import 'package:simca_movil/models/program.dart';

class IStudent {
  IStudent({
    required this.identification,
    required this.identificationType,
    required this.expeditionCity,
    required this.name,
    required this.age,
    required this.email,
    required this.birthdate,
    required this.state,
    required this.studentId,
    required this.programs
  });

  int identification;
  String identificationType;
  String expeditionCity;
  String name;
  int age;
  String email;
  String birthdate;
  String state;
  int studentId;
  List<IProgram> programs;

  factory IStudent.fromJson(String str) => IStudent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IStudent.fromMap(Map<String, dynamic> json) => IStudent(
        identification: json["Identification"],
        identificationType: json["IdentificationType"],
        expeditionCity: json["ExpeditionCity"],
        name: json["name"],
        age: json["age"],
        email: json["email"],
        birthdate: json["birthdate"],
        state: json["state"],
        studentId: json["studentId"],
        programs : json["programs"]
      );

  Map<String, dynamic> toMap() => {
        "Identification": identification,
        "IdentificationType": identificationType,
        "ExpeditionCity": expeditionCity,
        "name": name,
        "age": age,
        "email": email,
        "birthdate": birthdate,
        "state": state,
        "studentId": studentId,
        "programs": programs
      };
}
