import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class AbsencesScreen extends StatelessWidget {
  const AbsencesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundScreens(),
          HeaderScreen(title: 'Faltas', icon: Icons.alarm_on_outlined),
          FormBodyInfoAbsences()
        ],
      ),
    );
  }
}