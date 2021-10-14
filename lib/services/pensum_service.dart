import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/route.dart';
import 'package:http/http.dart' as http;

class PensumService extends ChangeNotifier {
  final _URL = ngrokUrl;

  Pensum _pensum = Pensum(id: '', name: '', semesters: []);

  List<Semester> _semesters = [];

  Pensum get pensum => _pensum;
  List<Semester> get semesters => _semesters;

  PensumService(String idPensum) {
    _getPensum(idPensum);
  }

  _getPensum(String idPensum) async {
    final url = '$_URL/pensum/$idPensum';
    final response = await http.get(Uri.parse(url));
    
      final decodedRes = Pensum.fromJson(response.body);
      _pensum = decodedRes;
      notifyListeners();

  }

  Future<List<String>> getSemesters() async {
    for (var element in _pensum.semesters) {
      final url = '$_URL/semester/$element';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodedRes = Semester.fromJson(response.body);
        _semesters.add(decodedRes);
        notifyListeners();
      } else {
        throw Exception('Failed to load no');
      }
    }
    List<String> names = [];

    for (var element in _semesters) {
      names.add(element.name);
    }

    return names;
  }

  Future<List<Subject>> getSubjects(int i) async {
    List<Subject> subjects = [];

    for (var element in _semesters[i].subjects) {
      final url = '$_URL/subject/$element';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodedRes = Subject.fromJsonAlone(response.body);
        subjects.add(decodedRes);
        notifyListeners();
      } else {
        throw Exception('Failed to load subjects');
      }
    }

    return subjects;
  }
}
