import 'package:flutter/material.dart';
import 'package:simca_movil/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simca',
      initialRoute: 'profile',
      debugShowCheckedModeBanner: false,
      routes: {
        'login' : (BuildContext context) => const LoginScreen(),
        'profile' : (BuildContext context) => const ProfileScreen(),
        'grades' : (BuildContext context) => const GradesScreen(),
        'pensum' : (BuildContext context) => const PensumScreen()
      },
    );
  }
}
