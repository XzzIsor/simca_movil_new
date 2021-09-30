import 'package:flutter/material.dart';
import 'package:simca_movil/services/student_service.dart';
import 'package:simca_movil/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    StudentService student = StudentService();
    return Scaffold(
      body: Stack(
        children: const [
          LoginBackground(),
          Center(child: LoginFormBody()),
        ],
      ),
    );
  }
}
