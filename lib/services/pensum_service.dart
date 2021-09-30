import 'package:flutter/cupertino.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/ngrokroute.dart';
import 'package:http/http.dart' as http;

class PensumService extends ChangeNotifier {
  final _URL = ngrokUrl;

  Pensum pensum = Pensum(id: '', name: '', semesters: []);

  PensumService() {
    _getPensum('6154d1e27d0a52e7674b1180');
  }

  _getPensum(String idPensum) async {
    final url = '$_URL/pensum/$idPensum';
    final res = await http.get(Uri.parse(url));
    final data = Pensum.fromJson(res.body);
    pensum = data;
    print(pensum.name);

    notifyListeners();
  }
}
