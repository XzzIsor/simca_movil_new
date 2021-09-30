import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/ngrokroute.dart';

class ProgramService extends ChangeNotifier {
  final _URL = ngrokUrl;
  List<Program> programs = [];

  ProgramService() {
    _getStudentPrograms('6154da1711fc9e436ddc1fc3');
  }

  _getStudentPrograms(String idStudent) async {
    final url = '$_URL/program/$idStudent';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      for (int i = 0; i < data.length; i++) {
        final program = Program.fromJson(data[i]);
        programs.add(program);
      }
      notifyListeners();
    } else {
      throw Exception('Failed to load classes');
    }
  }
}
