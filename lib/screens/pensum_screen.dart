import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class PensumScreen extends StatelessWidget {
  const PensumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundScreens(),
          HeaderScreen(title: 'Pénsum', icon: Icons.grading,),
          FormBodyInfo(),
          BottomAverageGrades(average: '4.0',)
        ],
      ),
    );
  }
}