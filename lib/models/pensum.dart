import 'dart:convert';

class Pensum {
  Pensum({
    required this.id,
    required this.name,
    required this.semesters,
  });

  String id;
  String name;
  List<String> semesters;

  factory Pensum.fromJson(String str) => Pensum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pensum.fromMap(Map<String, dynamic> json) => Pensum(
        id: json["_id"],
        name: json["name"],
        semesters: List<String>.from(json["semesters"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "semesters": List<dynamic>.from(semesters.map((x) => x)),
      };
}
