import 'dart:convert';

class IClass {
    IClass({
        required this.classId,
        required this.name,
        required this.date,
        required this.description,
        required this.group,
    });

    int classId;
    String name;
    DateTime date;
    String description;
    String group;
    //TODO: Teacher

    factory IClass.fromJson(String str) => IClass.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory IClass.fromMap(Map<String, dynamic> json) => IClass(
        classId: json["ClassID"],
        name: json["name"],
        date: json["date"],
        description: json["description"],
        group: json["group"],
    );

    Map<String, dynamic> toMap() => {
        "ClassID": classId,
        "name": name,
        "date": date,
        "description": description,
        "group": group,
    };
}