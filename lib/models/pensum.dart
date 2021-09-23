import 'dart:convert';

import 'package:simca_movil/models/semester.dart';

class IPensum {
  IPensum({
    required this.id,
    required this.name,
    required this.semesters
  });

  int id;
  String name;
  List<ISemester> semesters;

  factory IPensum.fromJson(String str) => IPensum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IPensum.fromMap(Map<String, dynamic> json) => IPensum(
        id: json["ID"],
        name: json["name"],
        semesters : json["semesters"]
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "name": name,
        "semesters" : semesters
      };
}
