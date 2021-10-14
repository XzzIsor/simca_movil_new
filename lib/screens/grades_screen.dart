import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simca_movil/services/class_service.dart';
import 'package:simca_movil/services/services.dart';
import 'package:simca_movil/widgets/widgets.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {
    final student = Provider.of<StudentService>(context).getStudentAuth();

    final int avg = Random().nextInt(6);

    return ChangeNotifierProvider(
      create: (_) => ClassService(student.id),
      child: Scaffold(
        body: Stack(
          children: [
            const BackgroundScreens(),
            const HeaderScreen(title: 'Notas', icon: Icons.grade_outlined,),
            const FormBodyInfoGrades(),
            BottomAverageGrades(average: avg.toString(),)
          ],
        )
      ),
    );
  }
}