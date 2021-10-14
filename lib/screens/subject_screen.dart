import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/widgets.dart';


class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final student = Provider.of<StudentService>(context).getStudentAuth();

    return ChangeNotifierProvider(
      create: (_) => ClassService(student.id),
      child: Scaffold(
        body: Stack(
          children: const [
            BackgroundScreens(),
            HeaderScreen(title: 'Materias', icon: Icons.apps_outlined,),
            SubjectBody()
          ],
        ),
      ),
    );
  }
}