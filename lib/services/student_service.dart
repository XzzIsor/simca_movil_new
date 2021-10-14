import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:simca_movil/route.dart';

class StudentService extends ChangeNotifier {
  final _URL = ngrokUrl;

  final List<Student> _students = [];
  String _idStudent = '';

  List<Student> get students => _students;

  set idStudent(String idStudent) => _idStudent = idStudent;
  String get idStudent => _idStudent;

  StudentService() {
    _getStudents();
  }

  _getStudents() async {
    final url = '$_URL/student/';
    final resp = await http.get(Uri.parse(url));
    //print(resp.body);

    final List<dynamic> data = json.decode(resp.body);

    for (var i = 0; i < data.length; i++) {
      final decodedResp = Student.fromJson(data[i]);
      _students.add(decodedResp);
    }
    //students.addAll(decodedResp)
    notifyListeners();
  }

  Student getStudentAuth() {
    for (var element in students) {
      if (element.id == _idStudent) {
        return element;
      }
    }
    throw Exception('No existe el estudiante');
  }
}
