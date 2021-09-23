import 'dart:convert';

import 'package:simca_movil/models/Subject.dart';

class ISemester {
  ISemester({
    required this.id,
    required this.name,
    required this.subjects,
    required this.startdate,
    required this.enddate,
  });

  int id;
  String name;
  List<ISubject> subjects;
  DateTime startdate;
  DateTime enddate;

  factory ISemester.fromJson(String str) => ISemester.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ISemester.fromMap(Map<String, dynamic> json) => ISemester(
        id: json["ID"],
        name: json["name"],
        startdate: json["startdate"],
        enddate: json["enddate"],
        subjects: json["subjects"]
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "name": name,
        "startdate": startdate,
        "enddate": enddate,
        "subjects" : subjects
  };
}
