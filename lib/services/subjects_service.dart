import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/ngrokroute.dart';
import 'package:http/http.dart' as http;

class SubjectsService extends ChangeNotifier {
  final _URL = ngrokUrl;

  List<Subject> subjects = [];

  SubjectsService() {
    _getSubjects();
  }

  _getSubjects() async {
    final idSubject = '';
    final url = '$_URL/subject/$idSubject';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      notifyListeners();
    } else {
      throw Exception('Failed to load classes');
    }
  }
}
