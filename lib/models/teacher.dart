import 'dart:convert';

class ITeacher{
    ITeacher({
        required this.id,
        required this.salary,
        required this.age,
        required this.email,
        required this.identification,
        required this.identificationType,
        required this.expeditionCity,
        required this.name,
    });

    int id;
    int salary;
    int age;
    String email;
    int identification;
    String identificationType;
    String expeditionCity;
    String name;


    factory ITeacher.fromJson(String str) => ITeacher.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ITeacher.fromMap(Map<String, dynamic> json) => ITeacher(
        id: json["ID"],
        salary: json["salary"],
        age: json["age"],
        email: json["email"],
        identification : json["identification"],
        identificationType: json["identificationType"],
        expeditionCity: json["expeditionCity"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "ID": id,
        "salary": salary,
        "age": age,
        "email": email,
        "identification":identification,
        "identificationType":identificationType,
        "expeditionCity":expeditionCity,
        "name":name
    };
}
