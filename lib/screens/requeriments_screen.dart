import 'package:flutter/material.dart';
import 'package:simca_movil/widgets/widgets.dart';

class RequerimentsScreen extends StatelessWidget {
  const RequerimentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundScreens(),
          HeaderScreen(title: 'REQUISITOS', icon: Icons.ac_unit_outlined),
          RequerimentsBody()
        ],
      )
    );
  }
}