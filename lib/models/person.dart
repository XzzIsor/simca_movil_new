
import 'dart:convert';

class Person {
    Person({
        required this.id,
        required this.name,
        required this.age,
        required this.identification,
        required this.identificationType,
        required this.expeditionCity,
    });
 
    String id;
    String name;
    int age;
    String identification;
    String identificationType;
    String expeditionCity;

    factory Person.fromJson(Map<String, dynamic> str) => Person.fromMap(str);

    String toJson() => json.encode(toMap());

    factory Person.fromMap(Map<String, dynamic> json) => Person(
        id: json["_id"],
        name: json["name"],
        age: json["age"],
        identification: json["identification"],
        identificationType: json["identificationType"],
        expeditionCity: json["expeditionCity"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "name": name,
        "age": age,
        "identification": identification,
        "identificationType": identificationType,
        "expeditionCity": expeditionCity,
    };
}