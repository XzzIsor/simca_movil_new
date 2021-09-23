import 'dart:convert';

import 'package:simca_movil/models/pensum.dart';

class IProgram {
  IProgram({
    required this.id,
    required this.name,
    required this.duration,
    required this.description,
    required this.pensum
  });

  int id;
  String name;
  String duration;
  String description;
  IPensum pensum;

  factory IProgram.fromJson(String str) => IProgram.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IProgram.fromMap(Map<String, dynamic> json) => IProgram(
        id: json["ID"],
        name: json["name"],
        duration: json["duration"],
        description: json["description"],
        pensum: json["pensum"]
      );

  Map<String, dynamic> toMap() => {
        "ID": id,
        "name": name,
        "duration": duration,
        "description": description,
        "pensum" : pensum
      };
}
