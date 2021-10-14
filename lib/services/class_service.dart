import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/route.dart';
import 'package:simca_movil/services/services.dart';

class ClassService extends ChangeNotifier {
  final _URL = ngrokUrl;
  List<Classes> _classes = [];

  ClassService(String idStudent) {
    _getStudentClasses(idStudent);
  }

  List<Classes> get classes => _classes;

  _getStudentClasses(String idStudent) async {
    final url = '$_URL/class/$idStudent';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      for (int i = 0; i < data.length; i++) {
        final _class = Classes.fromJson(data[i]);
        _classes.add(_class);
      }
      notifyListeners();
    } else {
      throw Exception('Failed to load classes');
    }
  }
}
