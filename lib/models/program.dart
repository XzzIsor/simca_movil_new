import 'dart:convert';

class Program {
  Program({
    required this.id,
    required this.name,
    required this.description,
    required this.duration,
    required this.pensumId,
  });

  String id;
  String name;
  String description;
  String duration;
  String pensumId;

  factory Program.fromJson(Map<String, dynamic> str) => Program.fromMap(str);

  String toJson() => json.encode(toMap());

  factory Program.fromMap(Map<String, dynamic> json) => Program(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        duration: json["duration"],
        pensumId: json["pensumId"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "description": description,
        "duration": duration,
        "pensumId": pensumId,
      };
}
