import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/models/models.dart';
import 'package:simca_movil/services/student_service.dart';
import 'package:simca_movil/widgets/widgets.dart';

import '../../state.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = '';
  String user = '';
  String password = '';

  List<Student> students = StudentService().students;

  bool keepSession = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            CustomTextField(
              label: 'E-mail',
              icon: Icons.email_outlined,
              hintText: 'usuario',
              onChange: (value) {
                setState(() {
                  email = value + '@unicauca.edu.co';
                  user = value;
                });
              },
              emailType: true,
              obscureText: false,
              counterText: email,
            ),
            const SizedBox(height: 15),
            CustomTextField(
                label: 'Contraseña',
                icon: Icons.lock,
                hintText: '******',
                onChange: (value) {
                  password = value;
                },
                emailType: false,
                obscureText: true),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Mantener Sesión Iniciada'),
                Checkbox(
                    value: keepSession,
                    onChanged: (value) {
                      setState(() {
                        keepSession = value!;
                      });
                    }),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                label: 'Ingresar',
                onPress: () {
                  students.forEach((element) {
                    if (element.user == user && element.password == password) {
                      final hol = StateCustom();
                      hol.setStudent(element);
                      Navigator.pushReplacementNamed(context, 'profile');
                      return;
                    } else {
                      () => {};
                    }
                  });
                })
          ],
        ),
      ),
    ));
  }
}
