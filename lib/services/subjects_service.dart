import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/route.dart';
import 'package:http/http.dart' as http;

class SubjectsService extends ChangeNotifier {
  final _URL = ngrokUrl;

  List<Subject> _subjects = [];

  List<Subject> get subjects => _subjects;

  SubjectsService() {
    _getSubjects();
  }

  _getSubjects() async {
    final url = '$_URL/subject';
    final response = await http.get(Uri.parse(url));
     final List<dynamic> data = json.decode(response.body);

    for (var i = 0; i < data.length; i++) {
      final decodedResp = Subject.fromJson(data[i]);
      _subjects.add(decodedResp);
    }
    //students.addAll(decodedResp)
    notifyListeners();
  }
}
