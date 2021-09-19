import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/info_screens/header_screens.dart';
import 'package:simca_movil/widgets/widgets.dart';

class GradesScreen extends StatelessWidget {
  const GradesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundScreens(),
          HeaderScreen(title: 'Notas', icon: Icons.grade_outlined,),
          FormBodyInfo(),
          BottomAverageGrades(average: '4.0',)
        ],
      )
    );
  }
}