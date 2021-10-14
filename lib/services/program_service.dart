import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/route.dart';

class ProgramService extends ChangeNotifier {
  final _URL = ngrokUrl;

  ProgramService(String idStudent) {
    _getStudentPrograms(idStudent);
  }

  List<Program> _programs = [];
  List<Program> get programs => _programs;

  _getStudentPrograms(String idStudent) async {
    final url = '$_URL/program/$idStudent';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      for (int i = 0; i < data.length; i++) {
        final program = Program.fromJson(data[i]);
        _programs.add(program);
      }
      notifyListeners();
    } else {
      throw Exception('Failed to load classes');
    }
  }
}
