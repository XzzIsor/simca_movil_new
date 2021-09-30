import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class EnrollmentScreen extends StatelessWidget {
  const EnrollmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundScreens(),
          HeaderScreen(title: 'Matrícula', icon: Icons.school),
          FormBodyInfoEnrollment()
        ],
      ),
    );
  }
}