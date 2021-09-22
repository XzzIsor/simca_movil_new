import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';


class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundScreens(),
          HeaderScreen(title: 'Materias', icon: Icons.apps_outlined,),
          SubjectBody()
        ],
      ),
    );
  }
}