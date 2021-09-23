

import 'dart:convert';

class ISubject {
    ISubject({
        required this.id,
        required this.name,
        required this.credits,
        required this.description,
    });

    int id;
    String name;
    int credits;
    String description;

    factory ISubject.fromJson(String str) => ISubject.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ISubject.fromMap(Map<String, dynamic> json) => ISubject(
        id: json["ID"],
        name: json["name"],
        credits: json["credits"],
        description: json["Description"],
    );

    Map<String, dynamic> toMap() => {
        "ID": id,
        "name": name,
        "credits": credits,
        "Description": description,
    };
}
