import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/semester.dart';
import 'package:simca_movil/ngrokroute.dart';
import 'package:http/http.dart' as http;

class SemesterService extends ChangeNotifier {
  final _URL = ngrokUrl;
  final List<Semester> semesters = [];

  SemesterService() {
    _getSemesters();
  }

  _getSemesters() async {
    final url = '$_URL/se';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      for (int i = 0; i < data.length; i++) {
        final semester = Semester.fromJson(data[i]);
        semesters.add(semester);
      }
      notifyListeners();
      print(semesters);
    } else {
      throw Exception('Failed to load semesters');
    }
  }
}
