import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/screens/screens.dart';
import 'package:simca_movil/services/pensum_service.dart';
import 'package:simca_movil/services/services.dart';

void main() => runApp(
  MultiProvider(providers: [
        ChangeNotifierProvider(create: (_) => StudentService()),
        ChangeNotifierProvider(create: (_) => SubjectsService())
  ],
      child: MyApp(),
  )
  
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simca',
        initialRoute: 'login',
        debugShowCheckedModeBanner: false,
        routes: {
          'login': (BuildContext context) => const LoginScreen(),
          'profile': (BuildContext context) => const ProfileScreen(),
          'grades': (BuildContext context) => const GradesScreen(),
          'pensum': (BuildContext context) => const PensumScreen(),
          'subject': (BuildContext context) => const SubjectsScreen(),
          'requirements': (BuildContext context) => const RequerimentsScreen(),
          'absences': (BuildContext context) => const AbsencesScreen(),
          'history': (BuildContext context) => const HistoryScreen(),
          'enroll': (BuildContext context) => const EnrollmentScreen()
        },
    );
  }
}
