import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/route.dart';
import 'package:http/http.dart' as http;

class PersonService extends ChangeNotifier {
  final _URL = ngrokUrl;

  String _person = '';
  String get person => _person;

  PersonService(String idPerson) {
    _getPerson(idPerson);
  }

  _getPerson(String idPerson) async {
    final url = '$_URL/person/$idPerson';
    final res = await http.get(Uri.parse(url));
    final decodedData = json.decode(res.body);
    final data = Person.fromJson(decodedData);
    _person = data.name;

    notifyListeners();
  }
}
