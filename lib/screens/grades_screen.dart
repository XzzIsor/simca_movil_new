import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundScreens(),
          HeaderScreen(title: 'Notas', icon: Icons.grade_outlined,),
          FormBodyInfoGrades(),
          BottomAverageGrades(average: '4.0',)
        ],
      )
    );
  }
}