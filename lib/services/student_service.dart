import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:simca_movil/ngrokroute.dart';

class StudentService extends ChangeNotifier {
  final _URL = ngrokUrl;

  List<Student> students = [];

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
      students.add(decodedResp);
    }
    print(students);
    //students.addAll(decodedResp)
    notifyListeners();
  }
}
